import std.stdio;
import std.stdio;
import std.algorithm;
import std.range;
import std.file;

static import core.sys.posix.unistd;
static import core.stdc.stdlib;

struct Simple {
    int size;
    char[] buf;
}

@trusted
void main()
{
    // Let's get going!
    writeln("Hello World!");
    char[] buf = new char[10];
    
    

    Simple*[] objs = new Simple*[1000];
	foreach (i; 0 .. 1000) {
        
		objs[i] = new Simple(100, new char[10]);
	}
    core.stdc.stdlib.free(objs[0].buf.ptr);

}

void printObj(Simple* obj) {
    writeln(obj.size);
}
