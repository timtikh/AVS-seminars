//
//  inp.c
//  avs_idz_1
//
//  Created by Timtikh on 23.10.2022.
//  Copyright © 2022 TT. All rights reserved.
//

#include <stdio.h>
extern int A[];

int inp() {
    printf("Enter the number N for A arrange: ");
       int num = 0;
       int temp = 0;
       scanf("%d", &num);
       printf("Enter %d elements of A arrange: ",num);
       for (int i = 0 ; i < num ; ++i){
           scanf("%d", &temp);
           A[i] = temp;
       }
    return num;
}
