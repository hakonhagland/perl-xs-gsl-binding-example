use 5.030000;
use strict;
use warnings;
use utf8;
use ExtUtils::MakeMaker;

my $libdir = '/opt/gsl/gsl-2.8';

WriteMakefile(
  NAME          => 'My::Bessel',
  VERSION_FROM  => 'lib/My/Bessel.pm',
  PREREQ_PM     => { 'ExtUtils::MakeMaker' => '7.12' },
  ABSTRACT_FROM => 'lib/My/Bessel.pm',
  AUTHOR        => 'Håkon Hægland <hakon.hagland@gmail.com>',
  OPTIMIZE      => '',
  LICENSE       => 'perl',
  LIBS          => ['-L' . $libdir . '/lib -lgsl -lgslcblas'],
  DEFINE        => '',
  INC           => '-I' . $libdir . '/include',
);

