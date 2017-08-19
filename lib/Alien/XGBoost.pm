package Alien::XGBoost;
use strict;
use warnings;

use base qw( Alien::Base );

# VERSION

# ABSTRACT: Alien package to find, and build if necessary XGBoost library

=encoding utf-8

=head1 DESCRIPTION

Alien package to find, and build if necessary XGBoost library.

This is a first initial version, and I'm still learning how
to build xgboost using L<Alien::Build> with an L<alienfile>.

Problems:

=over 4

=item Downloading

XGBoost doesn't make releases often L<https://github.com/dmlc/xgboost/releases> (last one from 2016)
So I'm cloning branch master.

XGBoost uses git modules, so I need a recursive clone.

=item Installing

XGBoost cmake doesn't provide a install target for the generated Makefiles

=back

=cut

1;
