#include<stdio.h>
int main(){
    
    long page, row, character;

    printf("huudas, mur, temdegt\n");
    scanf("%ld%ld%ld", &page, &row, &character);

    float cache;

    cache = character * 2;
    cache = cache * row * page;

    float mainmemory;

    mainmemory = character * row * page * 10;

    float disk;
    
    disk = character * row * page / 1024 * 10;

    printf("%.3fnanosecond \n", cache);
    printf("%.3fnanosecond \n", mainmemory);
    printf("%.3fmillisecond \n", disk);


    return 0;
}