#include"csapp.h"
#include"cache.h"
#include <stdbool.h>
#define cachenum 10
#define INF 1e10
static sem_t mutex,writer;
static cacheline s[cachenum];
static int readcnt,curtime;
/*初始化cache*/
void init_cache()
{
        curtime=0;
        readcnt=0;
        sem_init(&mutex,0,1);
        sem_init(&writer,0,1);
        for(int i=0;i<cachenum;i++)
        {
                s[i].valid=0;
                s[i].time=0;
                s[i].size=0;
        }
}
/*返回cahce命中时的index 不命中就是-1*/
int getcacheindex(char *url)
{
        int res=-1;
        for(int i=0;i<cachenum;i++)
        {
                if(s[i].valid==1&&!strcmp(s[i].url,url))
                {
                        res=i;
                        P(&mutex);
                        s[i].time=curtime++;
                        V(&mutex);
                        break;
                }
        }
        return res;
}
/*LRU策略 找到time最小的line 即为被替换的line*/
int LRU()
{
        int index=0;
        int oldtime=curtime;
        for(int i=0;i<cachenum;i++)
        {
                if(s[i].time<oldtime)
                {
                        oldtime=s[i].time;
                        index=i;
                }
        }
        return index;
}
/*写入cache 首先应该先给writer加锁 因为只能有一个写者*/
void writetocache(char *buf,char *url,size_t size)
{
        P(&writer);
        int index=-1;
        bool flag=false;
        for(int i=0;i<cachenum;i++)
        {
                if(s[i].valid==0)
                {
                        index=i;
                        flag=true;
                        break;
                }
        }
        if(!flag)
        {
                index=LRU();
        }
        /*
        printf("index是：%d\n",index);
        printf("buf %s\n",buf);
        */
        memcpy(s[index].buf,buf,size);
        strcpy(s[index].url,url);
        s[index].valid=1;
        s[index].size=size;
        P(&mutex);
        s[index].time=curtime++;
        V(&mutex);
        V(&writer);
}
/*cahce命中后在这里向客户端发送 这里用一个读者优先的模型*/
int cachehit(int fd,char *url)
{
        P(&mutex);
        readcnt++;
        if(readcnt == 1) 
            P(&writer);
        V(&mutex);
        int res=getcacheindex(url);
        if(res!=-1)
        {
                rio_writen(fd,s[res].buf,s[res].size);
        }
        P(&mutex);
        readcnt--;
        if(readcnt == 0)
            V(&writer);
        V(&mutex);
        if(res!=-1)
        {
                //printf("cached\n");
                return 1;
        }
        return 0;
}
