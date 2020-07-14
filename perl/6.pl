#!/usr/bin/perl
#use strict;
use warnings;

print "project Euler, problem six\n";
print "The sum of the squares of the first ten natural numbers is, 1^2 + 2^2 + ... + 10^2 = 385\n";
print "The square of the sum of the first ten natural numbers is,  (1 + 2 + ... + 10)^2 = 55^2 = 3025\n";
print "Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.\n";
print "Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum. \n";


$sumofsquare = 0;
$sum = 0;
$difference = 0;

for( $a = 1; $a < 101; $a = $a + 1 ){
    $sumofsquare += ($a)*($a);
    $sum += $a;
    print "sumofsquare $sumofsquare \n";
    print "sum $sum \n";
    print "a = $a \n";
}
$squareofsum = $sum*$sum;
$difference = $squareofsum-$sumofsquare;
print "squareofsum $squareofsum \n";
print "sumofsquares $sumofsquare \n";

print "the difference is $difference\n";