# Recursion
+ Process in which the function calls itself directly or indirectly
+ Base case is the solution that will call the recursive calls to stop.
+ The idea is to use smaller problems (base cases and smaller solutions that call the function recursively) to solve the problem.
+ Without a base **Stack Overflow** may occur.
  + This is when the call stack pointer exceeds the stack bound. Basically the size of the call stack has grown too large, and this most likely means that your base case is off.
+ Direct recursive is when the function calls the same function within itself.
+ Indirect recursive is when a function calls another function, and they both call each other recursively.
+ A recursive function is **tail recursive** when the recursive call is the last thing executed by the function.
+ Memory is allocated in a recursive call by having the memory for the function allocated on top of the memory that is allocated to calling the function and the different copy of the local variables created for each function call. Memory is de-allocated after the function finally hits its base case and exits out through each recursive call.

Disadvantages over iterative functions:
+ Greater space requirements due to the allocation of memory
+ Greater time requirements

Advantages
+ It can be cleaner and more simple/readable compared to an iterative function