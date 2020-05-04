I have identified the most common C language memory errors and I tried reproducing them on Dlang.
I have compiled each file with: dmd -O -release -inline -boundscheck=off

TODO:
Also check flag -check

Types of problems
- Dangling pointers 
If the program mistakenly frees a live object,the allocator may overwrite its contents with a new object orheap metadata.
Didn't manage to reproduce it. If an object is used after free the program will exit on free.


- Buffer overﬂows
Out-of-bound writes can corrupt the contents of live objects on the heap.
Reproduced it in @trusted and @system.


- Heap metadata overwrites
If heap metadata is stored near heap objects, an out-of-bound write can corrupt it.
Todo. Need to research metadata location in Dlang.


- Uninitialized reads
Reading values from newly-allocated or un-allocated memory leads to undeﬁned behavior.
All newly allocated memory is initialised. 
Did not try with un-allocated memory.


- Invalid frees
Passing illegal addresses to free can corrupt the heap or lead to undeﬁned behavior.
Could not reproduce it.

- Double frees
Repeated calls to free of objects that have already been freed cause freelist-based allocators to fail.
The program exits on the second free.
