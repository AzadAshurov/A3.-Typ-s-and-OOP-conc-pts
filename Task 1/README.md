## Static Array
The static array is declared using the static keyword. Its memory is allocated only once and remains allocated during the entire execution of the program. When the function is called each time, the same array is reused instead of being created again. As a result, static allocation is generally fast because it does not require repeated memory allocation or deallocation. 

## Stack Array
The stack array is a local variable declared inside the function. Its memory is automatically managed and is associated with the function's execution. The array's lifetime ends when the function returns.Stack allocation is usually very fast because allocating local variables typically requires little overhead. However, initializing all 10,000 elements takes time on every function call. Unlike the static array, the stack array is a new local array each time the function is executed.

## Heap Array
The heap array is allocated dynamically using new int[10000]. Its memory is allocated at runtime, and the program must explicitly release it using delete[].Heap allocation is generally slower than stack allocation because dynamic memory management requires additional work, including finding and managing a suitable memory block. In this experiment, the allocation and deallocation overhead is repeated 100,000 times, which can increase the total execution time.

## Conclusion
This experiment shows that the way memory is allocated affects program performance. Static and stack arrays are usually faster because they have less allocation overhead, while heap arrays can be slower because they require dynamic memory allocation and deallocation.In conclusion, each type of memory has its own purpose. Static arrays keep their data between function calls, stack arrays are suitable for temporary data, and heap arrays are useful when memory needs to be allocated dynamically.

## Sources
https://www.learncpp.com/cpp-tutorial/static-local-variables
https://www.learncpp.com/cpp-tutorial/the-stack-and-the-heap
https://learn.microsoft.com/en-us/cpp/build/stack-usage
https://learn.microsoft.com/en-us/cpp/cpp/new-and-delete-operators
