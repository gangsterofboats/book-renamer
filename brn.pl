#!/usr/bin/perl
use strict;
use warnings;
use Cwd;
use File::Copy;

my $bd = getcwd;
opendir(my $dh, $bd);
my @dirs = grep {$_ ne '.' and $_ ne '..'} readdir $dh;

foreach my $prnt (@dirs)
{
    opendir(my $sdh, $prnt);
    my @sdr = grep {$_ ne '.' and $_ ne '..'} readdir $sdh;
    foreach my $item (@sdr)
    {
        my $nname = $prnt . ' - ' . $item;
        my $fop = getcwd . "/$prnt/$item";
        my $fnp = getcwd . "/$nname";
        move $fop, $fnp;
    }
    closedir $sdh;
}
closedir $dh;
