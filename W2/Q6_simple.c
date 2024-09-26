#include <stdio.h>

int main(void) {
    int x;
    printf("Enter a number: ");
    scanf("%d", &x);

if_condi:
    if (x > 100) goto if_body;
    if (x < 1000) goto if_body;

    goto else_body;

if_body:
    printf("medium\n");

    goto if_end;

else_body:
    printf("small/big\n");
    
if_end:

    return 0;
}