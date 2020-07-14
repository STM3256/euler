#!/usr/bin/perl
#use strict;
use warnings;

print "project Euler, problem four\n";
print "A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 x 99.\n Find the largest palindrome made from the product of two 3-digit numbers. \n";

$largestPalindrome = 0;

sub CheckPalindrome{
    my $test = $_[0];
    if($test == reverse $test){
        return 2;
    }
    return -1;
}

for( $a = 100; $a < 1000; $a = $a + 1 ){
    for( $b = 100; $b < 1000; $b = $b +1){
        my $pal = $a*$b;
        if(CheckPalindrome($pal) > 0){
            if($largestPalindrome <  $pal){
                $largestPalindrome = $pal;
                print "largest palindrome set to $pal, with factors $a and $b\n";
            }
        }
    }
}
print "largest palindrome of two 3 digit products is $largestPalindrome\n";