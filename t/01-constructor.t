#!perl

use Test::More 0.98 tests => 12;

###############################
#  Yeti::Photo::Source::File  #
###############################
#  Geometry: 500x343+0+0
#  Resolution: 72x72
my $file_name = 't/photos/392090759_5bf90528bb.jpg';

use Yeti::Photo::Source::File;

my $source = Yeti::Photo::Source::File->new( file => $file_name );
isa_ok( $source, 'Yeti::Photo::Source::File' );
can_ok( $source, 'get_uri' );
can_ok( $source, 'get_dimensions' );
can_ok( $source, 'get_resolution' );

# should retain values
is( $source->file, $file_name );
my $uri = $source->get_uri;
isa_ok( $uri, 'URI::file' );
is( $uri->path, $file_name );
is( $uri->scheme, undef );

# should populate with correct values
is( $source->get_dimensions->{'x'}, 500 );
is( $source->get_dimensions->{'y'}, 343 );
is( $source->get_resolution->{'xres'}, 72 );
is( $source->get_resolution->{'yres'}, 72 );
