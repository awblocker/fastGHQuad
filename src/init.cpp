#include "lib.h"

extern "C" {

  void R_init_fastGHQuad(DllInfo *info) {
    R_registerRoutines(info, NULL, NULL, NULL, NULL);
    R_useDynamicSymbols(info, TRUE);
    R_RegisterCCallable("fastGHQuad", "gaussHermiteDataDirect",
                        (DL_FUNC) &gaussHermiteDataDirect);
    R_RegisterCCallable("fastGHQuad", "gaussHermiteDataGolubWelsch",
                        (DL_FUNC) &gaussHermiteDataGolubWelsch);
  }
  
}