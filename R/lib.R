evalHermitePoly <- function(x, n) {
    .Call("evalHermitePoly", x, n, PACKAGE="fastGHQuad")
}

findPolyRoots <- function(c) {
    .Call("findPolyRoots", c, PACKAGE="fastGHQuad")
}

hermitePolyCoef <- function(n) {
    .Call("hermitePolyCoef", n, PACKAGE="fastGHQuad")
}

gaussHermiteData <- function(n) {
    .Call("gaussHermiteData", n, PACKAGE="fastGHQuad")
}
