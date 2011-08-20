#include "test.h"

SEXP test(){
    using namespace Rcpp ;
    
    CharacterVector x = CharacterVector::create( "gauss", "quad" )  ;
    NumericVector y   = NumericVector::create( -1, 0, 1 ) ;
    List z            = List::create( x, y ) ;
    
    return z ;
}
