package Yeti::Utils::TextTransform::Plugin::Textile;

use strict;
use warnings;

use Text::Textile qw/textile/;

=head1 NAME

Yeti::Utils::TextTranform::Textile - Textile for Yeti::Utils::TextTransform 

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

This is to be used internally by Yeti::Utils::TextTransform.

=cut

sub convert {
    my $plugin = shift;
    my $self   = shift;
    
    $self->{out} = textile( $self->in );
    
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

45; # end of Yeti::Utils::TextTransform::Plugin::Textile