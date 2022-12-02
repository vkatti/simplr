
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
library(simplr)
## basic example code
getStats(airquality)
#>         numMissing typeCol       range numUnique uniqueVals
#> Ozone           37 integer    1 to 168        68          -
#> Solar.R          7 integer    7 to 334       118          -
#> Wind             0 numeric 1.7 to 20.7        31          -
#> Temp             0 integer    56 to 97        40          -
#> Month            0 integer      5 to 9         5          -
#> Day              0 integer     1 to 31        31          -
```

``` r
# example with factors
getStats(as.data.frame(datasets::Titanic))
#>          numMissing typeCol    range numUnique             uniqueVals
#> Class             0  factor        -         4 1st | 2nd | 3rd | Crew
#> Sex               0  factor        -         2          Male | Female
#> Age               0  factor        -         2          Child | Adult
#> Survived          0  factor        -         2               No | Yes
#> Freq              0 numeric 0 to 670        22                      -
```
