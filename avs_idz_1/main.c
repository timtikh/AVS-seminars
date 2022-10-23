//
//  main.c
//  avs_idz_1
//
//  Created by IRINA TIKHONOVA on 21.10.2022.
//  Copyright © 2022 TT. All rights reserved.
//

#include <stdio.h>

int A[1048576];
int B[1048576];

extern int inp();
extern void out(int num);

int main(int argc, const char * argv[]) {
    int num = inp();
    int temp = 0;
    for (int i = 1 ; i < num ; ++i){
        if (A[i-1] < A[i]){
            temp++;
            B[i-1] = A[i];
        }
    }
    if (temp!=0){
        out (temp);
    }
    else {
        printf("B is empty");
    }
    return 0;
}
