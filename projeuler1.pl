#!/usr/bin/perl -w

# Brute force method

sub brute_sum_multiples {
   my $i = 0;
   my $sum = 0;
   while ($i < 1000){
      $sum += $i if ($i % 3 == 0 || $i % 5 == 0);
      $i++;
   }
   return $sum;
}


# Mathematical method

# The sum of all multiples 3 or 5 is the sum of multiples of 3 PLUS the sum of multiples of 5. BUT
# this would mean we have counted the sum of multiples of 3 AND 5 twice! So we need to minus the numbers
# divisible by BOTH 3 and 5. This only works if gcd(3, 5) = 1


# Sum of multiples of 3 = 3 + 6 + 9 + ... + 999 = 3 (1 + 2 + 3 + ... + 333) = 3 * (333)(333 + 1)/2

# Sum of multiples of 5 = 5 + 10 + 15 + ... + 995 = 5 (1 + 2 + 3 + ... + 199) = 5 * (199)(199 + 1)/2

# Sum of multiples of 15 = 15 + 30 + 45 + ... + 990 = 15 (1 + 2 + 3 + ... + 66) = 15 * (66)(66 + 1)/2


sub sum_multiples {
   
   return 3 * 333 * (333 + 1)/2 + 5 * 199 * (199 + 1)/2 - 15 * 66 * (66 + 1)/2;
}
