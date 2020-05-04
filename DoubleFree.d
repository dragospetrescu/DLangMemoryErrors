import std.stdio;
import std.stdio;
import std.algorithm;
import std.range;
import std.file;

static import core.sys.posix.unistd;
static import core.stdc.stdlib;


void main()
{
    // Let's get going!
    writeln("Hello World!");
    ubyte[10] buf;

    int[] a = new int[10];
    core.stdc.stdlib.free(a.ptr);
    core.stdc.stdlib.free(a.ptr);

}
