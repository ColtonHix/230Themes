use strict;
use warnings;
#use lib "/home/orangenator99/";
use lib ".";
require bag;

my $bag1 = bag->new('Jansport', 'Brown');
my $bag2 = bag->new('BigBag','Yellow');
my $bag3 = new bag('Gucci','Aquamarine');

my @closet = ($bag1,$bag2,$bag3);

foreach(@closet) {
	$_->details();
}
my %vuiton = (
       'Color' => 'Maroon',
	'Brand' => 'Luis Vuiton');
$bag1->modify(%vuiton);
$bag2->modify(%vuiton);
$bag3->modify(%vuiton);
foreach(@closet) {
	$_->details();
}
