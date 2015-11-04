#!/usr/bin/perl -w

$max_word = "";
$num_words = 0;

while ($line = <STDIN>){
   chomp $line;
   @words = $line =~ /([\w'-]+)/g;
   foreach $word (@words){
      if (length $word > length $max_word){
         @max_words = ();
         push @max_words, $word;
         $max_word = $word;
      } elsif (length $word == length $max_word){
         push @max_words, $word;
      }
      $num_words++;

   }
}

print "Max word(s): @max_words, Number of words: $num_words\n";