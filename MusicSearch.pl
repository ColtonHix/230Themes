#!/usr/bin/perl
use warnings;
use strict;
use lib "Text";
use Text::CSV;

print "Please type a file name: ";
#have a set file name not stdin
#use a csv file type: song title | song length | artist | album
my $filename = <STDIN>;
chomp $filename;

#Initializes csv module.
my $csv = Text::CSV->new({ sep_char => ',' });

open(my $fh, '<', $filename) or die $!;

#get what section you are search through
    #ex. title/song title/song, length/time/song length, album, artist
sub searchType {
    print "\nWhat do you want to search by? :";
    my $searchParameter = <STDIN>;
    #chomp removes trailing newlines
    chomp($searchParameter);
        if ($searchParameter eq 'title') {
            print "What song do you want to search for? : ";
            my $title = <STDIN>;
            titleSearch($title);

        } elsif ($searchParameter eq 'time') {
            print "How long do you want the songs to be? : ";
            my $timeframe = <STDIN>;
            timeSearch($timeframe);

        } elsif ($searchParameter eq 'album') {
            print "What album are you searching for? : ";
            my $album = <STDIN>;
            albumSearch($album);

        } elsif ($searchParameter eq 'artist') {
            print "What artist are you looking for? : ";
            my $artist = <STDIN>;
            artistSearch($artist);

        } elsif ($searchParameter eq 'genre') {
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

}

sub timeSearch {

}

sub albumSearch {

}

sub artistSearch {

}

sub genreSearch {

}

#skips the header row
my $dummy = <$fh>;
while(my $row = <$fh>){
  if ($csv->parse($row)) {
    my @vals = $csv->fields();

    foreach(@vals) {
      print "$_\n";
    }
} else {
    warn "Line could not be parsed: $row\n $.";
}
    }

close($fh);
