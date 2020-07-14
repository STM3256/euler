

use warnings;

$a =0;


print "a=$a, \n";

for($r=0; $r<3; $r++){
	$b = 20;
	$b=$b+1;
	print "a=$a, b=$b\n";
	$a=$b;
	print "a=$a, b=$b\n";
	
}