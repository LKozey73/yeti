#!perl -T

use strict;

use Test::More tests => 1;

use Yeti::Utils::Config;

my $cfg = Yeti::Utils::Config->new();
isa_ok( $cfg, "Yeti::Utils::Config", "correct type" );
