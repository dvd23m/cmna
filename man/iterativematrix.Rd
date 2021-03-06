% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iterativematrix.R
\name{iterativematrix}
\alias{iterativematrix}
\alias{jacobi}
\alias{gaussseidel}
\alias{cgmmatrix}
\title{Solve a matrix using iterative methods}
\usage{
jacobi(A, b, tol = 1e-06, maxiter = 100)

gaussseidel(A, b, tol = 1e-06, maxiter = 100)

cgmmatrix(A, b, tol = 1e-06, maxiter = 100)
}
\arguments{
\item{A}{a square matrix representing the coefficients of a linear
system}

\item{b}{a vector representing the right-hand side of the linear
system}

\item{tol}{is a number representing the error tolerence}

\item{maxiter}{is the maximum number of iterations}
}
\value{
the solution vector
}
\description{
Solve a matrix using iterative methods.
}
\details{
\code{jacobi} finds the solution using Jacobi iteration.
Jacobi iteration depends on the matrix being diagonally-dominate.
The tolerence is specified the norm of the solution vector.

\code{gaussseidel} finds the solution using Gauss-Seidel iteration.
Gauss-Seidel iteration depends on the matrix being either
diagonally-dominate or symmetric and positive definite.

\code{cgmmatrix} finds the solution using the conjugate gradient
method.  The conjugate gradient method depends on the matrix being
symmetric and positive definite.
}
\examples{
A <- matrix(c(5, 2, 1, 2, 7, 3, 3, 4, 8), 3)
b <- c(40, 39, 55)
jacobi(A, b)

}
\seealso{
Other linear: \code{\link{choleskymatrix}},
  \code{\link{detmatrix}}, \code{\link{gdls}},
  \code{\link{invmatrix}}, \code{\link{lumatrix}},
  \code{\link{refmatrix}}, \code{\link{rowops}},
  \code{\link{tridiagmatrix}}, \code{\link{vecnorm}}
}
\concept{linear}
