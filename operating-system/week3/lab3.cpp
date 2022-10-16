#include<stdio.h>
#include<iostream>
#include<algorithm>
#include<vector>

void printDiagram(int duration, int waitTime){
    printf("|");
    for(int k = 0;k<waitTime;k++) printf(" ");
    for(int j = 0;j<duration;j++) printf("=");
    printf("\n");
}

void fcfs(int arr[], int size){

    printf("first come first serve:\n");

    int waitTime = 0, tat = 0;
    float avgWT = 0, avgTA = 0;
    for(int i = 0;i<size;i++){

        waitTime = tat;
        tat += arr[i];

        avgWT += waitTime;
        avgTA += tat;
        printf("process %d ", i+1);
        printDiagram(arr[i], waitTime);

    }

    int sum = 0;
    for(int i = 0;i<size;i++) sum += arr[i];

    printf("----------+");
    for(int i = 0;i<sum;i++){
        printf("-");
    }
    printf("\n");

    avgWT /= size;
    avgTA /= size;

    printf("Average wait time: %.2f\n", avgWT);
    printf("Average turn around: %.2f\n\n\n", avgTA);
}

void shortest_first(int arr[], int size){

    printf("shortest First:\n");

    int waitTime = 0, tat = 0;
    float avgWT = 0, avgTA = 0;

    std::sort(arr, arr+size);

    for(int i = 0;i<size;i++){

        waitTime = tat;
        tat += arr[i];

        avgWT += waitTime;
        avgTA += tat;
        printDiagram(arr[i], waitTime);

    }

    int sum = 0;
    for(int i = 0;i<size;i++) sum += arr[i];

    printf("+");
    for(int i = 0;i<sum;i++){
        printf("-");
    }
    printf("\n");

    avgWT /= size;
    avgTA /= size;

    printf("Average wait time: %.2f\n", avgWT);
    printf("Average turn around: %.2f\n\n\n", avgTA);
}

void roundRobin(int arr[], int size){
    printf("round robin:\n");
    int waitTime = 0, tat = 0;
    float avgWT = 0, avgTA = 0;

    int sum = 0;
    for(int i = 0;i<size;i++) sum += arr[i];

    avgWT -= sum;


    int counter = 0;

    int tempSum = sum;

    int tempArr[size];

    for(int i = 0;i<size;i++) tempArr[i] = arr[i];

    while(tempSum > 0){
        for(int i = 0;i<size;i++){
            if(tempArr[i]>1){
                counter++;
                tempSum--;
                tempArr[i]--;
            }
            else if(tempArr[i] == 1){
                counter++;
                tempSum--;
                avgTA += counter;
                avgWT += counter;
                tempArr[i]--;
            }
        }
    }
    
    for(int j = 0;j<size;j++){
        tempSum = sum;
        for(int i = 0;i<size;i++) tempArr[i] = arr[i];
        printf("process %d |", j+1);
        while(tempSum > 0){
            for(int i = 0;i<size;i++){
                if(tempArr[i]>1){
                    counter++;
                    tempSum--;
                    tempArr[i]--;
                    if(i == j) printf("=");
                    else printf(" ");
                }
                else if(tempArr[i] == 1){
                    counter++;
                    tempSum--;
                    tempArr[i]--;
                    if(i == j) printf("=");
                    else printf(" ");
                }
            }
        }
        printf("\n");
    }
    printf("----------+");
    for(int i = 0;i<sum;i++) printf("-");
    printf("\n");
    avgWT /= size;
    avgTA /= size;

    printf("Average wait time: %.2f\n", avgWT);
    printf("Average turn around: %.2f\n\n\n", avgTA);
}

void priority(int arr[], int size){

    printf("priority:\n");

    int waitTime = 0, tat = 0;
    float avgWT = 0, avgTA = 0;

    std::vector<int> indexes;
    for(int i = 0;i<size;i++){
        indexes.push_back(i);
    }

    int priority[size];

    for(int i = 0;i<size;i++){
        int randomIndex = rand() % indexes.size();
        priority[i] = indexes.at(randomIndex);
        // std::cout<<priority[i]<<"\n";
        indexes.erase(indexes.begin() + randomIndex);
    }

    for(int i = 0;i<size;i++){
        for(int j = 0;j<size;j++){
            if(priority[j] == i){
                printf("Priority %d Process %d", i+1, j+1);
                waitTime = tat;
                tat += arr[j];

                avgWT += waitTime;
                avgTA += tat;
                printDiagram(arr[j], waitTime);
            }
        }
    }

    int sum = 0;
    for(int i = 0;i<size;i++) sum += arr[i];

    printf("--------------------+");
    for(int i = 0;i<sum;i++){
        printf("-");
    }
    printf("\n");

    avgWT /= size;
    avgTA /= size;

    printf("Average wait time: %.2f\n", avgWT);
    printf("Average turn around: %.2f\n\n\n", avgTA);

}

int main(){
    int n;
    printf("Processiin toog oruulna uu:\n");
    scanf("%d", &n);
    int arr[n];
    
    for(int i = 0;i<n;i++){
        printf("process %d:\n", i+1);
        scanf("%d", &arr[i]);
    }

    fcfs(arr, n);
    roundRobin(arr, n);
    priority(arr, n);
    shortest_first(arr, n);

    return 0;
}