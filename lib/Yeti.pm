package Yeti;

use Moose 2.0401;
use MooseX::Types 0.31;
use namespace::clean -except => 'meta'

# ABSTRACT: This does what it does, and it does it well.


use 5.12;

=head1 SYNOPSIS

Quick summary of what the module does.

Perhaps a little code snippet.

    use Yeti;

    my $foo = Yeti->new();
    ...

=head1 EXPORT

A list of functions that can be exported.  You can delete this section
if you don't export anything, such as for a purely object-oriented module.

=head1 SUBROUTINES/METHODS

=head2 function1

=cut

sub function1 {
}

=head2 function2

=cut

sub function2 {
}


=head1 AUTHOR

Pedro Figueiredo, C<< <me at pedrofigueiredo.org> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-yeti at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Yeti>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.


=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Yeti


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker (report bugs here)

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Yeti>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Yeti>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Yeti>

=item * CPAN

L<http://metacpan.org/module/Yeti>

=back


=head1 ACKNOWLEDGEMENTS


=head1 LICENSE AND COPYRIGHT

Copyright 2012 Pedro Figueiredo.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.


=cut

__PACKAGE__->meta->make_immutable;

1; # End of Yeti
