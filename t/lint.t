#!/usr/bin/env perl

use Test::Perl::Critic ( -exclude => ['OTRS'] );


all_critic_ok('lib');
