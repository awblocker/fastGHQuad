# Fast Gauss-Hermite quadrature

[![Build Status](https://www.travis-ci.com/awblocker/fastGHQuad.svg?branch=master)](https://www.travis-ci.com/awblocker/fastGHQuad)
[![CRAN Status Badge](http://www.r-pkg.org/badges/version/fastGHQuad)](https://cran.r-project.org/package=fastGHQuad)

This is an R package for fast, numerically-stable Gauss-Hermite quadrature. It
uses the Golub-Welch algorithm (implemented using a Rcpp/LAPACK interface in
compiled code) to evaluate quadrature rules with 1000+ points with numerical
stability and efficiency. It also includes convenience functions for vanilla
Gauss-Hermite quadrature and adaptive Gauss-Hermite quadrature based on Laplace
approximations (Liu and Pierce 1994, Biometrika). All methods are currently
unidimensional.

The author's website is http://www.awblocker.com
