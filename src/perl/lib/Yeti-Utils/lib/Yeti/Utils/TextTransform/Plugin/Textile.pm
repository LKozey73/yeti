package Yeti::Utils::TextTransform::Plugin::Textile;

use strict;
use warnings;

use Text::Textile qw/textile/;

sub convert {
    my $plugin = shift;
    my $self   = shift;
    
    $self->{out} = textile( $self->in );
    
    return 1;
}

45; # end of Yeti::Utils::TextTransform::Plugin::Textile