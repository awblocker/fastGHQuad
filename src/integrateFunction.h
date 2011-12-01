#ifndef _INTEGRATE_FUNCTION_LIB_H
#define _INTEGRATE_FUNCTION_LIB_H

#include "lib.h"

RcppExport SEXP integrateFunction( SEXP fR, SEXP xR, SEXP wR );

RcppExport SEXP integrateFunctionLaplaceApprox( SEXP fR,
        SEXP muHatR, SEXP sigmaHatR,
        SEXP xR, SEXP wR );

#endif
