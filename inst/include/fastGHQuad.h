#ifndef RCPP_fastGHQuad_H_
#define RCPP_fastGHQuad_H_

namespace fastGHQuad {

  using namespace Rcpp;

  inline int gaussHermiteDataDirect(int n, std::vector<double>* x, std::vector<double>* w) { 
    static int(*fun)(int, std::vector<double>*, std::vector<double>*) = NULL;
    if (fun == NULL) fun = (int(*)(int, std::vector<double>*, std::vector<double>*))
      R_GetCCallable("fastGHQuad","gaussHermiteDataDirect");
    return fun(n, x, w);
  }

  inline int gaussHermiteDataGolubWelsch(int n, std::vector<double>* x, std::vector<double>* w) {
    static int(*fun)(int, std::vector<double>*, std::vector<double>*) = NULL;
    if (fun == NULL) fun =  (int(*)(int, std::vector<double>*, std::vector<double>*))
      R_GetCCallable("fastGHQuad","gaussHermiteDataGolubWelsch");
    return fun(n, x, w);
  }
  
}

#endif // RCPP_fastGHQuad_H_GEN_
