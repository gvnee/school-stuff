#include<stdio.h>
int main(){


    int screen_width, screen_height;
    int color;
    int required_ram;
    int byte = 8;

    printf("shugam, bagana, ungiin hemjeeg oruulna uu.\n");
    scanf("%d%d%d", &screen_height, &screen_width, &color);

    int counter = 0;
    while(color != 1){
        color/=2;
        counter++;
    }

    required_ram = (screen_height * screen_width * counter)/byte;
    float mb = required_ram / 1000.0;

    printf("hereglegdeh RAM-iin hemjee: %dbyte, %.3fmb\n", required_ram, mb);

    return 0;
}