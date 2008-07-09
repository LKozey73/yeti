package Yeti::Utils::Photo;

use warnings;
use strict;

=head1 NAME

Yeti::Utils::Photo - Working with Photos in Yeti

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

This module provides a way to represent a photo in Yeti, and several
functions to manipulate photo information.

    use Yeti::Utils::Photo;

    my $photo = Yeti::Utils::Photo->new( {
        source   => $uri,
        metadata => \@metadata,
        author   => $author,
        tags     => \@tags,
        sets     => \@sets, } );

=cut

use base qw/ Class::Accessor /;
Yeti::Utils::Photo->mk_accessors( qw/
    source
    display_large
    display_med
    date
    metadata
    author
    tags
    sets/ );

=head1 FUNCTIONS

=head2 new

Provided by Class:Accessor. Create a new Yeti::Utils::Photo object and
optionally set some/all arguments. See SYNOPSIS.

=head2 source

=head2 metadata

=head2 author

=head2 tags

=head2 sets

=head2 display_large

=cut

use Imager;

sub display_large {
    my $self = shift;
    
    my $data = $self->_get_source_data;
}

=head2 display_med

=cut

sub display_med {
}

=head2 thumbnail

=cut

sub thumbnail {
    
}

=head2 date

=cut

sub date {
    my $self = shift;
    my $date = @_;
    
    if ( @_ ) {
        # date validation
        if ( INVALID ) {
            carp "$date doesn't look like a valid date.";
            return;
        }
    }
    
    return $self->_date_accessor( @_ );
}

use URI::Heuristic qw/ uf_uri /;

sub _get_source_data {
    my $self = shift;
    
    my $source = $self->source;
    my $uri = uf_uri( $source );
    if ( $uri ) {
        my $scheme = $uri->scheme;
        my $path   = $uri->path;
        if ( $scheme eq "http" or $scheme eq "ftp" ) {
            require LWP::UserAgent;
            my $ua = LWP::UserAgent->new;
            $ua->timeout( 5 );
            $ua->env_proxy;
            $ua->agent( "yeti/$Yeti::Utils::VERSION" );
            
        } elsif ( $scheme eq "file" ) {
            
        } else {
            carp "unknown scheme.";
            return;
        }
    } else {
        carp "invalid source.";
        return;
    }
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

    perldoc Yeti::Utils::Photo

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

45; # End of Yeti::Utils::Photo
