import std.stdio;
import std.stdio;
import std.algorithm;
import std.range;
import std.file;

static import core.sys.posix.unistd;


void main()
{
    // Let's get going!
    writeln("Hello World!");
    ubyte[10] buf;

    long nread = unSafeRead(1, buf, 20);

}

auto unSafeRead(int fd, ubyte[] buf, int length) @trusted
{
    return core.sys.posix.unistd.read(fd, buf.ptr, length);
}