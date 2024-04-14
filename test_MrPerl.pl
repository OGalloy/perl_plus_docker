#!/usr/bin/perl -w

use strict;
use warnings;

use lib ".";
use MrPerl;

use Test::More tests => 3;



#my $start = MrPerl::startByName("jovial_bassi");
#is($start, "jovial_bassi", "test: start docker container.");

#my $stop1 = MrPerl::stopByName("jovial_bassi");
#is($stop1, "jovial_bassi", "test: stop docker container.");

my $stop2 = MrPerl::stopByName("jovial_bassi");
is($stop2, "jovial_bassi", "test: stop docker container twice.")

