#include <stdio.h>

int foo(int n, int m) {
    int sum = 0;
    int c0;
    for (c0 = n; c0 > 0; c0--) {
        int c1 = m;
        for (;c1 > 0;c1--){
            sum += c0 > c1 ? 1 : 0;
        }
    } 
    return sum;
}

int main(){
    int n = 10;
    int m = 5;
    printf ("n = %d, m = %d, sum = %d\n", n, m, foo(n, m));
    return 0;
}