#!/usr/bin/env perl

use FindBin;
use local::lib "$FindBin::Bin/../local";

use 5.006;
use strict;
use warnings;

use Test::More;


plan tests => 1;

BEGIN {
    use_ok( 'Email::IsEmail' ) || print "Bail out!\n";
}

diag( "Testing Email::IsEmail $Email::IsEmail::VERSION, Perl $], $^X" );
