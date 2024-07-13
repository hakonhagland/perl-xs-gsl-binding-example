use 5.030000;
use strict;
use warnings;
use utf8;
use ExtUtils::MakeMaker;

# If @ARGV == 1, assume it is the path to the GSL installation directory
my $libs = '-lgsl -lgslcblas';
my $inc = '-I/usr/local/include';
if (@ARGV == 1) {
    my $gsl_dir = $ARGV[0];
    $gsl_dir =~ s/\/$//;
    $libs = '-L' . $gsl_dir . '/lib ' . $libs;
    $inc = '-I' . $gsl_dir . '/include ';
}
say "Using LIBS: $libs";
say "Using INC : $inc";

WriteMakefile(
  NAME          => 'My::Bessel',
  VERSION_FROM  => 'lib/My/Bessel.pm',
  PREREQ_PM     => { 'ExtUtils::MakeMaker' => '7.12' },
  ABSTRACT_FROM => 'lib/My/Bessel.pm',
  AUTHOR        => 'Håkon Hægland <hakon.hagland@gmail.com>',
  OPTIMIZE      => '',
  LICENSE       => 'perl',
  LIBS          => [$libs],
  DEFINE        => '',
  INC           => $inc,
);

