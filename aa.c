#include <string.h>
#include <stdio.h>

void test(){
    printf("this is a test function\n");
    char* tmp = NULL;
    memcpy(tmp, "hello bit!", 10);
    printf("%s", tmp);
    return;
}

int main(){
    
    printf("hello bit\n");
    int i = 0;
    for(i = 0; i < 5; i++){
        printf("----------\n");
    }
    test();
    printf("over\n");

    return 0;
}
