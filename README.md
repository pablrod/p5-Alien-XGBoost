# NAME

AI::XGBoost - Alien package to find, and build if necessary XGBoost library

# VERSION

version 0.01

# DESCRIPTION

Alien package to find, and build if necessary XGBoost library.

This is a first initial version, and I'm still learning how
to build xgboost using [Alien::Build](https://metacpan.org/pod/Alien::Build) with an [alienfile](https://metacpan.org/pod/alienfile).

Problems:

- Downloading

    XGBoost doesn't make releases often [https://github.com/dmlc/xgboost/releases](https://github.com/dmlc/xgboost/releases) (last one from 2016)
    So I'm cloning branch master.

    XGBoost uses git modules, so I need a recursive clone.

- Installing

    XGBoost cmake doesn't provide a install target for the generated Makefiles

# AUTHOR

Pablo Rodríguez González <pablo.rodriguez.gonzalez@gmail.com>

# COPYRIGHT AND LICENSE

Copyright (c) 2017 by Pablo Rodríguez González.
