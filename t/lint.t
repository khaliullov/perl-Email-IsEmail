#!/usr/bin/env perl

use FindBin;
use local::lib "$FindBin::Bin/../local";

use Test::Perl::Critic;


all_critic_ok('lib');
