#!/usr/bin/perl
#use strict;
use warnings;

#errors: scope of @biggestProduct isnt right, the assignment near line 60 doesnt work, and small sequences are getting through to the long list

print "project Euler, problem nine\n";
print "A Pythagorean triplet is a set of three natural numbers, a < b < c, for which, a2 + b2 = c2\n";
print "For example, 32 + 42 = 9 + 16 = 25 = 52\n";
print "There exists exactly one Pythagorean triplet for which a + b + c = 1000.Find the product abc.\n";

$a=0;
$b=0;
$c=0;
$limit = 700;

while($a<$limit){
	$a+=1;
	$b=$a+1;
	$c=$b+1;
	while($b<$limit){
		while($c<$limit){
			if(($a+$b+$c) == 1000){
				#print "combo! $a, $b, $c\n";
				if((($a*$a)+($b*$b)) == ($c*$c)){
					print "we found it! $a, $b, $c\n";
					$product = $a*$b*$c;
					print "the product is: $product\n";
					last;
				}
			}
			#$product = $a*$b*$c;
			#print "$a $b $c \n";
			$c+=1;
		}
		$b+=1;
		$c=$b+1;
	}
	
}

