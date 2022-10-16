#include<stdio.h>
int main(){

    float eat;
    float cacheAccessTime, memoryAccessTime;
    float cacheHitRate, cacheMissRate;
    printf("cache hit rate, cache access time, memory access time:\n");
    scanf("%f%f%f", &cacheHitRate, &cacheAccessTime, &memoryAccessTime);
    cacheMissRate = 100 - cacheHitRate;
    cacheMissRate /= 100;
    cacheHitRate /= 100;

    eat = cacheHitRate * cacheAccessTime + cacheMissRate * (cacheAccessTime + memoryAccessTime);


    printf("effective access time: \n%.3f\n", eat);

}