# Recursion
+ Process in which the function calls itself directly or indirectly
+ Base case is the solution that will call the recursive calls to stop.
+ The idea is to use smaller problems (base cases and smaller solutions that call the function recursively) to solve the problem.
+ Without a base **Stack Overflow** may occur.
  + This is when the call stack pointer exceeds the stack bound. Basically the size of the call stack has grown too large, and this most likely means that your base case is off.
+ Direct recursive is when the function calls the same function within itself.
+ Indirect recursive is when a function calls another function, and they both call each other recursively.