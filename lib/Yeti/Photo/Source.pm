package Yeti::Photo::Source;

# ABSTRACT: The source for a photo in Yeti

use Moose::Role 2.0401;

=head1 SYNOPSIS

Yeti::Photo::Source is a role that must be implemented by all photo sources in Yeti:

  package Yeti::Photo::Source::File;

  use Moose;
  with 'Yeti::Photo::Source';


=head1 METHODS

Classes implementing a Yeti source must provide the following methods.

=head2 get_uri

Returns the URI for the image file.

=cut

requires 'get_uri';

=head2 get_dimensions

Returns an hash reference containing the x and y dimensions (keyed on 'x' and 'y').

=cut

requires 'get_dimensions';

=head2 get_resolution

Returns an hash reference containing the x and y resolutions (keyed on 'xres' and 'yres').

=cut

requires 'get_resolution';


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

1; # End of Yeti::Photo::Source
