
<!-- README.md is generated from README.Rmd. Please edit that file -->

# simplr

<!-- badges: start -->
<!-- badges: end -->

⚠️ This package is under active development! Feedback is welcome,
consistency is not yet promised.

## simple

*/ˈsɪmp(ə)l/*

adjective

comparative adjective: *simpler*

1\. easily understood or done; presenting no difficulty. “a simple
solution”

Similar: `straightforward` `easy` `uncomplicated` `uninvolved`
`effortless` `painless` `manageable` `undemanding` `unexacting`
`elementary` `plain sailing`

Opposite: `difficult` `hard` `demanding` `complicated` `complex`

- used to emphasize the fundamental and straightforward nature of
  something. “the simple truth”

The goal of simplr is to provide a few utility functions to make R usage
a little simpler.

## Installation

You can install the development version of simplr from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("vkatti/simplr")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
#library(simplr)
## basic example code
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this. You could also
use GitHub Actions to re-render `README.Rmd` every time you push. An
example workflow can be found here:
<https://github.com/r-lib/actions/tree/v1/examples>.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.
