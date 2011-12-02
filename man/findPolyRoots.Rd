\name{findPolyRoots}
\alias{findPolyRoots}
\title{
Find real parts of roots of polynomial
}

\description{
Finds real parts of polynomial's roots via eigendecomposition of companion
matrix.
This method is not used by gaussHermiteData.
Only the real parts of each root are retained; this can be useful if the
polynomial is known a priori to have all roots real.
}

\usage{
findPolyRoots(c)
}

\arguments{
\item{c}{Coefficients of polynomial}
}

\value{
Numeric vector containing the real parts of the roots of the polynomial defined
by c
}

\author{Alexander W Blocker \email{ablocker@gmail.com}}

\seealso{
\code{\link{gaussHermiteData}}, \code{\link{aghQuad}}, \code{\link{ghQuad}}
}

\keyword{math}
