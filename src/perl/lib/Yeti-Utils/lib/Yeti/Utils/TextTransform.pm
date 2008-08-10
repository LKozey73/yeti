package Yeti::Utils::TextTransform;

use strict;
use warnings;

use Module::Pluggable require => 1;

use Carp;

use base qw/ Class::Accessor::Fast /;
__PACKAGE__->mk_accessors( qw/ filter in out / );

=head1 NAME

Yeti::Utils::TextTranform - Change text within Yeti

=head1 VERSION

Version 0.02

=cut

our $VERSION = "0.02";

=head1 SYNOPSIS

Given a piece of text in Yeti, turn it into a pre-defined format.

    use Yeti::Utils::TextTransform;

    my $text   = Yeti::Utils::TextTransform->new( { filter => "Markdown" } );
    $text->in( $fragment );
    my $output = $text->convert;

=head1 METHODS

=head2 new

Create a Yeti::Utils::TextTransform object, selecting which filter to use.

    my $text   = Yeti::Utils::TextTransform->new( { filter => "Markdown" } );

=cut

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

=head1 AUTHOR

Pedro Figueiredo, C<< <me at pedrofigueiredo.org> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-yeti-utils at
rt.cpan.org>, or through the web interface at
L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Yeti-Utils>. I will be
notified, and then you'll automatically be notified of progress on your bug
as I make changes.

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Yeti::Utils::TextTransform

You can also look for information at:

=over 4

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Yeti-Utils>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Yeti-Utils>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Yeti-Utils>

=item * Search CPAN

L<http://search.cpan.org/dist/Yeti-Utils>

=back

=head1 ACKNOWLEDGEMENTS

=over 4

=item * John Gruber, for Markdown

L<http://daringfireball.net/projects/markdown/>

=item * Tomas Doran, for Text::Markdown

L<http://search.cpan.org/dist/Text-Markdown/>

=item * Dean Allen and Alex Shiels, for Textile

L<http://textile.thresholdstate.com/>

=item * Brad Choate, for Text::Textile

L<http://search.cpan.org/dist/Text-Textile/>

=back

=head1 COPYRIGHT & LICENSE

Copyright 2008 Pedro Figueiredo, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

=cut

45; # end of Yeti::Utils::TextTransform
