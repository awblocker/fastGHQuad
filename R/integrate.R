ghQuad <- function(f, rule, ...) {
    # Integrate function according to given quadrature rule
    # Simple wrapper
    sum(rule$w * f(rule$x, ...))
}

aghQuad <- function(g, muHat, sigmaHat, rule, ...) {
    # Adaptive Gauss-Hermite quadrature as in Liu & Pierce (1994)
    
    # Get transformed nodes
    z <- muHat + sqrt(2)*sigmaHat*rule$x

    # Transform weights to account for use of importance-sampling type ratio
    wStar <- exp(rule$x*rule$x + log(rule$w))
    wStar
    
    # Approximate integrate
    val <- sqrt(2)*sigmaHat*sum(wStar*g(z, ...))

    return(val)
}
