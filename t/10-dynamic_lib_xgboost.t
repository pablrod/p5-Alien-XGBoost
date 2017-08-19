#!/usr/bin/env perl -w

use strict;
use warnings;
use utf8;

use Test2::V0;
use Test::Alien;
use Alien::XGBoost;
 
alien_ok 'Alien::XGBoost';
# XGBoost C API lacks XGBVersion o similar
ffi_ok { symbols => ['XGBGetLastError'] }, with_subtest {
  my($ffi) = @_;
  my $last_error = $ffi->function(XGBGetLastError => [] => 'string');
  like '', $last_error->call();
};
 
done_testing;
