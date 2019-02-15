bigdist
=======

bigdist package facilitates storing distance matrices on disk as 'file-backed matrix' (FBM) using [bigstatsr](https://cran.r-project.org/package=bigstatsr) package. The FBM stores a symmetric matrix. Each distance is stored as a 'float/double' approximately requiring 4 or 8 bytes. The resulting file size will approximately be 4 or 8 \* size^2 where size is nrow/ncol of the data matrix. Working with bigdist object requires working knowledge of bigstatsr package.

[disto](https://cran.r-project.org/package=disto) package provides a unified interface to distance matrices in-memory (class 'dist') or on disk (class 'bigdist').

Installation
------------

You can install bigdist from github with:

``` r
# install.packages("devtools")
devtools::install_github("talegari/bigdist")
```
