#include<stdio.h>
#include<sys/types.h>
#include<iostream>
#include<unistd.h>

int main(){
    pid_t pid;
    pid = fork();
    if(pid < 0){
        printf("fork failed");
        return 1;
    }
    else if(pid == 0){
        execlp("/usr/bin/firefox", "firefox", NULL);
    }

    return 0;
}