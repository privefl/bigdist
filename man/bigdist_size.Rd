% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bigdist_accessors.R
\name{bigdist_size}
\alias{bigdist_size}
\title{Size of bigdist}
\usage{
bigdist_size(x)
}
\arguments{
\item{x}{Object of class 'bigdist'}
}
\description{
Size of bigdist
}
\examples{
set.seed(1)
amat <- matrix(rnorm(1e3), ncol = 10)
td   <- tempdir()
temp <- bigdist(mat = amat, file = file.path(td, "temp_ex5"))
bigdist_size(temp)
}
