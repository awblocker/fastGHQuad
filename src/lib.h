#ifndef _fastGHQuad_LIB_H
#define _fastGHQuad_LIB_H

#include <Rcpp.h>
#include <R_ext/Lapack.h>

/*
 * note : RcppExport is an alias to `extern "C"` defined by Rcpp.
 *
 * It gives C calling convention to the rcpp_hello_world function so that 
 * it can be called from .Call in R. Otherwise, the C++ compiler mangles the 
 * name of the function and .Call can't find it.
 *
 * It is only useful to use RcppExport when the function is intended to be called
 * by .Call. See the thread http://thread.gmane.org/gmane.comp.lang.r.rcpp/649/focus=672
 * on Rcpp-devel for a misuse of RcppExport
 */

double hermitePoly( double x, int n );
RcppExport SEXP evalHermitePoly( SEXP xR, SEXP nR );

void findPolyRoots( double* c, int n, double* r );
RcppExport SEXP findPolyRoots( SEXP cR );

void hermitePolyCoef( int n, double* c );
RcppExport SEXP hermitePolyCoef( SEXP nR );

void buildHermiteJacobi( int n, double* D, double* E );
void quadInfoGolubWelsch( int n, double* D, double* E, double mu0,
                          double* x, double* w );

int gaussHermiteDataDirect( int n, double* x, double* w );
int gaussHermiteData( int n, double* x, double* w );
RcppExport SEXP gaussHermiteData( SEXP nR );


#endif
