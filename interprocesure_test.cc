#include <iostream>

int get_sum(int *x, int s){
    int sum = 0;
    for (int i = 0;i < s;++ i)
        sum += x[i];
    return sum;
}

int fetch_and_decrement(int& a){
    int old = a;
    -- a;
    return old;
}

bool is_zero(int x){
    return x == 0;
}

int main(){
    int v[]={1,2,3,4,5};
    int s = 5;
    int a = 10;
    int sum = get_sum(v, s);
    while (fetch_and_decrement(a) > 0);

    bool b = is_zero(a);
    
    return 0;
}