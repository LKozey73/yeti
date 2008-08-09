package Yeti::Utils::TextTransform;

use strict;
use warnings;

use Module::Pluggable require => 1;

use Carp;

use base qw/ Class::Accessor::Fast /;
__PACKAGE__->mk_accessors( qw/ filter in out / );

our $VERSION = "0.02";

sub new {
    my $proto  = shift;
    my $class  = ref( $proto ) || $proto;
    my $self   = $class->SUPER::new( @_ );
    
    croak "no filter defined." unless $self->filter;
    
    return $self;
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
