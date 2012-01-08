package Yeti::Photo::Source::File;

# ABSTRACT: An implementation of a file-based source.

use Moose 2.0401;
with 'Yeti::Photo::Source';

use MooseX::Types::URI 0.03 qw( FileUri );
use MooseX::Types::Moose 0.31 qw( Str Int Num HashRef );

use namespace::autoclean 0.12;

use Image::ExifTool 8.65;
use Readonly 1.03;

=head1 SYNOPSIS

A file-based source for Yeti, implementing the Yeti::Photo::Source interface:

  use Yeti::Photo::Source::File;

  my $image = Yeti::Photo::Source::File->new( file => 'photos/testshot.jpg' );
  my $uri   = $image->get_uri;


=head1 FIELDS

=head2 file

The file name of the source image.

=cut

has 'file' => (
  is       => 'ro',
  isa      => Str,
  required => 1,
);

has '_x' => (
  is         => 'ro',
  isa        => Int,
  lazy_build => 1,
);

has '_y' => (
  is         => 'ro',
  isa        => Int,
  lazy_build => 1,
);

has '_xres' => (
  is         => 'ro',
  isa        => Num,
  lazy_build => 1,
);

has '_yres' => (
  is         => 'ro',
  isa        => Num,
  lazy_build => 1,
);

has '_uri' => (
  is         => 'ro',
  isa        => FileUri,
  coerce     => 1,
  lazy_build => 1,
);

has '_exiftool' => (
  is      => 'ro',
  isa     => 'Image::ExifTool',
  lazy    => 1,
  default => sub { Image::ExifTool->new },
);

has '_info' => (
  is      => 'ro',
  isa     => HashRef,
  lazy    => 1,
  default => sub { $_[0]->_exiftool->ImageInfo( $_[0]->_uri->path ) },
);

=head1 METHODS

=head2 get_uri

Returns the URI::file object referencing the file.

=cut

sub get_uri {
  my $self = shift;

  return $self->_uri;
}

=head2 get_dimensions

Returns the x and y dimensions as a hash reference keyed on 'x' and 'y'.

=cut

sub get_dimensions {
  my $self = shift;

  return { 'x' => $self->_x, 'y' => $self->_y };
}

=head2 get_resolution

Returns the x and y resolutions as a hash reference keyed on 'xres' and 'yres'.

=cut

sub get_resolution {
  my $self = shift;

  return { 'xres' => $self->_xres, 'yres' => $self->_yres };
}

Readonly::Scalar my $XTAG => 'ImageWidth';
sub _build__x {
  my $self = shift;

  return $self->_info->{$XTAG};
}

Readonly::Scalar my $YTAG => 'ImageHeight';
sub _build__y {
  my $self = shift;

  return $self->_info->{$YTAG};
}

Readonly::Scalar my $XRESTAG => 'XResolution';
sub _build__xres {
  my $self = shift;

  return $self->_info->{$XRESTAG};
}

Readonly::Scalar my $YRESTAG => 'YResolution';
sub _build__yres {
  my $self = shift;

  return $self->_info->{$YRESTAG};
}

sub _build__uri {
  my $self = shift;

  return $self->file;
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

1; # End of Yeti::Photo::Source::File
