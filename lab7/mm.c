
/* 
 * Simple, 32-bit and 64-bit clean allocator based on implicit free
 * lists, first-fit placement, and boundary tag coalescing, as described
 * in the CS:APP3e text. Blocks must be aligned to doubleword (8 byte) 
 * boundaries. Minimum block size is 16 bytes. 
 */
/*
采用分离的空闲链表，按照2的次幂设置大小类，增加delete函数 用于从空闲链表中删除分配快
insert函数用于将空闲块插入到链表中 binnum获得size对应的大小类的index
find_fit函数采用first_fit,维护的链表是后进先出的链表 即每次插入都插入到表头
由于是64位机器 但堆空间不超过2^32 所以可以在前驱和后继位置存偏移量 而不是地址
*/
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "mm.h"
#include "memlib.h"

/* do not change the following! */
#ifdef DRIVER
/* create aliases for driver tests */
#define malloc mm_malloc
#define free mm_free
#define realloc mm_realloc
#define calloc mm_calloc
#endif /* def DRIVER */

/*
 * If NEXT_FIT defined use next fit search, else use first-fit search 
 */
#define NEXT_FITx

/* Basic constants and macros */
#define BINNUM 10
#define WSIZE       4       /* Word and header/footer size (bytes) */ 
#define DSIZE       8       /* Double word size (bytes) */
#define CHUNKSIZE  (1<<12)  /* Extend heap by this amount (bytes) */  

#define MAX(x, y) ((x) > (y)? (x) : (y))  

/* Pack a size and allocated bit into a word */
#define PACK(size, alloc)  ((size) | (alloc)) 

/* Read and write a word at address p */
#define GET(p)       (*(unsigned int *)(p))            
#define PUT(p, val)  (*(unsigned int *)(p) = (val))    

/* Read the size and allocated fields from address p */
#define GET_SIZE(p)  (GET(p) & ~0x7)                   
#define GET_ALLOC(p) (GET(p) & 0x1)                    

/* Given block ptr bp, compute address of its header and footer */
#define HDRP(bp)       ((char *)(bp) - WSIZE)                      
#define FTRP(bp)       ((char *)(bp) + GET_SIZE(HDRP(bp)) - DSIZE) 

/*Given block ptr bp,comptu address of the  adress of  its pred and succ blocks ptr*/
#define PREDRP(bp)      (char *)bp
#define SUCCRP(bp)      (char *)bp+WSIZE


/*Given block ptr bp,comptu address of its pred and succ blocks*/
#define PRED_BLKP(bp)     (*(unsigned int *)(bp)) 
#define SUCC_BLKP(bp)     (*((unsigned int *)(bp)+1))

/* Given block ptr bp, compute address of next and previous blocks */
#define NEXT_BLKP(bp)  ((char *)(bp) + GET_SIZE(((char *)(bp) - WSIZE))) 
#define PREV_BLKP(bp)  ((char *)(bp) - GET_SIZE(((char *)(bp) - DSIZE))) 

/* Global variables */
static char *heap_listp = 0;  /* Pointer to first block */  
#ifdef NEXT_FIT
static char *rover;           /* Next fit rover */
#endif

/* Function prototypes for internal helper routines */
static void *extend_heap(size_t words);
static void place(void *bp, size_t asize);
static void *find_fit(size_t asize);
static void *coalesce(void *bp);
static int count=0;
/* 
 * mm_init - Initialize the memory manager 
 */
 /*初始化分配10个表头所在块 以及序言块 heap_listp等于0x800000000 方便之后加上偏移量 直接得到地址*/
int mm_init(void) 
{ 
    /* Create the initial empty heap */
    if ((heap_listp = mem_sbrk((4+BINNUM)*WSIZE)) == (void *)-1) 
        return -1;
    PUT(heap_listp, 0); 
    for(int i=1;i<=BINNUM;i++)
        PUT(heap_listp+(i*WSIZE),NULL);                   /* Alignment padding */
    PUT(heap_listp + ((BINNUM+1)*WSIZE), PACK(DSIZE, 1)); /* Prologue header */ 
    PUT(heap_listp + ((BINNUM+2)*WSIZE), PACK(DSIZE, 1)); /* Prologue footer */ 
    PUT(heap_listp + ((BINNUM+3)*WSIZE), PACK(0, 1));     /* Epilogue header */                  

#ifdef NEXT_FIT
    rover = heap_listp;
#endif

    /* Extend the empty heap with a free block of CHUNKSIZE bytes */
    void *init_bp=extend_heap(CHUNKSIZE/WSIZE);

    if (init_bp == NULL) 
        return -1;
    //insert(init_bp,CHUNKSIZE);
    return 0;
}
/*
永远插入到头部，分割后剩余块也插入到头部 
插入时分表为空和表不为空的两种情况
*/
void insert(void *bp,size_t asize)
{
    PUT(HDRP(bp),PACK(asize,0));
    PUT(FTRP(bp),PACK(asize,0));
    int n=binnum(asize);
    void *listhead=heap_listp+n*WSIZE;
    if(GET(listhead)==NULL)
    {
        PUT(listhead,(char *)bp-heap_listp);
    }
    else
    {
        PUT(SUCCRP(bp),GET(listhead));   //只放偏移量即可   
        unsigned int f=GET(listhead);
        PUT(PREDRP(heap_listp+f),(char *)bp-heap_listp);
        PUT(PREDRP(bp),NULL);
        PUT(listhead,(char *)bp-heap_listp);
    }
    //printf("当前块%p 后继放入的是:%p\n",bp,GET(listhead));
}




/* 
 * malloc - Allocate a block with at least size bytes of payload 
 */
void *malloc(size_t size) 
{
    count++;
    //printf("malloc请求%d:\n",count);
    size_t asize;      /* Adjusted block size */
    size_t extendsize; /* Amount to extend heap if no fit */
    char*  bp;      
    

    if (heap_listp == 0){
        mm_init();
    }
    /* Ignore spurious requests */
    if (size == 0)
        return NULL;

    /* Adjust block size to include overhead and alignment reqs. */
    if (size <= DSIZE)                                          
        asize = 2*DSIZE;                                        
    else
        asize = DSIZE * ((size + (DSIZE) + (DSIZE-1)) / DSIZE); 
    /* Search the free list for a fit */ 
    if ((bp = find_fit(asize)) != NULL) { 
        //printf("malloc的地址是：%p\n",bp);
        //printf("malloc的大小是：%ld\n",asize);   
        place(bp, asize);               
        return bp;
    }
    //printf("空间不足,调用extend_heap\n");
    /* No fit found. Get more memory and place the block */
    extendsize = MAX(asize,CHUNKSIZE);                 
    if ((bp = extend_heap(extendsize/WSIZE)) == NULL)  
        return NULL; 
    //printf("malloc的地址是：%p\n",bp);
    //printf("malloc的大小是：%ld\n",asize);                                    
    place(bp, asize);                           
    return bp;
} 

/* 
 * free - Free a block 
 */
void free(void *bp)
{
    count++;
    //printf("free请求%d:\n",count);
    //printf("free的地址是：%p\n",bp);
    if (bp == 0) 
        return;
    
    size_t size = GET_SIZE(HDRP(bp));
    
    if (heap_listp == 0){
        mm_init();
    }

    PUT(HDRP(bp), PACK(size, 0));
    PUT(FTRP(bp), PACK(size, 0));
    //还剩下合并和合并后插入需要修改
    PUT(SUCCRP(bp),NULL);
    PUT(PREDRP(bp),NULL);  
    coalesce(bp);
    //insert(p,GET_SIZE(HDRP(p)));
    
}

/*
 * realloc - Naive implementation of realloc
 */



void *realloc(void *ptr, size_t size)
{
    count++;
    //printf("realloc请求%d:\n",count);
    //printf("realloc的地址是：%p\n",ptr);
    size_t oldsize;
    void *newptr;
    if(size == 0) {
        mm_free(ptr);
        return 0;
    }

    if(ptr == NULL) {
        return mm_malloc(size);
    }
    
    newptr = mm_malloc(size);

    if(!newptr) {
        return 0;
    }

    oldsize = GET_SIZE(HDRP(ptr));
    if(size < oldsize) oldsize = size;
    memcpy(newptr, ptr, oldsize);
    mm_free(ptr);

    return newptr;
}


/* 
 * mm_checkheap - Check the heap for correctness. Helpful hint: You
 *                can call this function using mm_checkheap(__LINE__);
 *                to identify the line number of the call site.
 */
void mm_checkheap(int lineno)  
{ 
    printf("Checking heap at line: %d\n", lineno);
    char *bp = heap_listp;  // Start from the first block
    size_t heap_size = GET_SIZE(HDRP(heap_listp));  // Get the size of the heap
    
    while (GET_SIZE(HDRP(bp)) > 0) {
        size_t block_size = GET_SIZE(HDRP(bp));
        
        if (GET_SIZE(HDRP(bp)) != GET_SIZE(FTRP(bp))) {
            printf("Error: 块%p 头部和尾部size不一致\n", bp);
        }

        if (block_size <= 0) {
            printf("Error: 块大小是负数 %p\n", bp);
        }

        if ((char *)bp < heap_listp || (char *)bp + block_size > heap_listp + heap_size) {
            printf("Error: 块 %p 超出堆范围\n", bp);
        }

        if (GET_ALLOC(HDRP(bp))) {
            if (GET_ALLOC(FTRP(bp)) != 1) {
                printf("Error: 块%p 头部和尾部 分配位不一致\n", bp);
            }
        } else {

            if (GET_ALLOC(FTRP(bp)) != 0) {
                printf("Error: 块%p 头部和尾部 分配位不一致\n", bp);
            }
        }

        bp = NEXT_BLKP(bp);
    }
    
}


/* 
 * The remaining routines are internal helper routines 
 */

/* 
 * extend_heap - Extend heap with free block and return its block pointer
 */
static void *extend_heap(size_t words)     //这里的参数是多少个字 不是字节数！
{
    char *bp;
    size_t size;

    /* Allocate an even number of words to maintain alignment */
    size = (words % 2) ? (words+1) * WSIZE : words * WSIZE; 
    if ((long)(bp = mem_sbrk(size)) == -1)  
        return NULL;                                        

    /* Initialize free block header/footer and the epilogue header */
    PUT(HDRP(bp), PACK(size, 0));         /* Free block header */   
    PUT(FTRP(bp), PACK(size, 0));         /* Free block footer */   
    PUT(HDRP(NEXT_BLKP(bp)), PACK(0, 1)); /* New epilogue header */ 
    PUT(PREDRP(bp),NULL);
    PUT(SUCCRP(bp),NULL);
    /* Coalesce if the previous block was free */
    void *p=coalesce(bp);
    //insert(p,GET_SIZE(HDRP(p)));
    return p;                                          
}

/*
 * coalesce - Boundary tag coalescing. Return ptr to coalesced block
 合并之后要将合并块插入到合适的链表中
 */
static void *coalesce(void *bp) 
{
    //printf("%p\n",FTRP(PREV_BLKP(bp)));
    size_t prev_alloc = GET_ALLOC(HDRP(PREV_BLKP(bp)));
    size_t next_alloc = GET_ALLOC(HDRP(NEXT_BLKP(bp)));
    size_t size = GET_SIZE(HDRP(bp));
    void *prev_bp=PREV_BLKP(bp);
    void *next_bp=NEXT_BLKP(bp);
    size_t prev_size=GET_SIZE(HDRP(prev_bp));
    size_t next_size=GET_SIZE(HDRP(next_bp)); 
    //printf("物理上前一块的地址：%p\n",PREV_BLKP(bp));
    //printf("物理上后一块的地址：%p\n",NEXT_BLKP(bp));
    //printf("前后空闲情况：%ld,%ld\n",prev_alloc,next_alloc);
    if (prev_alloc && next_alloc) { 
        //insert(bp,size);           /* Case 1 */
    }
    else
    {
        //printf("需要合并的地址：%p\n",bp);
        if (prev_alloc && !next_alloc) {
            delete(next_bp,next_size);      /* Case 2 */
            size += next_size;
            PUT(HDRP(bp), PACK(size, 0));
            PUT(FTRP(bp), PACK(size,0));
            //insert(bp,size);
        }

        else if (!prev_alloc && next_alloc) {/* Case 3 */
            delete(prev_bp,prev_size);
            size += prev_size;
            PUT(FTRP(bp), PACK(size, 0));
            PUT(HDRP(prev_bp), PACK(size, 0));
            bp = prev_bp;
            //insert(bp,size);
        }

        else {
            delete(prev_bp,prev_size);
            delete(next_bp,next_size);              /* Case 4 */
            size +=prev_size+ next_size;
            PUT(HDRP(prev_bp), PACK(size, 0));
            PUT(FTRP(next_bp), PACK(size, 0));
            bp = prev_bp;
            //insert(bp,size);
        }
    }
    insert(bp,size);
    return bp;
}
/*
delete分三种情况 删除块在表头 在中间 在表尾
且如果块是已分配的则不需再删除
*/
void delete(void *bp,size_t csize)
{
    if(GET_ALLOC(HDRP(bp)))
       return;
    int n=binnum(csize);
    void *listhead=heap_listp+n*WSIZE;
    //bp是第一块
    if(GET(listhead)==NULL)
        return;
    //printf("删除块的大小是:%ld\n",csize);
    //printf("删除块的地址是：%p\n",bp);
    //printf("删除块在第几个类:%d\n",n);
    unsigned int succ=SUCC_BLKP(bp);
    unsigned int pred=PRED_BLKP(bp);
    if(pred==NULL)
    {
        //printf("删除的是第一块\n");
        if(succ==NULL)//说明此时链表中只有一块
        {
            PUT(listhead,NULL);
        }
        else
        {
            PUT(listhead,succ);
            //printf("逻辑上后一块地址的偏移量：%d\n",succ);
            PUT(PREDRP(heap_listp+succ),NULL);
        }
        //printf("删除第一块之后的表头放的是:%x\n",GET(listhead));
    }
    //bp是最后一块
    else if(succ==NULL&&pred!=NULL)
    {
        //printf("删除的是最后一块\n");
        PUT(SUCCRP(heap_listp+pred),NULL);
    }
    //bp在中间
    else if(pred!=NULL&&succ!=NULL)
    {
        //printf("删除的是中间块\n");
        //printf("前一块的offset是：%d\n",pred);
        //printf("后一块的offset是：%d\n",succ);
        PUT(SUCCRP(heap_listp+pred),succ);
        PUT(PREDRP(heap_listp+succ),pred);
    }
    PUT(SUCCRP(bp),NULL);
    PUT(PREDRP(bp),NULL);
    
}
/* 
 * place - Place block of asize bytes at start of free block bp 
 *         and split if remainder would be at least minimum block size
 先删除整个大块，有剩余块的话 再将剩余块插回即可
 */
static void place(void *bp, size_t asize)
{
    size_t csize = GET_SIZE(HDRP(bp));
    //printf("找到的块的地址:%p\n",bp);   
    //printf("找到的块的大小：%ld\n",csize);
    //printf("需要的块大小：%ld\n",asize);
    if ((csize - asize) >= (2*DSIZE)) {
        //删除之前应该先分割 
        /*
        delete只用负责将找到的块直接从空闲链表中删除即可
        */
        delete(bp,csize);
        /*
        重新安置已分配块的header和footer 需要改变size和a/f位
        */
        PUT(HDRP(bp), PACK(asize, 1));
        PUT(FTRP(bp), PACK(asize, 1));
        /*找到剩余块的地址 ，以便于插入*/
        void *next_bp=bp+asize;
        //printf("剩余块的地址是：%p\n",next_bp);
        PUT(HDRP(next_bp), PACK(csize-asize, 0));
        PUT(FTRP(next_bp), PACK(csize-asize, 0));
        PUT(SUCCRP(next_bp),NULL);
        PUT(PREDRP(next_bp),NULL);
        coalesce(next_bp);
        //insert(next_bp,csize-asize);
    }
    else { 
        delete(bp,csize);
        PUT(HDRP(bp), PACK(csize, 1));
        PUT(FTRP(bp), PACK(csize, 1));
    }
}

/* 
 * find_fit - Find a fit for a block with asize bytes 
 */
int binnum(size_t asize)
{
    if(asize<=16)
       return 1;
    else if(asize<=32)
       return 2;
    else if(asize<=64)
       return 3;
    else if(asize<=128)
       return 4;
    else if(asize<=256)
       return 5;
    else if(asize<=512)
       return 6;
    else if(asize<=1024)
       return 7;
    else if(asize<=2048)
       return 8;
    else if(asize<=4096)
       return 9;
    else 
       return 10;
}
/*
先根据size定位到从哪个大小类开始找，找不到就找下一个大小类
都找不到就返回空指针 malloc函数就会调用extend_heap函数
且只要找到第一个符合要求的块就可以返回
*/
static void *find_fit(size_t asize)
{
    int n=binnum(asize);
    /*链表表头为空*/
    //printf("从第几个大小类开始找:%ld\n",n);
    for(int i=n;i<=BINNUM;i++)
    {
        //存的是偏移量
        if(GET(heap_listp+i*WSIZE)!=NULL)
        {
            //printf("不为空的链表：%d\n",i);
            unsigned int bp=GET(heap_listp+i*WSIZE);
            while(bp!=NULL)
            {
                //printf("find_fit下一块的偏移量：%x\n",bp);
                if(GET_SIZE(HDRP(heap_listp+bp))>=asize)
                {
                    //printf("find_fit找到的块地址：%p\n",heap_listp+bp);
                   // printf("find_fit找到的块大小:%ld\n",GET_SIZE(HDRP(heap_listp+bp)));
                    return heap_listp+bp;
                }
                bp=SUCC_BLKP(heap_listp+bp);
            }
        }
    }
    return NULL; /* No fit */

}
