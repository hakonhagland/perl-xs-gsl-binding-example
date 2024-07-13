#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"
#include "ppport.h"

#include <stdio.h>
#include <gsl/gsl_sf_bessel.h>

MODULE = My::Bessel  PACKAGE = My::Bessel
PROTOTYPES: DISABLE

void
sf_bessel_J0()
  CODE:
    double x = 5.0;
    double y = gsl_sf_bessel_J0 (x);
    printf ("J0(%g) = %.18e\n", x, y);
