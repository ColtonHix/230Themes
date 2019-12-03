#!/usr/bin/perl
use warnings;
use strict;
 
print "Please type a file name: ";
#have a set file name not stdin
#use a csv file type: song title | song length | artist | album 
my $filename = <STDIN>;
chomp $filename;

#get what section you are search through
    #ex. title/song title/song, length/time/song length, album, artist
#get boundaries of what you are searching for
    # all titles/artists/albums that start with a/contain 'the'
    # 
  
open(FH, '<', $filename) or die $!;
   
while(<FH>){
    print $_;
    }
       
close(FH);
