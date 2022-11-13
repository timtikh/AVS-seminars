#include <stdio.h>
#include <stdlib.h>
int main()
{
    // count ascii letters by each in string
    int count[26] = {0};
    // input string
    char str[2048];
    // input string
    printf("Enter string: ");
    gets(str);
    //printf each char from str[]
    for (int i = 0; str[i] != '\0'; i++)
    {
        printf("%c", str[i]);
    }

    printf("\n");
    
    int i;
    for (i = 0; str[i] != '\0'; i++)
    {
        if (str[i] >= 'a' && str[i] <= 'z')
            count[str[i] - 'a']++;
        else if (str[i] >= 'A' && str[i] <= 'Z')
            count[str[i] - 'A']++;
    }
    // print the count of each alphabet
    for (i = 0; i < 26; i++)
        if (count[i] != 0)
            printf("'%c' = %d  ", i + 'a', count[i]);
    // count ascii numbers by each in string
    int count2[10] = {0};
    int j;
    for (j = 0; str[j] != '\0'; j++)
    {
        if (str[j] >= '0' && str[j] <= '9')
            count2[str[j] - '0']++;
    }
    // print the count of each number
    for (j = 0; j < 10; j++) {
        if (count2[j] != 0){
            printf("'%d' = %d  ", j, count2[j]);
        }
    }
    return 0;
}
