import std.stdio;
import std.file;
import std.algorithm;
import std.path;

void main(string[] args)
{
    string bd = getcwd;
    auto files = dirEntries(bd, SpanMode.depth).filter!(item => item.isFile);
    foreach (string f; files)
    {
        string prnt = baseName(dirName(f));
        string nname = prnt ~ " - " ~ baseName(f);
        f.rename(nname);
    }
}
