\name{aghQuad}
\alias{aghQuad}
\title{
Adaptive Gauss-Hermite quadrature using Laplace approximation
}

\description{
Convenience function for integration of a scalar function g based upon its
Laplace approximation.
}

\usage{
aghQuad(g, muHat, sigmaHat, rule, ...)
}

\arguments{
\item{g}{Function to integrate with respect to first (scalar) argument}
\item{muHat}{Mode for Laplace approximation}
\item{sigmaHat}{Scale for Laplace approximation (\code{sqrt(-1/H)}, where H is
the second derivative of g at muHat)}
\item{rule}{Gauss-Hermite quadrature rule to use, as produced by
\code{\link{gaussHermiteData}}}
\item{...}{Additional arguments for g}
}

\details{
This function approximates
\deqn{\int_{-\infty}^{\infty} g(x) \, dx}{
      integral( g(x), -Inf, Inf)}
using the method of Liu & Pierce (1994). This technique uses a Gaussian
approximation of g (or the distribution component of g, if an expectation is
desired) to "focus" quadrature around the high-density region of the
distribution. Formally, it evaluates:
\deqn{ \sqrt{2} \hat{\sigma} \sum_i w_i \exp(x_i^2) g(\hat{\mu} + \sqrt{2}
\hat{\sigma} x_i) }{
sqrt(2) * sigmaHat * sum( w * exp(x^2) * g(muHat + sqrt(2) * sigmaHat * x))
}
where x and w come from the given rule.

This method can, in many cases (where the Gaussian approximation is reasonably
good), achieve better results with 10-100 quadrature points than with 1e6 or
more draws for Monte Carlo integration. It is particularly useful for obtaining
marginal likelihoods (or posteriors) in hierarchical and multilevel models ---
where conditional independence allows for unidimensional integration, adaptive
Gauss-Hermite quadrature is often extremely effective.
}

\value{
Numeric (scalar) with approximation integral of g from -Inf to Inf.
}

\examples{
# Get quadrature rules
rule10  <- gaussHermiteData(10)
rule100 <- gaussHermiteData(100)

# Estimating normalizing constants
g <- function(x) 1/(1+x^2/10)^(11/2) # t distribution with 10 df
aghQuad(g, 0, 1.1,  rule10)
aghQuad(g, 0, 1.1,  rule100)
# actual is
1/dt(0,10)

# Can work well even when the approximation is not exact
g <- function(x) exp(-abs(x)) # Laplace distribution
aghQuad(g, 0, 2,  rule10)
aghQuad(g, 0, 2,  rule100)
# actual is 2

# Estimating expectations
# Variances for the previous two distributions
g <- function(x) x^2*dt(x,10) # t distribution with 10 df
aghQuad(g, 0, 1.1,  rule10)
aghQuad(g, 0, 1.1,  rule100)
# actual is 1.25

# Can work well even when the approximation is not exact
g <- function(x) x^2*exp(-abs(x))/2 # Laplace distribution
aghQuad(g, 0, 2,  rule10)
aghQuad(g, 0, 2,  rule100)
# actual is 2

}

\references{
Liu, Q. and Pierce, D. A. (1994). A Note on Gauss-Hermite Quadrature.
Biometrika, 81(3) 624-629.
}

\author{Alexander W Blocker \email{ablocker@gmail.com}}

\seealso{\code{\link{gaussHermiteData}}, \code{\link{ghQuad}}}



\keyword{math}
