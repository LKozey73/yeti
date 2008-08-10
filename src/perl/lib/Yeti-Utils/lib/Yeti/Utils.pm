package Yeti::Utils;

use warnings;
use strict;

=head1 NAME

Yeti::Utils - Building blocks for Yeti

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

This module creates a Yeti::Utils object providing several utility methods to
deal with a Yeti instance:

    use Yeti;
    use Yeti::Utils;

    # get a Yeti object somehow
    my $foo = Yeti::Utils->new( { yeti => $instance } );
    ...

=head1 METHODS

=head2 new

Create a Yeti::Utils object, based on a Yeti instance.

    my $foo = Yeti::Utils->new( { yeti => $instance } );

=cut

sub new {
    my $proto = shift;
    my $class = ref( $proto ) || $proto;

    my $self = shift;
    
    return bless $self, $class;
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

    perldoc Yeti::Utils

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


=head1 COPYRIGHT & LICENSE

Copyright 2008 Pedro Figueiredo, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

=cut

45; # End of Yeti::Utils
