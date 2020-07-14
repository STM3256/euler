#!/usr/bin/perl
#use strict;
use warnings;

print "project Euler, problem one\n";
print "if we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23. Find the sum of all the multiples of 3 or 5 below 1000.\n";

$sum = 0;

for( $a = 3; $a < 1000; $a = $a + 1 ){
    if($a % 3 == 0 || $a % 5 == 0 ){
        #print "value of a: $a\n";
        $sum+=$a;
	}
}
print "the total sum is $sum\n";
