#!/usr/bin/perl
use warnings;
use strict;
use lib "Text";
use Text::CSV;
 
#print "Please type a file name: ";
#have a set file name not stdin
#use a csv file type: song title | song length | artist | album 
my $filename = $ARGV[0];
chomp $filename;

#initializes csv module
my $csv = Text::CSV->new({ sep_char => ',' });

open(FH, '<:encoding(utf8)', $filename) or die $!;

#get what section you are search through
    #ex. title/song title/song, length/time/song length, album, artist
sub searchType {
    print "\nWhat do you want to search by? :";
    my $searchParameter = <STDIN>;
    $searchParameter = lc $searchParameter;

    if ($searchParameter =~ m/title/) {
        print "What song do you want to search for? : ";
        my $title = <STDIN>;
        titleSearch($title);
    
    } elsif ($searchParameter =~ m/time/) {
        print "How long do you want the songs to be? : ";
        my $timeframe = <STDIN>;
        timeSearch($timeframe);
    
    } elsif ($searchParameter =~ m/album/) {
        print "What album are you searching for? : ";
        my $album = <STDIN>;
        albumSearch($album);
    
    } elsif ($searchParameter =~ m/artist/) {
        print "What artist are you looking for? : ";
        my $artist = <STDIN>;
        artistSearch($artist);
    
    } elsif ($searchParameter =~ m/genre/) {
        print "What genre are you looking for? : ";
        my $genre = <STDIN>;
        genreSearch($genre);
        
    }else {
        print "Invalid parameter\n";
        print "ex. title, time, album, artist, genre\n";
        searchType();
    }
}

#get boundaries of what you are searching for
    # all titles/artists/albums that start with a/contain 'the'
sub titleSearch {
  #grab the (first) parameter to this function
  my $title = lc shift;
  chomp $title;
  #skips the header row
  my $dummy = <FH>;
  while(my $row = <FH>) {
    #only continue if the line can be parsed
    if ($csv->parse($row)) {
      my @vals = $csv->fields();
      #grab the first field (title)
      my $test = lc $vals[0];
      chomp $test;
      #check if it contains the parameter (not matches)
      if(index($test,$title) != -1) {
        print "$row\n";
      }
  } else {
      warn "Line could not be parsed: $row\n $.";
  }
      }
}

sub timeSearch {
    print "time search";
}

sub albumSearch {
    
}

sub artistSearch {
    
}

sub genreSearch {
    
}
   
searchType();
       
close(FH);
