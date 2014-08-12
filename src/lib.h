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
 * It is only useful to use RcppExport when the function is intended to be
 * called by .Call. See the thread
 * http://thread.gmane.org/gmane.comp.lang.r.rcpp/649/focus=672
 * on Rcpp-devel for a misuse of RcppExport
 */

double hermitePoly(double x, int n);
RcppExport SEXP evalHermitePoly(SEXP xR, SEXP nR);

void findPolyRoots(const std::vector<double>& c, int n, std::vector<double>* r);
RcppExport SEXP findPolyRoots(SEXP cR);

void hermitePolyCoef(int n, std::vector<double>* c);
RcppExport SEXP hermitePolyCoef(SEXP nR);

void buildHermiteJacobi(int n, std::vector<double>* D, std::vector<double> E);
void quadInfoGolubWelsch(int n, std::vector<double>& D, std::vector<double>& E,
                         double mu0, std::vector<double>& x,
                         std::vector<double>& w);

int gaussHermiteDataDirect(int n, std::vector<double>& x,
                           std::vector<double>& w);
int gaussHermiteData(int n, std::vector<double>& x, std::vector<double>& w);
RcppExport SEXP gaussHermiteData(SEXP nR);

#endif
