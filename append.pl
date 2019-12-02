use strict;
use warnings;


if($#ARGV+1 != 3) {
die "Invalid input. Usage: perl reader.pl [first] [second] [output]";
}
my $out = $ARGV[2];
open(my $final, '>', $out)
or die "Could not open file '$out' $!";

my $first = $ARGV[0];
if($first eq $out) {
  die "Error: Cannot append to existing file";
}
open(my $fh, '<', $first)
or die "Could not open file '$first' $!";
while(my $row = <$fh>) {
print $final "$row";
}
my $second = $ARGV[1];
if($second eq $out) {
  die "Error: Cannot append to existing file";
}
open($fh, '<', $second)
or die "Could not open file '$second' $!";
while(my $row = <$fh>) {
print $final "$row";
}
