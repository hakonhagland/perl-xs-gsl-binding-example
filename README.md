# perl-xs-gsl-binding-example

To build the example, follow the examples below. If you have installed GSL in a non-standard
location you can supply that as an argument to `Makefile.PL`:

## Linux

```
$ perl Makefile.PL /opt/gsl/gsl-2.8/
$ make
$ p.pl  # Run test script
```

## Windows (Strawberry perl, from PowerShell)

```
$ perl Makefile.PL C:/GSL/gsl-2.8/
$ gmake
$ perl p.pl  # Run test script
```
