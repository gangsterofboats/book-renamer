#!/usr/bin/perl6

my $bd = $*CWD;
my @dirs = dir $*CWD;
for @dirs -> $dir
{
    my @files = dir $dir;
    for @files -> $file
    {
        my $nname = $dir.basename ~ ' - ' ~ $file.basename;
        my $fnp = $bd ~ '/' ~ $nname;
        $file.rename($fnp);
    }
}
