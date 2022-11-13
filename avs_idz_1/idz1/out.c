//
//  out.c
//  avs_idz_1
//
//  Created by TIM TIKHONOVA on 23.10.2022.
//  Copyright © 2022 TT. All rights reserved.
//

#include <stdio.h>
extern int B[];

void out(int num) {
    printf("Elements of B: ");
       for (int i = 0 ; i < num ; ++i){
           printf("%d ", B[i]);
       }
}
