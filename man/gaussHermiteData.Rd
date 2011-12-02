\name{gaussHermiteData}
\alias{gaussHermiteData}
\title{
Compute Gauss-Hermite quadrature rule
}

\description{
Computes Gauss-Hermite quadrature rule of requested order using Golub-Welsch
algorithm. Returns result in list consisting of two entries: x, for nodes, and
w, for quadrature weights. This is very fast and numerically stable, using the
Golub-Welsch algorithm with specialized eigendecomposition (symmetric
tridiagonal) LAPACK routines. It can handle quadrature of order 1000+.
}

\usage{
gaussHermiteData(n)
}

\arguments{
\item{n}{Order of Gauss-Hermite rule to compute (number of nodes)}
}

\details{
This function computes the Gauss-Hermite rule of order n using the Golub-Welsch
algorithm. All of the actual computation is performed in C/C++ and FORTRAN (via
LAPACK). It is numerically-stable and extremely memory-efficient for rules of
order 1000+.
}

\value{
A list containing:
\item{x}{the n node positions for the requested rule}
\item{w}{the w quadrature weights for the requested rule}
}

\references{
Golub, G. H. and Welsch, J. H. (1969). Calculation of Gauss Quadrature Rules.
Mathematics of Computation 23 (106): 221–230

Liu, Q. and Pierce, D. A. (1994). A Note on Gauss-Hermite Quadrature.
Biometrika, 81(3) 624-629.
}

\author{Alexander W Blocker \email{ablocker@gmail.com}}

\seealso{\code{\link{aghQuad}}, \code{\link{ghQuad}}}



\keyword{math}
