#!/usr/bin/perl -w

($start, $finish) = @ARGV;
die "Usage $0 <n> <m> <file>" if @ARGV != 3;
open F, "<$ARGV[2]" or die "$0: cannot open $ARGV[2]: $!";

while ($line = <F>){
   chomp $line;
   @chars = $line =~ /\S/g;
   print @chars[$start-1..$finish-1],  "\n";
}