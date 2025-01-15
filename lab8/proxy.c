
#include <stdio.h>
#include "csapp.h"
#include "cache.h"
/* Recommended max cache and object sizes */
#define MAX_CACHE_SIZE 1049000
#define MAX_OBJECT_SIZE 102400

/* You won't lose style points for including this long line in your code */
static const char *user_agent_hdr = "User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:10.0.3) Gecko/20120305 Firefox/10.0.3\r\n";
int parse_line(char *buf,char *method,char *uri,char *version,char *host,char *port,char *path,char *b);
void parse_header(rio_t *crio,char *header,char *host,char *path);
void *thread(void *arg);
void response(int fd,rio_t *srio,char *header,char *host,char *port,char *buf,char *url);
void doit(int connfd);
/*主函数，和课本一样*/
int main(int argc,char *argv[])
{
    signal(SIGPIPE,SIG_IGN);
    init_cache();
    if(argc!=2)
    {
        fprintf(stderr,"error\n");
        exit(1);
    }
    //fprintf("server on port %s is running\n",argv[1]);
    int listenfd=open_listenfd(argv[1]);
    struct sockaddr_storage clientaddr;
    socklen_t clientlen;
    char hostname[MAXLINE],port[MAXLINE];
    pthread_t tid;
    int *connfd;
    while(1)
    {
        clientlen=sizeof(clientaddr);
        connfd = Malloc(sizeof (int));
        *connfd=accept(listenfd,(SA *)&clientaddr,&clientlen);
        Getnameinfo((SA *)&clientaddr,clientlen,hostname,MAXLINE,port,MAXLINE,0);
        //printf("Accepted connection from (%s %s)\n",hostname,port);
        Pthread_create(&tid,NULL,thread,connfd);
        close(connfd);
    }
    close(listenfd);
}

void response(int connfd,rio_t *srio,char *header,char *host,char *port,char *buf,char *url)
{
        char buff[MAX_OBJECT_SIZE];
        int serverfd = open_clientfd(host,port);
        if (serverfd < 0)
        {
                fprintf(stderr,"connection failed\n");
                return;
        }
        Rio_readinitb(srio, serverfd);
        Rio_writen(serverfd, header, strlen(header));
        size_t n;
        size_t linesize=0;
        while ((n = Rio_readnb(srio, buf, MAXLINE)) != 0)
        {
                if (n < 0) {
                        fprintf(stderr, "Read server response error\n");
                        close(serverfd);
                        return;
                }
                if(linesize+n<MAX_OBJECT_SIZE)
                    memcpy(buff+linesize,buf,n);
                linesize+=n;
                //rio_writen(connfd, buf, n);
                if (rio_writen(connfd, buf, n) != n) {
                    fprintf(stderr, "Send response to client error\n");
                    close(serverfd);
                     return;
                }
        }
        if(linesize<MAX_OBJECT_SIZE)
            writetocache(buff,url,linesize);
        Close(serverfd);
}
void doit(int connfd)
{
       char buf[MAXLINE],method[MAXLINE],uri[MAXLINE],version[MAXLINE];
       char host[MAXLINE],port[MAXLINE],path[MAXLINE];
       rio_t rio, server_rio;
       rio_readinitb(&rio, connfd);
       rio_readlineb(&rio, buf, MAXLINE);
       char b[MAXLINE];
       int m=parse_line(buf,method,uri,version,host,port,path,b);
       if(m==-1)
          return;
        if(cachehit(connfd,b))
                return;
       char header[MAXLINE];
       parse_header(&rio,header,host,path);
       response(connfd,&server_rio,header,host,port,buf,b);
}
void *thread(void *arg)
{
        int client_fd = *((int*)arg);
        pthread_detach(pthread_self());
        free(arg);
        doit(client_fd);
        close(client_fd);
        return NULL;
}


/*
解析请求行 将解析结果存储在method uri version host port path之中
*/
int parse_line(char *buf,char *method,char *uri,char *version,char *host,char *port,char *path,char *b)
{
        int num=sscanf(buf,"%s %s %s",method,uri,version);
        /*处理非法url*/
        strcpy(b,uri);
        if(num!=3)
        {
                fprintf(stderr,"URL格式错误!\n");
                return -1;
        }
        //将HTTP/1.1替换为1.0
        strcpy(version,"HTTP/1.0");
        if(strcasecmp(method,"GET")!=0)
        {
                fprintf(stderr,"不支持非GET的method\n");
                return -1;
        }
        //不是http请求
        if(strstr(uri,"http://")==NULL)
        {
                return -1;
        }
        char *hostp=strstr(uri,"http://")+7;
        char *portp=strstr(hostp,":");
        char *pathp=strstr(hostp,"/");
        //获取端口号
        *pathp='\0';
        if(portp==NULL)
        {
               // return -1;
                strcpy(port,"80");
                //获取主机名
                strcpy(host,hostp);
        }
        else
        {
                strcpy(port,portp+1);
                *portp='\0';
                //获取主机名
                strcpy(host,hostp);
                *portp=':';
        }
        //获取路径
        *pathp='/';
        strcpy(path,pathp);
        return 0;
}
/*解析请求头*/
void parse_header(rio_t *crio,char *header,char *host,char *path)
{
        char buf[MAXLINE];
        int flag=0;
        sprintf(header, "GET %s HTTP/1.0\r\n", path);
        while(1)
        {
                rio_readlineb(crio,buf,MAXLINE);
                if(strcmp(buf,"\r\n")==0)
                    break;
                if(strstr(buf,"Host:")!=NULL)
                        flag=1;
                if(strstr(buf,"Connection:")!=NULL)
                   continue;
                if(strstr(buf,"Proxy-Connection:")!=NULL)
                   continue;
                if(strstr(buf,"User-Agent:")!=NULL)
                   continue;
                strcat(header,buf);
        }
        if(!flag)
        {
                sprintf(buf, "Host: %s\r\n", host);
                strcat(header, buf);
        }
        strcat(header,"Connection: close\r\n");
        strcat(header,"Proxy-Connection: close\r\n");
        strcat(header,"User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:10.0.3)Gecko/20120305 Firefox/10.0.3\r\n");
        strcat(header,"\r\n");
        return;
}
