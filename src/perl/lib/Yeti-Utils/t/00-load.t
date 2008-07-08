#!perl -T

use Test::More tests => 1;

BEGIN {
	use_ok( 'Yeti::Utils' );
}

diag( "Testing Yeti::Utils $Yeti::Utils::VERSION, Perl $], $^X" );
