\name{aghQuad}
\alias{aghQuad}
\title{
Adaptive Gauss-Hermite quadrature using Laplace approximation
}

\description{
}

\usage{
aghQuad(g, muHat, sigmaHat, rule, ...)
}

\arguments{
\item{g}{Function to integrate with respect to first (scalar) argument}
\item{muHat}{Mode for Laplace approximation}
\item{sigmaHat}{Scale for Laplace approximation}
\item{rule}{Gauss-Hermite quadrature rule to use, as produced by
\code{\link{gaussHermiteData}}}
}

\details{
}

\value{

}

\references{
Golub, G. H. and Welsch, J. H. (1969). Calculation of Gauss Quadrature Rules.
Mathematics of Computation 23 (106): 221–230

Liu, Q. and Pierce, D. A. (1994). A Note on Gauss-Hermite Quadrature.
Biometrika, 81(3) 624-629.
}

\author{Alexander W Blocker \email{ablocker@gmail.com}}

\seealso{\code{\link{gaussHermiteData}}, \code{\link{ghQuad}}}



\keyword{math}
