#!/usr/bin/perl
use warnings;
use strict;
 
print "Please type a file name: ";
#have a set file name not stdin
#use a csv file type: song title | song length | artist | album 
my $filename = <STDIN>;
chomp $filename;

open(FH, '<', $filename) or die $!;

sub searchType {
    print "\nWhat do you want to search by? :";
    my $searchParameter = <STDIN>;

    if ($searchParameter =~ m/title/) {
        print "What song do you want to search for? : ";
        my $title = <STDIN>;
    
    } elseif ($searchParameter =~ m/time/) {
        print "How long do you want the songs to be? : ";
        my $timeframe = <STDIN>;
    
    } elseif ($searchParameter =~ m/album/) {
        print "What album are you searching for? : ";
        my $album = <STDIN>;
    
    } elseif ($searchParameter =~ m/artist/) {
        print "What artist are you looking for? : ";
        my $artist = <STDIN>;
    
    } else {
        print "Invalid parameter\n";
        print "ex. title, time, album, artist\n";
        searchType();
    }
}

#get what section you are search through
    #ex. title/song title/song, length/time/song length, album, artist
#get boundaries of what you are searching for
    # all titles/artists/albums that start with a/contain 'the'
    # 
   
while(<FH>){
    print $_;
    }
       
close(FH);
