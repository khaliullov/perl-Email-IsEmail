#!/usr/bin/env perl -T

use FindBin;
use local::lib "$FindBin::Bin/../local";

use 5.006;
use strict;
use warnings;

use Test::More;
use Email::IsEmail;

ok( 1 == Email::IsEmail('prettyandsimple@example.com'), 'prettyandsimple@example.com is valid E-mail' );
ok( 1 == Email::IsEmail('very.common@example.com'), 'very.common@example.com is valid E-mail' );
ok( 1 == Email::IsEmail('disposable.style.email.with+symbol@example.com'), 'disposable.style.email.with+symbol@example.com is valid E-mail' );
ok( 1 == Email::IsEmail('other.email-with-dash@example.com'), 'other.email-with-dash@example.com is valid E-mail' );
ok( 1 == Email::IsEmail('x@example.com'), 'x@example.com@example.com is valid E-mail' );
ok( 1 == Email::IsEmail('"much.more unusual"@example.com'), '"much.more unusual"@example.com is valid E-mail' );
ok( 1 == Email::IsEmail('"very.unusual.@.unusual.com"@example.com'), '"very.unusual.@.unusual.com"@example.com is valid E-mail' );
ok( 1 == Email::IsEmail('"very.(),:;<>[]\".VERY.\"very@\\ \"very\".unusual"@strange.example.com'), '"very.(),:;<>[]\".VERY.\"very@\\ \"very\".unusual"@strange.example.com is valid E-mail' );
ok( 1 == Email::IsEmail('example-indeed@strange-example.com'), 'example-indeed@strange-example.com is valid E-mail' );
ok( 1 == Email::IsEmail('admin@mailserver1'), 'admin@mailserver1 is valid E-mail' );
ok( 1 == Email::IsEmail('#!$%&\'*+-/=?^_`{}|~@example.org'), '#!$%&\'*+-/=?^_`{}|~@example.org is valid E-mail' );
ok( 1 == Email::IsEmail('"()<>[]:,;@\\\\\\"!#$%&\'-/=?^_`{}| ~.a"@example.org'), '"()<>[]:,;@\\\\\\"!#$%&\'-/=?^_`{}| ~.a"@example.org is valid E-mail' );
ok( 1 == Email::IsEmail('" "@example.org'), '" "@example.org is valid E-mail' );
ok( 1 == Email::IsEmail('example@localhost'), 'example@localhost is valid E-mail' );
ok( 1 == Email::IsEmail('example@s.solutions'), 'example@s.solutions is valid E-mail' );
ok( 1 == Email::IsEmail('user@localserver'), 'user@localserver is valid E-mail' );
ok( 1 == Email::IsEmail('user@tt'), 'user@tt is valid E-mail' );
ok( 1 == Email::IsEmail('user@[IPv6:2001:DB8::1]'), 'user@[IPv6:2001:DB8::1] is valid E-mail' );
ok( 1 == Email::IsEmail('test@a123456789012345678901234567890123456789012345678901234567890ab.a123456789012345678901234567890123456789012345678901234567890ab.su'),
   'test@a123456789012345678901234567890123456789012345678901234567890ab.a123456789012345678901234567890123456789012345678901234567890ab.su is valid E-mail' );
ok( 1 == Email::IsEmail('user@[127.0.0.1]'), 'user@[127.0.0.1] is valid E-mail' );
ok( 1 == Email::IsEmail('user@[IPv6:::1]'), 'user@[IPv6:::1] is valid E-mail' );

ok( 1 == Email::IsEmail('jsmith@[192.168.2.1]'), 'jsmith@[192.168.2.1] is valid E-mail' );
ok( 1 == Email::IsEmail('"Abc\@def"@example.com'), '"Abc\@def"@example.com is valid E-mail' );
ok( 1 == Email::IsEmail('"Fred Bloggs"@example.com'), '"Fred Bloggs"@example.com is valid E-mail' );
ok( 1 == Email::IsEmail('"Joe\\Blow"@example.com'), '"Joe\\Blow"@example.com is valid E-mail' );
ok( 1 == Email::IsEmail('"Abc@def"@example.com'), '"Abc@def"@example.com is valid E-mail' );
ok( 1 == Email::IsEmail('customer/department=shipping@example.com'), 'customer/department=shipping@example.com is valid E-mail' );
ok( 1 == Email::IsEmail('$A12345@example.com'), '$A12345@example.com is valid E-mail' );
ok( 1 == Email::IsEmail('!def!xyz%abc@example.com'), '!def!xyz%abc@example.com is valid E-mail' );
ok( 1 == Email::IsEmail('_somename@example.com'), '_somename@example.com is valid E-mail' );

done_testing();
