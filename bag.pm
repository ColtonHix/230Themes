package bag;
use strict;
use warnings;

sub new {
	my $type = shift;
	my @parm = @_;
	my $this = {};
	$this->{'Brand'} = $parm[0];
	$this->{'Color'} = $parm[1];
	bless $this, $type;
	return $this;
}

sub details {
	my $this = shift;
	#print $this;
	print "I am a $this->{'Color'} $this->{'Brand'} bag\n";
}

sub modify {
	my $this = shift;
	my %parm = @_;
	#print $parm{'Brand'};
	$this->{'Brand'} = $parm{'Brand'};
	$this->{'Color'} = $parm{'Color'};
}

1;
