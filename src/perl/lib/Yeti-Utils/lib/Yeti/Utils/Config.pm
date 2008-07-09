package Yeti::Utils::Config;

use warnings;
use strict;

=head1 NAME

Yeti::Utils::Config - Manipulate Yeti's configuration

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

This module parses and writes Yeti configurations.

    use Yeti::Utils::Config;

    my $config = Yeti::Utils::Config->parse( $file );
    my $datadir = $config->datadir;

    my $config = Yeti::Utils::Config->new();
    ...
    $config->write;

See the rest of this document for all functions and their usage.

=head1 FUNCTIONS

=head2 new

=cut

sub new {
}

=head2 parse

=cut

sub parse {
    
}

=head2 write

=cut

sub write {
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

    perldoc Yeti::Utils::Config

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

45; # End of Yeti::Utils:Config
