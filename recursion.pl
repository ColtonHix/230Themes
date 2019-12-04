use strict;
use warnings;

sub fact {
	my $x = $_[0];
	if($x == 0) {
		return 1;
	} else { 
		return $x * fact($x-1);
	}
}
my $z = <STDIN>;

print fact($z),"\n";
