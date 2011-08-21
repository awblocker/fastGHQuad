#include "integrateFunction.h"

RcppExport SEXP integrateFunction( SEXP fR, SEXP nR ) {
    return nR;
}


RcppExport SEXP integrateFunction( SEXP fR, SEXP xR, SEXP wR) {
//
// Integrate function fR using nodes & weights given by x & w
// Assumes fR is vectorized
// Returns a single real number in a NumericVector
//
    using namespace Rcpp ;

    // Parse input to Rcpp types
    Function f(fR);
    NumericVector x(xR), w(wR)

    // Run integration
    NumericVector val(1);
    val = sum( w*f(x) );

    return val;
}
