#ifndef _INTEGRATE_FUNCTION_LIB_H
#define _INTEGRATE_FUNCTION_LIB_H

#include "lib.h"

RcppExport SEXP integrateFunction( SEXP fR, SEXP nR );
RcppExport SEXP integrateFunction( SEXP fR, SEXP xR, SEXP wR);

#endif
