/*
 * trans.c - Matrix transpose B = A^T
 *
 * Each transpose function must have a prototype of the form:
 * void trans(int M, int N, int A[N][M], int B[M][N]);
 *
 * A transpose function is evaluated by counting the number of misses
 * on a 1KB direct mapped cache with a block size of 32 bytes.
 */
#include <stdio.h>
#include "cachelab.h"
#include "contracts.h"

int is_transpose(int M, int N, int A[N][M], int B[M][N]);

/*
 * transpose_submit - This is the solution transpose function that you
 *     will be graded on for Part B of the assignment. Do not change
 *     the description string "Transpose submission", as the driver
 *     searches for that string to identify the transpose function to
 *     be graded. The REQUIRES and ENSURES from 15-122 are included
 *     for your convenience. They can be removed if you like.
 */
char transpose_submit_desc[] = "Transpose submission";
void transpose_submit(int M, int N, int A[N][M], int B[M][N])
{
    int tmp1,tmp2,tmp3,tmp4,tmp5,tmp6,tmp7,tmp8;
    if(M==32&&N==32)
    {
        //分成8*8块 l循环去掉 用8个变量
        for (int i = 0; i < N; i+=8) {
            for (int j = 0; j < M; j+=8) {
                for(int k=0;k<8;k++)
                {
                    //for(int l=0;l<8;l++)
                    tmp1=A[i+k][j+7];tmp2=A[i+k][j+6];
                    tmp3=A[i+k][j+5];tmp4=A[i+k][j+4];
                    tmp5=A[i+k][j+3];tmp6=A[i+k][j+2];
                    tmp7=A[i+k][j+1];tmp8=A[i+k][j];
                    B[j+7][i+k] = tmp1; B[j+6][i+k] = tmp2;
                    B[j+5][i+k] = tmp3;B[j+4][i+k] = tmp4;
                    B[j+3][i+k] = tmp5;B[j+2][i+k] = tmp6;
                    B[j+1][i+k] = tmp7;B[j][i+k] = tmp8;
                    
                }
            }
        }    
    }
    if(M==64&&N==64)
    {
        for (int j = 0; j < N; j += 8) {
            for (int i = 0; i < N; i += 8) {
                // 处理每个 8x8 小块
                //A左上 0，0 到B左上 A右上到B右上 
                for (int m = 0; m <4; m++) {
                    tmp1=A[i+m][j];
                    tmp2=A[i+m][j+1];
                    tmp3=A[i+m][j+2];
                    tmp4=A[i+m][j+3];
                    tmp5=A[i+m][j+4];
                    tmp6=A[i+m][j+1+4];
                    tmp7=A[i+m][j+2+4];
                    tmp8=A[i+m][j+3+4];

                    B[j][i+m]=tmp1;
                    B[j+1][i+m]=tmp2;
                    B[j+2][i+m]=tmp3;
                    B[j+3][i+m]=tmp4;
                    B[j][i+m+4]=tmp5;
                    B[j+1][i+m+4]=tmp6;
                    B[j+2][i+m+4]=tmp7;
                    B[j+3][i+m+4]=tmp8;
                }
                //B右上 到B左下 A左下到B右上
                for (int m = 0; m <4; m++) {
                    tmp1=A[i+4][j+m];
                    tmp2=A[i+1+4][j+m];
                    tmp3=A[i+2+4][j+m];
                    tmp4=A[i+3+4][j+m];
                    tmp5=B[j+m][i+4];
                    tmp6=B[j+m][i+1+4];
                    tmp7=B[j+m][i+2+4];
                    tmp8=B[j+m][i+3+4];

                    B[j+m][i+0+4]=tmp1;
                    B[j+m][i+1+4]=tmp2;
                    B[j+m][i+2+4]=tmp3;
                    B[j+m][i+3+4]=tmp4;
                    B[j+m+4][i]=tmp5;
                    B[j+m+4][i+1]=tmp6;
                    B[j+m+4][i+2]=tmp7;
                    B[j+m+4][i+3]=tmp8;
                }
                //右下 4，4
                for (int m = 0; m <4; m++) {
                    tmp1=A[i+m+4][j+4];
                    tmp2=A[i+m+4][j+1+4];
                    tmp3=A[i+m+4][j+2+4];
                    tmp4=A[i+m+4][j+3+4];
                    B[j+4][i+m+4]=tmp1;
                    B[j+1+4][i+m+4]=tmp2;
                    B[j+2+4][i+m+4]=tmp3;
                    B[j+3+4][i+m+4]=tmp4;
                }
            }
        }

        
    }
    if(M==60&&N==68)
    {
        for (int j = 0; j < M; j += 16) {
            for (int i = 0; i < N; i += 16) {
                //分成16*16块处理 分四种情况 因为60*68不能正好分成16*16 下面和右面有剩余
                if(i+16<=N &&j+16<=M)
                {
                    //对于这种情况 使用8个变量存储 能减少100多个miss
                    for (int k=0; k<16; k++) {
                        tmp1=A[i][j+k];
                        tmp2=A[i+1][j+k];
                        tmp3=A[i+2][j+k];
                        tmp4=A[i+3][j+k];
                        tmp5=A[i+4][j+k];
                        tmp6=A[i+5][j+k];
                        tmp7=A[i+6][j+k];
                        tmp8=A[i+7][j+k];
                        B[j+k][i]=tmp1;
                        B[j+k][i+1]=tmp2;
                        B[j+k][i+2]=tmp3;
                        B[j+k][i+3]=tmp4;
                        B[j+k][i+4]=tmp5;
                        B[j+k][i+5]=tmp6;
                        B[j+k][i+6]=tmp7;
                        B[j+k][i+7]=tmp8;

                        tmp1=A[i+8][j+k];
                        tmp2=A[i+9][j+k];
                        tmp3=A[i+10][j+k];
                        tmp4=A[i+11][j+k];
                        tmp5=A[i+12][j+k];
                        tmp6=A[i+13][j+k];
                        tmp7=A[i+14][j+k];
                        tmp8=A[i+15][j+k];
                        B[j+k][i+8]=tmp1;
                        B[j+k][i+9]=tmp2;
                        B[j+k][i+10]=tmp3;
                        B[j+k][i+11]=tmp4;
                        B[j+k][i+12]=tmp5;
                        B[j+k][i+13]=tmp6;
                        B[j+k][i+14]=tmp7;
                        B[j+k][i+15]=tmp8;
                        
                    }
                }
                else if(i+16<=N&&j+16>M){
                    for (int k=0; k< M-j;k++) {
                        tmp1=A[i][j+k];
                        tmp2=A[i+1][j+k];
                        tmp3=A[i+2][j+k];
                        tmp4=A[i+3][j+k];
                        tmp5=A[i+4][j+k];
                        tmp6=A[i+5][j+k];
                        tmp7=A[i+6][j+k];
                        tmp8=A[i+7][j+k];
                        B[j+k][i]=tmp1;
                        B[j+k][i+1]=tmp2;
                        B[j+k][i+2]=tmp3;
                        B[j+k][i+3]=tmp4;
                        B[j+k][i+4]=tmp5;
                        B[j+k][i+5]=tmp6;
                        B[j+k][i+6]=tmp7;
                        B[j+k][i+7]=tmp8;

                        tmp1=A[i+8][j+k];
                        tmp2=A[i+9][j+k];
                        tmp3=A[i+10][j+k];
                        tmp4=A[i+11][j+k];
                        tmp5=A[i+12][j+k];
                        tmp6=A[i+13][j+k];
                        tmp7=A[i+14][j+k];
                        tmp8=A[i+15][j+k];
                        B[j+k][i+8]=tmp1;
                        B[j+k][i+9]=tmp2;
                        B[j+k][i+10]=tmp3;
                        B[j+k][i+11]=tmp4;
                        B[j+k][i+12]=tmp5;
                        B[j+k][i+13]=tmp6;
                        B[j+k][i+14]=tmp7;
                        B[j+k][i+15]=tmp8;
                    }
                }
                else if(i+16>N && j+16<=M)
                {
                    /*
                    for(int l=0;l<N-i;l++)
                    {
                        tmp1=A[i+l][j];
                        tmp2=A[i+l][j+1];
                        tmp3=A[i+l][j+2];
                        tmp4=A[i+l][j+3];
                        tmp5=A[i+l][j+4];
                        tmp6=A[i+l][j+5];
                        tmp7=A[i+l][j+6];
                        tmp8=A[i+l][j+7];
                        B[j][i+l]=tmp1;
                        B[j+1][i+l]=tmp2;
                        B[j=2][i+l]=tmp3;
                        B[j+3][i+l]=tmp4;
                        B[j+4][i+l]=tmp5;
                        B[j+5][i+l]=tmp6;
                        B[j+6][i+l]=tmp7;
                        B[j+7][i+l]=tmp8;

                        tmp1=A[i+l][j+8];
                        tmp2=A[i+l][j+9];
                        tmp3=A[i+l][j+10];
                        tmp4=A[i+l][j+11];
                        tmp5=A[i+l][j+12];
                        tmp6=A[i+l][j+13];
                        tmp7=A[i+l][j+14];
                        tmp8=A[i+l][j+15];
                        B[j+8][i+l]=tmp1;
                        B[j+9][i+l]=tmp2;
                        B[j+10][i+l]=tmp3;
                        B[j+11][i+l]=tmp4;
                        B[j+12][i+l]=tmp5;
                        B[j+13][i+l]=tmp6;
                        B[j+14][i+l]=tmp7;
                        B[j+15][i+l]=tmp8;
                    }
                    */
                    for (int k=0; k<16; k++) {
                         //i=64
                            tmp1=A[i][j+k];
                            tmp2=A[i+1][j+k];
                            tmp3=A[i+2][j+k];
                            tmp4=A[i+3][j+k];
                            B[j+k][i]=tmp1;
                            B[j+k][i+1]=tmp2;
                            B[j+k][i+2]=tmp3;
                            B[j+k][i+3]=tmp4;
                    }
                    
                }
                else{
                    //这里用变量作用不大 i=64 j=48
                    for(int k=0;k<M-j;k++)
                    {
                        tmp1=A[i][j+k];
                        tmp2=A[i+1][j+k];
                        tmp3=A[i+2][j+k];
                        tmp4=A[i+3][j+k];
                        B[j+k][i]=tmp1;
                        B[j+k][i+1]=tmp2;
                        B[j+k][i+2]=tmp3;
                        B[j+k][i+3]=tmp4;
                        /*
                        for(int l=0;l<4;l++)
                             B[j+k][i+l]=A[i+l][j+k];
                        */
                    }
                }
            }
        }

    }    
}
/*
 * You can define additional transpose functions below. We've defined
 * a simple one below to help you get started.
 */

 /*
  * trans - A simple baseline transpose function, not optimized for the cache.
  */
char trans_desc[] = "Simple row-wise scan transpose";
void trans(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, tmp;

    REQUIRES(M > 0);
    REQUIRES(N > 0);

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; j++) {
            tmp = A[i][j];
            B[j][i] = tmp;
        }
    }

    ENSURES(is_transpose(M, N, A, B));
}

/*
 * registerFunctions - This function registers your transpose
 *     functions with the driver.  At runtime, the driver will
 *     evaluate each of the registered functions and summarize their
 *     performance. This is a handy way to experiment with different
 *     transpose strategies.
 */
void registerFunctions()
{
    /* Register your solution function */
    registerTransFunction(transpose_submit, transpose_submit_desc);

    /* Register any additional transpose functions */
    //registerTransFunction(trans, trans_desc);

}

/*
 * is_transpose - This helper function checks if B is the transpose of
 *     A. You can check the correctness of your transpose by calling
 *     it before returning from the transpose function.
 */
int is_transpose(int M, int N, int A[N][M], int B[M][N])
{
    int i, j;

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; ++j) {
            if (A[i][j] != B[j][i]) {
                return 0;
            }
        }
    }
    return 1;
}

