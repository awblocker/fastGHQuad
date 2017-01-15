#include "lib.h"

extern "C" {

  void R_init_fastGHQuad(DllInfo *info) {
    R_RegisterCCallable("fastGHQuad", "gaussHermiteDataDirect",
                        (DL_FUNC) &gaussHermiteDataDirect);
    R_RegisterCCallable("fastGHQuad", "gaussHermiteDataGolubWelsch",
                        (DL_FUNC) &gaussHermiteDataGolubWelsch);
  }
  
}