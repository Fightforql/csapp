#include"csapp.h"
#define  MAX_CACHE_SIZE 104900
#define  MAX_OBJECT_SIZE 102400
typedef struct
{
        char buf[MAX_OBJECT_SIZE];
        char url[MAXLINE];
        int size;
        int time;
        int valid;
}cacheline;
void init_cache();
int getcacheindex(char *url);
int LRU();
void writetocache(char *buf,char *url,size_t size);
int cachehit(int fd,char *url);