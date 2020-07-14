#!/usr/bin/perl
#use strict;
use warnings;

#errors: scope of @biggestProduct isnt right, the assignment near line 60 doesnt work, and small sequences are getting through to the long list

$b1 = "731671765313306249192251196744265747423553491949349698352031277450632623957831801698480186947885184385861560789112949495459501737958331952853208805511";
$b2 = "125406987471585238630507156932909632952274430435576689664895044524452316173185640309871112172238311362229893423380308135336276614282806444486645238749";
$b3 = "303589072962904915604407723907138105158593079608667017242712188399879790879227492190169972088809377665727333001053367881220235421809751254540594752243";
$b4 = "525849077116705560136048395864467063244157221553975369781797784617406495514929086256932197846862248283972241375657056057490261407972968652414535100474";
$b5 = "821663704844031998900088952434506585412275886668811642717147992444292823086346567481391912316282458617866458359124566529476545682848912883142607690042";
$b6 = "242190226710556263211111093705442175069416589604080719840385096245544436298123098787992724428490918884580156166097919133875499200524063689912560717606";
$b7 = "0588611646710940507754100225698315520005593572972571636269561882670428252483600823257530420752963450";
$thousanddigitnumber = $b1.$b2.$b3.$b4.$b5.$b6.$b7;

print "project Euler, problem eight\n";
print "The four adjacent digits in the 1000-digit number that have the greatest product are 9 x 9 x 8 x 9 = 5832.\n";
print "$thousanddigitnumber\n";
print "Find the thirteen adjacent digits in the 1000-digit number that have the greatest product. What is the value of this product?\n";

my @nonzerosequences = split('0', $thousanddigitnumber);
my @nonzerolongsequences;
my $sizenonzero = @nonzerosequences;
$biggestProduct = 1;

for($a = 0; $a<$sizenonzero; $a++){#remove sequences smaller than 13 in length
        $nonzerosequencesinstance = $nonzerosequences[$a];
        $lengthnonzerosequencesinstance = length($nonzerosequencesinstance);
        #print "lengthnonzerosequencesinstance: $lengthnonzerosequencesinstance\n";
	if($lengthnonzerosequencesinstance > 12){
		push(@nonzerolongsequences, "$nonzerosequencesinstance");
		#print "---nonzerosequencesinstance: $nonzerosequencesinstance\n";
	#}else{
                #print "---rejected! $nonzerosequencesinstance\n";
	}
}
#print "nonzerolongsequences[0]: $nonzerolongsequences[0] \n";
#print "sizenonzero: $sizenonzero \n";
#print "sizenonzerolong: $sizenonzerolong \n";
my $sizenonzerolong = @nonzerolongsequences;
for($b = 0; $b<$sizenonzerolong; $b++){
	$testproduct = 1;
	
	
	$instancelong = $nonzerolongsequences[$b];
        $lengthofinstance = length($instancelong);
        #print "lengthofinstance: $lengthofinstance\n";
	print "nonzerolongsequences[$b]: $nonzerolongsequences[$b], length: $lengthofinstance\n";
	$additionalproductstotest = $lengthofinstance-13;
	
	#take first thirteen numbers and multiply them
        for($d =0; $d<13; $d++){
        	$eachnumber = substr($nonzerolongsequences[$b],$d,1);
                $testproduct = $testproduct*$eachnumber;
        }
        
        #print " big before: $biggestProduct, testproductbefore: $testproduct\n";
        #$biggestProduct = $testproduct;
        
	print "index: $b, additionalproductstotest: $additionalproductstotest, testproduct: $testproduct, big: $biggestProduct\n";
	
        for($c =0; $c<$additionalproductstotest; $c++){
                #for each product to test divide by the previously first number in sequence and multiply by next in sequence
                $firstvalue = substr($nonzerolongsequences[$b],$c,1);
                $nextvalue = substr($nonzerolongsequences[$b],($c+13),1);
                #if($b == 22){
		#	print "c:$c, first: $firstvalue, next: $nextvalue\n";	
                #}
                
                 $testproduct = $testproduct/$firstvalue;
                 $testproduct = $testproduct*$nextvalue;
                 if($testproduct > $biggestProduct){
                      $biggestProduct = $testproduct;
                }
        }
}

print "The largest product is: $biggestProduct\n";