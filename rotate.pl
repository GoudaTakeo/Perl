#!/usr/bin/perl -w

# Usage: ./rotate.pl a b c d e f g

print "Enter list: @ARGV\n";
print "How many times? \n";
chomp ($rotate_amount = <STDIN>);

unshift @ARGV, pop @ARGV for 1..$rotate_amount % @ARGV;
print "@ARGV\n";
