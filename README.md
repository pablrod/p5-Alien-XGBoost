# NAME

Alien::XGBoost - Alien package to find, and build if necessary XGBoost dynamic library

# VERSION

version 0.05

# SYNOPSIS

```perl
use Alien::XGBoost;
use FFI::Platypus;

my $ffi = FFI::Platypus->new;
$ffi->lib(Alien::XGBoost->dynamic_libs);
$ffi->attach(XGBGetLastError => [] => 'string');
my $error = XGBGetLastError();
```

# DESCRIPTION

Alien package to find, and build if necessary XGBoost dynamic library.

[![Build Status](https://travis-ci.org/pablrod/p5-Alien-XGBoost.png?branch=master)](https://travis-ci.org/pablrod/p5-Alien-XGBoost)
[![Build status](https://ci.appveyor.com/api/projects/status/nl46f64tjiyaveql/branch/master?svg=true)](https://ci.appveyor.com/project/pablrod/p5-alien-xgboost/branch/master)

This module is to be used by other modules that need the XGBoost
dynamic library available, indeed I've made this for [AI::XGBoost](https://metacpan.org/pod/AI::XGBoost).

If you only want to use XGBoost in your perl programns, just use
[AI::XGBoost](https://metacpan.org/pod/AI::XGBoost) and forget this module. If you want to make other XGBoost
wrappers or use from XS then continue reading.

By now there is no support for compiling your modules against XGBoost.
Just using the dynamic library via [FFI::Platypus](https://metacpan.org/pod/FFI::Platypus) or [NativeCall](https://metacpan.org/pod/NativeCall).

## Troubleshooting

The "instructions" to build and install as a module are in the [alienfile](https://metacpan.org/pod/alienfile).

Lots of things can go wrong, and in that case, I'm glad to help, just open an
issue [https://github.com/pablrod/p5-Alien-XGBoost](https://github.com/pablrod/p5-Alien-XGBoost).

But this information could be useful:

- Downloading

    XGBoost doesn't make releases often [https://github.com/dmlc/xgboost/releases](https://github.com/dmlc/xgboost/releases) (last one from 2016)
    So I'm cloning branch master.

    XGBoost uses git modules, so I need a recursive clone.

- Installing

    XGBoost cmake doesn't provide a install target for the generated Makefiles, so this module
    is copying the dynamic library and the xgboost command to the module share dir

    If installation is succesfull you can query the module [Alien::XGBoost](https://metacpan.org/pod/Alien::XGBoost) to know where is 
    the dynamic library and command in your system

# SEE ALSO

- [https://github.com/dmlc/xgboost](https://github.com/dmlc/xgboost)
- [Alien::Build](https://metacpan.org/pod/Alien::Build)
- [alienfile](https://metacpan.org/pod/alienfile)
- [AI::XGBoost](https://metacpan.org/pod/AI::XGBoost)
- [FFI::Platypus](https://metacpan.org/pod/FFI::Platypus)
- [NativeCall](https://metacpan.org/pod/NativeCall)

# ACKNOWLEDGEMENTS

Thanks to Graham Ollis <plicease@cpan.org> for all the support and making so many great modules
that make easier to make Alien's:

- [Alien::Build](https://metacpan.org/pod/Alien::Build)
- [Alien::Build::Plugin::Build::CMake](https://metacpan.org/pod/Alien::Build::Plugin::Build::CMake)
- [FFI::CheckLib](https://metacpan.org/pod/FFI::CheckLib)

# AUTHOR

Pablo Rodríguez González <pablo.rodriguez.gonzalez@gmail.com>

# COPYRIGHT AND LICENSE

Copyright (c) 2017 by Pablo Rodríguez González.
