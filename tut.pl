#!/usr/bin/env perl

# stops code immediately when problem occurs
use strict;
# gives a warning and let code run
use warnings;

# my creates lexical scope, otherwise creates global variables
# @ used to define array
my @vehicles = ("race", "van", "suv", "truck");

# arrays can have mixed types
my @topSpeed = ("slow", 120.5, 160, 210);

# array index starts at 0, prints first and second element in array
print @vehicles[0,1];
print "\n";

# prints from 0 to 3 indexes in array
print @topSpeed[0..3];
print "\n";

# $#array is a special character that is the last index in array
print $#vehicles;
print "\n";

# prints the last element in vehicles array
print $vehicles[$#vehicles];
print "\n";

#prints the all elements but the first
print @topSpeed[1..$#topSpeed];
print "\n";

# reverses array
my @reversed = reverse @vehicles;
print @reversed;
print "\n";

# sorts array
my @sorted = sort @vehicles;

print @sorted;
print "\n";

# hash is a set of keys and values
my %car_color = (
    car => "black",
    van => "white",
    truck => "red"
);

print $car_color{"car"};
print "\n";

# creates list of keys and list of values
my @cars = keys %car_color;
my @colors = values %car_color;

# sub routine 
# arguments to a sub routine are presented
# in a special list of arguments called @_ 
# shift shifts the first argument off the list and assigns it
 sub addFive {
     my $num = shift;
     my $result = $num + 5;
     return $result;
 }
 
 print addFive(8);
 print "\n";



