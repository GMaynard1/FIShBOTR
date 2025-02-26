
<!-- README.md is generated from README.Rmd. Please edit that file -->

# FIShBOTR <img src="man/figures/package-sticker.png" align="right" style="float:right; height:120px;"/>

<!-- badges: start -->

[![CRAN
status](https://www.r-pkg.org/badges/version/FIShBOTR)](https://CRAN.R-project.org/package=FIShBOTR)
[![R CMD
Check](https://github.com/GMaynard1/FIShBOTR/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/GMaynard1/FIShBOTR/actions/workflows/R-CMD-check.yaml)
[![Website](https://github.com/GMaynard1/FIShBOTR/actions/workflows/pkgdown.yaml/badge.svg)](https://github.com/GMaynard1/FIShBOTR/actions/workflows/pkgdown.yaml)
[![Test
coverage](https://github.com/GMaynard1/FIShBOTR/actions/workflows/test-coverage.yaml/badge.svg)](https://github.com/GMaynard1/FIShBOTR/actions/workflows/test-coverage.yaml)
[![codecov](https://codecov.io/gh/GMaynard1/FIShBOTR/branch/master/graph/badge.svg)](https://codecov.io/gh/GMaynard1/FIShBOTR)
[![License: GPL (\>=
2)](https://img.shields.io/badge/License-GPL%20%28%3E%3D%202%29-blue.svg)](https://choosealicense.com/licenses/gpl-2.0/)
<!-- badges: end -->

<p align="left">
• <a href="#overview">Overview</a><br> •
<a href="#features">Features</a><br> •
<a href="#installation">Installation</a><br> •
<a href="#get-started">Get started</a><br> •
<a href="#long-form-documentations">Long-form documentations</a><br> •
<a href="#citation">Citation</a><br> •
<a href="#contributing">Contributing</a><br> •
<a href="#acknowledgments">Acknowledgments</a><br> •
<a href="#references">References</a>
</p>

## Overview

The R package `FIShBOTR`provides R helper functions to make use of the
FIShBOT dataset. Fishing Industry Shared Bottom Oceanographic Timeseries
(FIShBOT) is a standardized in-situ gridded bottom temperature product
derived from cooperative research data streams. The data are collected
by commercial fishermen operating in US waters of the Northwest Atlantic
Ocean. To improve efficiency, the data are stored as a table online.
This package converts the data back to a grid and provides a number of
functions to facilitate analysis.

## Features

The main purpose of `FIShBOTR` is to… **{{ DESCRIBE THE MAIN FEATURES
}}**

## Installation

You can install the development version from
[GitHub](https://github.com/) with:

``` r
## Install < remotes > package (if not already installed) ----
if (!requireNamespace("remotes", quietly = TRUE)) {
  install.packages("remotes")
}

## Install < FIShBOTR > from GitHub ----
remotes::install_github("GMaynard1/FIShBOTR")
```

Then you can attach the package `FIShBOTR`:

``` r
library("FIShBOTR")
```

## Get started

For an overview of the main features of `FIShBOTR`, please read the [Get
started](https://GMaynard1.github.io/FIShBOTR/articles/FIShBOTR.html)
vignette.

## Long-form documentations

`FIShBOTR` provides **{{ NUMBER OF VIGNETTES }}** vignettes to learn
more about the package:

- the [Get
  started](https://GMaynard1.github.io/FIShBOTR/articles/FIShBOTR.html)
  vignette describes the core features of the package
- **{{ LIST ADDITIONAL VIGNETTES }}**

## Citation

Please cite `FIShBOTR` as:

> Maynard George, Salois Sarah (2025) FIShBOTR: An R package to **{{ TITLE }}**. R
> package version 0.0.0.9000. <https://github.com/GMaynard1/FIShBOTR/>

## Contributing

All types of contributions are encouraged and valued. For more
information, check out our [Contributor
Guidelines](https://github.com/GMaynard1/FIShBOTR/blob/main/CONTRIBUTING.md).

Please note that the `FIShBOTR` project is released with a [Contributor
Code of
Conduct](https://contributor-covenant.org/version/2/1/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.

## Acknowledgments

**{{ OPTIONAL SECTION }}**

## References

**{{ OPTIONAL SECTION }}**
