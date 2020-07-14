#!/usr/bin/perl
#use strict;
use warnings;

print "project Euler, problem seven\n";
print "TBy listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.\n";
print "What is the 10 001st prime number?\n";




$counter = 6;
@arrayofprimes = (2,3,5,7,11,13);
$lastprime = $arrayofprimes[-1];
$testnumber = $lastprime;
$size = @arrayofprimes;

while ($size<10001){
    $testnumber += 2;
    #print "testnumber = $testnumber \n";
    my $possibleprime = 0;
    my $exitfor = 0;

    $upperlimit  = sqrt($testnumber);
    for($a =0; $a <$size ; $a++){
        #print "a = $a \n";
        my $testprime = $arrayofprimes[$a];
        if($testprime > $upperlimit){
            #exit for loop
            $exitfor = -1;
            #print " exceeded square root test, testprime = $testprime, upperlimit = $upperlimit \n";
        }
        if($testnumber % $testprime == 0){
            #this number is not prime
            $exitfor = -1;
            $possibleprime = -1;
            #print "$testnumber is divisible by $testprime \n";
        }
        if($exitfor == -1){
            #any failure, exit for loop
            $a = $size;
        }
    }
    if($possibleprime == 0){
        #it is prime!
        push(@arrayofprimes, $testnumber);
        #print "found prime number: $testnumber, it is the $size th \n";
    }
    #print "last prime in array = $arrayofprimes[-1]";
    $possibleprime =0;
    $size = @arrayofprimes;
}

$lastprime = $arrayofprimes[-1];
print "The $size st prime number is $lastprime\n";