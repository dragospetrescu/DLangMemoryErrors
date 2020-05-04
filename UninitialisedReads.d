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


    Simple* objHeap = new Simple();
    printObj(objHeap);

    Simple obj = Simple();
    printObj(&obj);

    int i;
    writeln(i);


}

void printObj(Simple* obj) {
    writeln(obj.size);
    writeln(obj.buf);
}
