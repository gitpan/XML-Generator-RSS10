#!/usr/bin/perl -w

use Test::More tests => 1;

BEGIN
{
    use_ok( 'XML::Generator::RSS10' );
}

diag( "Testing XML::Generator::RSS10 $XML::Generator::RSS10::VERSION" );
