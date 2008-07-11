package Yeti::Utils::TextTransform;

use strict;
use warnings;

use Module::Pluggable require => 1;

sub new {
    my $proto  = shift;
    my $class  = ref( $proto ) || $proto;
    my $filter = shift;
    
    my $self = { filter => $filter, in => "", out => "", };
    
    return bless $self, $class;
}

sub filter {
    my $self       = shift;
    my ( $filter ) = @_;
    
    if ( @_ ) {
        $self->{filter} = $filter;
    }
    
    return $self->{filter};
}

sub in {
    my $self     = shift;
    my ( $text ) = @_;
    
    if ( @_ ) {
        $self->{in} = $text;
    }
    
    return $self->{in};
}

sub out {
    my $self = shift;
    
    return $self->{out};
}

sub convert {
    my $self = shift;
    
    for my $plugin ( $self->plugins ) {
        ( my $filter = $plugin ) =~ s/.*:://;
        next unless $self->filter eq $filter;
        next unless $plugin->can( "convert" );
        last if     $plugin->convert( $self );
    }
    
    return 1;
}

45; # end of Yeti::Utils::TextTransform
