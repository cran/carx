% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/carx_default.R
\name{carx.formula}
\alias{carx.formula}
\title{A formula interface to the \code{carx} method}
\usage{
\method{carx}{formula}(formula, data = list(), ...)
}
\arguments{
\item{formula}{a formula representing the regression part of the model, such as \code{y ~ x1 + x2}.}

\item{data}{a \code{list}, \code{data.frame}, or a \code{\link{cenTS}} object which includes the following:
\itemize{
\item the response variable with variable name identified by the supplied formula.
\item any covariate(s) with with variable name(s) identified by the supplied formula.
\item \code{ci} whose components take values from {-1, 0,  1}, where -1 (0,1) indicates that the corresponding element in the response variable is left-censored (not censored,  right censored).
\item \code{lcl} which denotes the vector of left (lower) censoring limits. %, or a numeric value representing a constant left (lower)  censoring limit. If not present, indicating no lower limit.
\item \code{ucl} which denotes the vector of right (upper)  censoring limits. %, or a numeric value representing a constant limit. If not present, indicating no upper limit.
}}

\item{...}{other parameters accepted by \code{\link{carx.default}} except \code{y}, \code{x}, \code{ci}, \code{lcl}, and \code{ucl}.}
}
\value{
a CARX object of the estimated model.
}
\description{
This interface  uses the supplied \code{formula} and data provided by \code{data} and other arguments
in \code{...} to invoke the \code{carx.default} method. This is the preferred way of calling the
\code{\link{carx.default}} function.
}
\examples{
dat = carxSim(nObs=100,seed=0)
mdl <- carx(y~X1+X2-1,data=dat, p=2, CI.compute = FALSE)
}
\seealso{
\code{\link{carx.default}} for more options.

\code{\link{cenTS}} on how to construct a \code{cenTS} object.
}
