\name{fastGHQuad-package}
\alias{fastGHQuad-package}
\alias{fastGHQuad}
\docType{package}
\title{
A package for fast, numerically-stable computation of Gauss-Hermite quadrature
rules
}
\description{
This package provides functions to compute Gauss-Hermite quadrature rules very
quickly with a higher degree of numerical stability (tested up to 2000 nodes).

It also provides function for adaptive Gauss-Hermite quadrature, extending
Laplace approximations (as in Liu & Pierce 1994).
}
\details{
\tabular{ll}{
Package: \tab fastGHQuad\cr
Type: \tab Package\cr
License: \tab MIT \cr
LazyLoad: \tab yes\cr
}
}
\author{
Alexander W Blocker

Maintainer: Alexander W Blocker <ablocker@gmail.com>
}
\references{
Golub, G. H. and Welsch, J. H. (1969). Calculation of Gauss Quadrature Rules.
Mathematics of Computation 23 (106): 221-230.

Liu, Q. and Pierce, D. A. (1994). A Note on Gauss-Hermite Quadrature.
Biometrika, 81(3) 624-629.
}
\keyword{ package }
\seealso{
\code{\link{gaussHermiteData}}, \code{\link{aghQuad}}, \code{\link{ghQuad}}
}
\examples{
# Get quadrature rule
rule <- gaussHermiteData(1000)

# Find a normalizing constant
g <- function(x) 1/(1+x^2/10)^(11/2) # t distribution with 10 df
aghQuad(g, 0, 1.1, rule)
# actual is
1/dt(0,10)

# Find an expectation
g <- function(x) x^2*dt(x,10) # t distribution with 10 df
aghQuad(g, 0, 1.1, rule)
# actual is 1.25
}
