% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mcintegrate.R
\name{mcint}
\alias{mcint}
\alias{mcint2}
\title{Monte Carlo Integration}
\usage{
mcint(f, a, b, m = 1000)

mcint2(f, xdom, ydom, m = 1000)
}
\arguments{
\item{f}{function to integrate}

\item{a}{the lower-bound of integration}

\item{b}{the upper-bound of integration}

\item{m}{the number of subintervals to calculate}

\item{xdom}{the domain on \code{x} of integration in two dimensions}

\item{ydom}{the domain on \code{y} of integration in two dimensions}
}
\value{
the value of the integral
}
\description{
Simple Monte Carlo Integraton
}
\details{
The \code{mcint} function uses a simple Monte Carlo algorithm to
estimate the value of an integral.  The parameter \code{n} sets the
total number of evaluation points.  The parameter \code{max.y} is the
maximum expected value of the range of function \code{f}.  The
\code{mcint2} provides Monte Carlo integration in two dimensions.
}
\examples{
f <- function(x) { sin(x)^2 + log(x)}
mcint(f, 0, 1)
mcint(f, 0, 1, m = 10e6)

}
\seealso{
Other integration: \code{\link{adaptint}},
  \code{\link{gaussint}}, \code{\link{giniquintile}},
  \code{\link{midpt}}, \code{\link{revolution-solid}},
  \code{\link{romberg}}, \code{\link{simp38}},
  \code{\link{simp}}, \code{\link{trap}}
}
\concept{integration}
