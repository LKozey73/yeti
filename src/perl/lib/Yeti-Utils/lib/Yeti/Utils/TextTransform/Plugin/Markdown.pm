package Yeti::Utils::TextTransform::Plugin::Markdown;

use strict;
use warnings;

use Text::Markdown qw/markdown/;

sub convert {
    my $plugin = shift;
    my $self   = shift;
    
    $self->{out} = markdown( $self->in );
    
    return 1;
}

45; # end of Yeti::Utils::TextTransform::Plugin::Markdown