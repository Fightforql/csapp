
#include "cachelab.h"
#include <getopt.h>
#include <stdlib.h>
#include <unistd.h>
#include<stdio.h>
#include<math.h>
#include<string.h>

int s = -1;   // 缓存的 set index 位数
int E = -1;   // 每组缓存行的数量
int b = -1;   // 块偏移位数
int S=0,B=0;
int flag=0;
int count=0;
unsigned long long address;
char **array;
char **array_flag;
long long hit_count=0, miss_count=0, eviction_count=0;
char str[65];
int **order;
int *blank;
void allocate_space()//array是S*E行 每行B个字节的数组  array_flag是S*E行 每行64-s-b 个char的数组 对应
{   
    array_flag = (char **)malloc(S * E * sizeof(char *));
    for (int i = 0; i < S * E; i++)
        array_flag[i] = (char *)malloc(flag * sizeof(char));

    blank = (int *)malloc(S * E * sizeof(int));
    for (int i = 0; i < S * E; i++) {
        blank[i]=1; // order[i]表示第i行被访问的次序
    }
   // 为 S 行分配指针数组
        order = (int **)malloc(S * sizeof(int *)); 
        for (int i = 0; i < S; i++) {
                order[i] = (int *)malloc(E * sizeof(int)); 
        }

        for (int i = 0; i < S; i++) {
                for (int j = 0; j < E; j++) {
                        order[i][j] = 0;
                }
        }

}
int check(int size_,int s_num,int b_num,char *s_flag)//没有被缓存且组里还有空行 返回第一个空行 //没有被缓存且没空行 -1 缓存返回-2
{
        int row=s_num*E;
        for(int i=0;i<E;i++)
        {
                char* row_=array_flag[row+i];
                if (blank[row+i]==1) {
                        //cout<<"空行"<<endl;
                        return i;  // 如果是空行，返回当前行的索引
                }
                if (strcmp(row_, s_flag) == 0) {
                       //cout<<"已缓存"<<endl;
                       return i;  // 如果当前行已存储匹配的标志，返回当前行的索引
                }
        }
       //cout<<"没有空行,需要替换"<<endl;
       return -1;
}
int LRU(int s_num,int b_num,const char *s_flag)
{
        int res=-1;
        long long int min_order=30000000;
        for(int i=0;i<E;i++)
        {
                if(order[s_num][i]<min_order)
                {
                        res=i;
                        min_order=order[s_num][i];
                }
        }
        return res;
}
void change_order(int ss,int rr) //返回一个组内最大的访问次序 并往上加1
{
        int c=order[ss][0];
        for(int i=1;i<E;i++)
        {
                if(order[ss][i]>c)
                {
                        c=order[ss][i];
                }
        }
        order[ss][rr]=c+1;
}
void swap(int s_num,int b_num,const char *s_flag)
{
        int n=LRU(s_num,b_num,s_flag);
        strcpy(array_flag[s_num * E + n], s_flag);
        change_order(s_num,n);
        return;
}

void data_access(int size_,int s_num,int b_num,char *s_flag)
{
        int r=check(size_,s_num,b_num,s_flag);
        if(r!=-1)
        {
                if(strcmp(array_flag[s_num * E + r], s_flag)== 0)
                {
                        hit_count++;
                }
                else
                {
                        miss_count++;
                        strcpy(array_flag[s_num * E + r], s_flag);
                        blank[s_num*E+r]=0;
                }
                change_order(s_num,r);
        }
        else
        {
                eviction_count++;
                miss_count++;
                swap(s_num,b_num,s_flag);
        }
        return;
}
void data_write(int size_,int s_num,int b_num,char *s_flag)
{
        data_access(size_,s_num,b_num,s_flag);//data_access 和data_store一样 
        data_access(size_,s_num,b_num,s_flag);
        return;
}
void hex_to_binary(char hex_char, char *binary_str) {//转为二进制字符串
    switch (hex_char) {
        case '0': strcat(binary_str, "0000"); break;
        case '1': strcat(binary_str, "0001"); break;
        case '2': strcat(binary_str, "0010"); break;
        case '3': strcat(binary_str, "0011"); break;
        case '4': strcat(binary_str, "0100"); break;
        case '5': strcat(binary_str, "0101"); break;
        case '6': strcat(binary_str, "0110"); break;
        case '7': strcat(binary_str, "0111"); break;
        case '8': strcat(binary_str, "1000"); break;
        case '9': strcat(binary_str, "1001"); break;
        case 'a': strcat(binary_str, "1010"); break;
        case 'b': strcat(binary_str, "1011"); break;
        case 'c': strcat(binary_str, "1100"); break;
        case 'd': strcat(binary_str, "1101"); break;
        case 'e': strcat(binary_str, "1110"); break;
        case 'f': strcat(binary_str, "1111"); break;
    }
}
void read_file_and_count(const char *name)
{
    FILE *file;
    file = fopen(name, "r");
    
    if (file == NULL) {
        perror("Error opening file");
        return;
    }

    char line[30];
    while (fgets(line, sizeof(line), file) != NULL) {
        if(line[0]=='I')
            continue;
        address=0;
        line[strcspn(line, "\n")] = '\0';//替换末尾的换行符 不然会出错
        str[0]='\0';
        int i=2;
        char s_[66]="\0";
        char target_s[65]="\0";
        while(line[i]!=',')
        {
                i++;
        }
        int size=line[i+1]-'0';
        //求s_num b_num s_flag(标记位字符串) size(要存储的大小)
        for(int j=3;j<i;j++)
        {
                hex_to_binary(line[j],str);
                if(line[j]-'0'>=0&&line[j]-'0'<=9)
                     address+=pow(16,i-j-1)*(line[j]-'0');
                else
                     address+=pow(16,i-1-j)*(line[j]-'a'+10);
        }
        long long int s_num=((((0xffffffffffffffff<<b)&(~(0xffffffffffffffff<<(b+s)))))&address)>>b;//得到第几组
        long long int b_num=(~(0xffffffffffffffff<<b))&address;//块偏移
        
        int k=1;
        while(k<=(16-(i-3)))
        {
                strcat(s_,"0000");
                k++;
        }
        strcat(s_,str);
        strncpy(target_s,s_,64-s-b);
        switch (line[1])
        {
                case 'L':
                        data_access(size,s_num,b_num,target_s);
                        break;
                case 'S':
                        data_access(size,s_num,b_num,target_s);
                        break;
                case 'M':
                        data_write(size,s_num,b_num,target_s);
                        break;
                default:
                        break;
        }
    }
    fclose(file);
}
int main(int argc, char *argv[])
{
        char *tracefile = NULL;
        int opt;
        while ((opt = getopt(argc, argv, "s:E:b:t:")) != -1) {
                switch (opt) {
                case 's':
                        s = atoi(optarg);  
                        break;
                case 'E':
                        E = atoi(optarg);  
                        break;
                case 'b':
                        b = atoi(optarg); 
                        break;
                case 't':
                        tracefile = optarg; // 保存trace文件名
                        break;
                }
        }
        //printf("s: %d, E: %d, b: %d, tracefile: %s\n", s, E, b, tracefile);
        S=pow(2,s);B=pow(2,b);
        flag=64-s-b;
        allocate_space(E);
        read_file_and_count(tracefile);
        printSummary(hit_count, miss_count, eviction_count);
        return 0;
}