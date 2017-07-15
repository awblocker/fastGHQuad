#ifndef RCPP_fastGHQuad_H_
#define RCPP_fastGHQuad_H_

#include <R.h>
#include <Rinternals.h>

#ifdef __cplusplus
extern "C" {
#endif

namespace fastGHQuad {

  using namespace Rcpp;

  int gaussHermiteDataDirect(int n, std::vector<double>* x, std::vector<double>* w) { 
    static int(*fun)(int, std::vector<double>*, std::vector<double>*) = NULL;
    if (fun == NULL) {
      Rf_eval(Rf_lang2(Rf_install("loadNamespace"),
                       Rf_ScalarString(Rf_mkChar("fastGHQuad"))),
                       R_GlobalEnv);
      fun = (int(*)(int, std::vector<double>*, std::vector<double>*))
        R_GetCCallable("fastGHQuad","gaussHermiteDataDirect");
    }
    return fun(n, x, w);
  }

  int gaussHermiteDataGolubWelsch(int n, std::vector<double>* x, std::vector<double>* w) {
    static int(*fun)(int, std::vector<double>*, std::vector<double>*) = NULL;
    if (fun == NULL) {
      Rf_eval(Rf_lang2(Rf_install("loadNamespace"),
                       Rf_ScalarString(Rf_mkChar("fastGHQuad"))),
                       R_GlobalEnv);
      fun =  (int(*)(int, std::vector<double>*, std::vector<double>*))
        R_GetCCallable("fastGHQuad","gaussHermiteDataGolubWelsch");
    }
    return fun(n, x, w);
  }
  
}
  
#ifdef __cplusplus
}
#endif

#endif // RCPP_fastGHQuad_H_
