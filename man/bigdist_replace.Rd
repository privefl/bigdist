% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bigdist_accessors.R
\name{bigdist_replace}
\alias{bigdist_replace}
\title{Replace parts of bigdist}
\usage{
bigdist_replace(x, i, j, value, k)
}
\arguments{
\item{x}{Object of class 'bigdist'}

\item{i}{(integer vector) row positions}

\item{j}{(integer vector) column positions}

\item{value}{(integer/numeric vector) Values to replace}

\item{k}{(integer vector) positions}
}
\value{
bigdist object
}
\description{
Replace parts of bigdist
}
\details{
There are two modes to specify the positions:

  \itemize{

  \item ij-mode where i and j are specified and k is missing. If i or j are
  missing, they are interpreted as all values of i or j (similar to matrix or
  dataframe subsetting). Lengths of i, j are required to be same. If 'value'
  is singleton, then it is extended to the length of i or j. Else, 'value'
  should have same length as i or j.

  \item k-mode where  k is present and both i and k are missing. k is the
  positions in the dist object. If 'value' is singleton, then it is extended
  to the length of k. Else, 'value' should have same length as k.

  }
}
\examples{
set.seed(1)
amat <- matrix(rnorm(1e3), ncol = 10)
td   <- tempdir()
temp <- bigdist(mat = amat, file = file.path(td, "temp_ex7"))
bigdist_replace(temp, 1, 2, 10)
bigdist_extract(temp, 1, 2)
bigdist_replace(temp, 1:2, 3:4, 11:12)
bigdist_extract(temp, 1:2, 3:4, product = "inner")
}
