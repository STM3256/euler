#!/usr/bin/perl
#use strict;
use warnings;

print "project Euler, problem five\n";
print "2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.\n What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20? \n";

#$startingNumber = 20*19;
$smallestMultiple = 1;
@factors = (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

sub FindFactors{
    my $test = $_[0];
    my @tempFactors = (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
    for($b = 2; $b < sqrt($test); $b = $b + 1){
        if($test % $b == 0){
                $tempFactors[$b]++;
                $tempFactors[$test/$b]++;
        }
    }
    return FindPrimeFactors(@tempFactors);
}

sub FindPrimeFactors{
     my @primelist = @_;
     for($a20 = 0; $a20<$primelist[20]; $a20++){
            $primelist[20]--;
            $primelist[2]++;
            $primelist[2]++;
            $primelist[5]++;
     }for($a18 = 0; $a18<$primelist[18]; $a18++){
            $primelist[18]--;
            $primelist[2]++;
            $primelist[3]++;
            $primelist[3]++;
     }for($a16 = 0; $a16<$primelist[16]; $a16++){
            $primelist[16]--;
            $primelist[2]++;
            $primelist[2]++;
            $primelist[2]++;
            $primelist[2]++;
     }for($a15 = 0; $a15<$primelist[15]; $a15++){
            $primelist[15]--;
            $primelist[3]++;
            $primelist[5]++;
     }for($a14 = 0; $a14<$primelist[14]; $a14++){
            $primelist[14]--;
            $primelist[2]++;
            $primelist[7]++;
     }for($a12 = 0; $a12<$primelist[12]; $a12++){
            $primelist[12]--;
            $primelist[2]++;
            $primelist[2]++;
            $primelist[3]++;
     }for($a10 = 0; $a10<$primelist[10]; $a10++){
            $primelist[10]--;
            $primelist[2]++;
            $primelist[5]++;
     }for($a9 = 0; $a9<$primelist[9]; $a9++){
            $primelist[9]--;
            $primelist[3]++;
            $primelist[3]++;
     }for($a8 = 0; $a8<$primelist[8]; $a8++){
            $primelist[8]--;
            $primelist[2]++;
            $primelist[2]++;
            $primelist[2]++;
     }for($a6 = 0; $a6<$primelist[6]; $a6++){
            $primelist[6]--;
            $primelist[2]++;
            $primelist[3]++;
     }for($a4 = 0; $a4<$primelist[4]; $a4++){
            $primelist[4]--;
            $primelist[2]++;
            $primelist[2]++;
     }
}

for( $a = 2; $a < 20; $a = $a + 1 ){
    my @tempPrimeFactors = (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
    @tempPrimeFactors = FindFactors[$a];
    for($c = 2; $c < 21; $c++){
        if($tempPrimeFactors[$c] > $factors[$c]){
                $factors[$c] = $tempPrimeFactors[$c];
        }
    }
    
}

for( $d = 2; $d < 20; $d++ ){
    for($e = 2; $e < $factors[$d]+1; $e++){
        $smallestMultiple = $factors[$d]*$smallestMultiple;
    }
}
print "smallest multiple with all factors from 1 to 20 is $smallestMultiple\n";