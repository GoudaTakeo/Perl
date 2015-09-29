#!/usr/bin/perl -w

while ($line = <STDIN>){
   chomp $line;
   ($student, $mark) = split /\s+/, $line;
   if ($mark =~ /^\d+$/){
      $grade = "HD" if ($mark >= 85 && $mark <= 100);
      $grade = "DN" if ($mark >= 75 && $mark < 85);
      $grade = "CR" if ($mark >= 65 && $mark < 75);
      $grade = "PS" if ($mark >= 50 && $mark < 65);
      $grade = "FL" if ($mark >= 0 && $mark < 50);
      $grade = "?? ($mark)" if ($mark < 0 || $mark > 100);
   } else {
      $grade = "?? ($mark)";
   }
   print "$student $grade\n";
}