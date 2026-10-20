
#include <iostream>
#include <chrono>
using namespace std;

void staticArray()
{
    static int arr[10000];
    for (int i = 0; i < 10000; i++){
        arr[i] = i; }
}


void stackArray()
{
    int arr[10000];
    for (int i = 0; i < 10000; i++){
        arr[i] = i;}
}


void heapArray()
{
    int* arr = new int[10000];
    for (int i = 0; i < 10000; i++){
        arr[i] = i;}
    delete[] arr;
}

int main()
{
    auto start = chrono::steady_clock::now();

    for (int i = 0; i < 100000; i++){
        staticArray();}

    auto end = chrono::steady_clock::now();
    cout << "Static: "
         << chrono::duration<double, milli>(end - start).count()
         << " ms\n";


    start = chrono::steady_clock::now();


    for (int i = 0; i < 100000; i++)
        stackArray();

    end = chrono::steady_clock::now();
    cout << "Stack: "
         << chrono::duration<double, milli>(end - start).count()
         << " ms\n";


    start = chrono::steady_clock::now();

    for (int i = 0; i < 100000; i++){
        heapArray();}

    end = chrono::steady_clock::now();
    cout << "Heap: "
         << chrono::duration<double, milli>(end - start).count()
         << " ms\n";

         
    return 0;
}
