import std.stdio;
import std.stdio;
import std.algorithm;
import std.range;
import std.file;

static import core.sys.posix.unistd;

@safe
void main()
{
    // Let's get going!
    writeln("Hello World!");
    ubyte[10] buf;
    
    long nread = safeRead(1, buf);

}

auto safeRead(int fd, ubyte[] buf) @trusted
{
    return core.sys.posix.unistd.read(fd, buf.ptr, buf.length);
}