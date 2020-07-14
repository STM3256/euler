#!/usr/bin/perl
#use strict;
use warnings;

print "project Euler, problem three\n";
print "The prime factors of 13195 are 5, 7, 13 and 29.\n What is the largest prime factor of the number 600851475143 ?\n";

$largestPrimeFactor = 0;
#$bignum = 600851475143;
$bignum = 600851475143;
$bignumsqrt = sqrt($bignum);


sub CheckPrime {
    #print "Checking if $_[0] is prime\n";
    my $test = $_[0];
    my $upperlimit = sqrt($test);
    for( my $b = 2; $b <= $upperlimit; $b =  $b + 1 ){
        #print "inside loop value = $b\n";
        if ($test % $b == 0){
               #print "$test is not prime\n";
                return -1;
        }
    }
    return 2;
}

for( $a = 2; $a < $bignumsqrt; $a = $a + 1 ){
    #print "main loop value = $a \n";
    if($bignum % $a == 0){
        #we found a factor!
        if(CheckPrime($a)>0){
            #print "prime factor $a\n";
            if($largestPrimeFactor < $a){
                $largestPrimeFactor = $a;
            }
        }
        my $otherfactor = $bignum/$a;
        if(CheckPrime($otherfactor)>0){
            if($largestPrimeFactor < $otherfactor){
                $largestPrimeFactor = $otherfactor;
            }
        }
    }
}
print "largest prime factor of 600851475143 is $largestPrimeFactor\n";