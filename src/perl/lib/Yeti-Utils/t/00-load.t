#!perl -T

use Test::More tests => 3;

BEGIN {
	use_ok( 'Yeti::Utils' );
	use_ok( 'Yeti::Utils::Config' );
	use_ok( 'Yeti::Utils::Photo' );
}

diag( "Testing Yeti::Utils $Yeti::Utils::VERSION, Perl $], $^X" );
