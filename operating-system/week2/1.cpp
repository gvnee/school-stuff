#include <stdio.h>
 
int main() {

    int zaavar = 0;
    printf("1 cycle dahi taktin dohio: \n");

    int tpc;
    scanf("%d", &tpc);
    
    printf("zaavariin toog oruulna uu\n");
    scanf("%d", &zaavar);
    int arr[10000];
    for(int i = 1; i <= zaavar; i++){
        printf("CPI: \n");
        scanf("%d", &arr[i]);
    }
    printf("program dahi zaavriin daraalliin toog oruulna uu: ");
    int temp;
    scanf("%d", &temp);
    int res = 0;
    for(int i = 0; i < temp; i++){
        int temp2;
        printf("zaavar: \n");
        scanf("%d", &temp2);
        res += arr[temp2];
    }
    
    res *= tpc;
    
    printf("hariu: %d\n", res);

    return 0;
}