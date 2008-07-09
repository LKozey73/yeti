#!perl -T

use strict;

use Test::More tests => 1;

use Yeti::Utils::Photo;

my $img = Yeti::Utils::Photo->new();
isa_ok( $img, "Yeti::Utils::Photo", "correct type" );
