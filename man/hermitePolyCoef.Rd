\name{hermitePolyCoef}
\alias{hermitePolyCoef}
\title{
Get coefficient of Hermite polynomial
}

\description{
Calculate coefficients of Hermite polynomial using recursion relation. This
function is provided for demonstration/teaching purposes; this method is not
used by gaussHermiteData. It is numerically unstable for high-degree
polynomials.
}

\usage{
hermitePolyCoef(n)
}

\arguments{
\item{n}{Degree of Hermite polynomial to compute}
}

\value{
Vector of (n+1) coefficients from requested polynomial
}

\author{Alexander W Blocker \email{ablocker@gmail.com}}

\seealso{
\code{\link{gaussHermiteData}}, \code{\link{aghQuad}}, \code{\link{ghQuad}}
}

\keyword{math}
