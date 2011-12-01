#include "integrateFunction.h"

SEXP integrateFunction( SEXP fR, SEXP xR, SEXP wR) {
//
// Integrate function fR using nodes & weights given by x & w
// Assumes fR is vectorized
// Returns a single real number in a NumericVector
//
    using namespace Rcpp ;

    // Parse input to Rcpp types
    Function f(fR);
    NumericVector x(xR), w(wR);
    int n = x.size();

    // Run integration
    NumericVector val(1,0.0);
    NumericVector fx( f(x) );

    int i;
    for (i=0; i<n; i++) {
        val[0] += w[i] * fx[i];
    }

    return val;
}

SEXP integrateFunctionLaplaceApprox(SEXP gR, SEXP muHatR, SEXP sigmaHatR,
                                    SEXP xR, SEXP wR ) {
//
// Integrate function gR using nodes & weights given by x & w
// 
// Assuming that muHatR & sigmaHatR have estimated mean & scale from Laplace
// approximation to desired integrand gR
//
// Using formulation of Liu & Pierce (1994) for enhanced Gauss-Hermite
// integration.
//
// Returns single real number in a NumericVector
//
    using namespace Rcpp ;

    // Parse input to Rcpp types
    Function g(gR);
    NumericVector x(xR), w(wR), muHat(muHatR), sigmaHat(sigmaHatR);
    int n = x.size();

    // Run integration
    NumericVector val(1,0.0);
    double sqrt2    = sqrt(2);
    NumericVector gx( g(muHat[0]+sqrt2*sigmaHat[0]*x) );

    int i;
    for (i=0; i<n; i++) {
        val[0] += w[i] * exp(x[i]*x[i]) * gx[i];
    }

    return val;
}
