#!/usr/bin/perl -w

use strict;
use warnings;

use lib ".";
use MrPerl;

use Test::More tests => 3;

my $containerName = "jovial_bassi";

my $start = MrPerl::startByName("jovial_bassi");
is($start, $containerName, "test: start docker container.");

my $inspectName = MrPerl::inspect($containerName, "Name");
is($inspectName, $containerName, "test 'docker inspect.");

my $stop1 = MrPerl::stopByName("jovial_bassi");
is($stop1, $containerName, "test: stop docker container.");

my $stop2 = MrPerl::stopByName("jovial_bassi");
is($stop2, $containerName, "test: stop docker container twice.")

