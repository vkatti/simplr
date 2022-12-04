#' getStats
#'
#' Get quick stats for a data.frame or tibble with some metrics not displayed with `str()` or `summary()`.
#' Use this function mostly for interactive use.
#'
#' @param df data.frame or tibble to get the stats for.
#' @param limit integer. If number of unique values in a variable/column does not exceed this number, then display the unique values as pipe-separated value. Default 5, can be set in `options` as 'simplr.getStats.limit'.
#'
#' @return data.frame
#' @export
#'
#' @examples
#' getStats(airquality)
#' #>          numMissing typeCol       range numUnique uniqueVals
#' #>  Ozone           37 integer    1 to 168        68          -
#' #>  Solar.R          7 integer    7 to 334       118          -
#' #>  Wind             0 numeric 1.7 to 20.7        31          -
#' #>  Temp             0 integer    56 to 97        40          -
#' #>  Month            0 integer      5 to 9         5          -
#' #>  Day              0 integer     1 to 31        31          -
#'
#' getStats(as.data.frame(datasets::HairEyeColor))
#' #>       numMissing typeCol   range numUnique                   uniqueVals
#' #>  Hair          0  factor       -         4  Black | Brown | Red | Blond
#' #>  Eye           0  factor       -         4 Brown | Blue | Hazel | Green
#' #>  Sex           0  factor       -         2                Male | Female
#' #>  Freq          0 numeric 2 to 66        22                            -
#'
#' getStats(as.data.frame(datasets::Titanic))
#' #>           numMissing typeCol    range numUnique             uniqueVals
#' #>  Class             0  factor        -         4 1st | 2nd | 3rd | Crew
#' #>  Sex               0  factor        -         2          Male | Female
#' #>  Age               0  factor        -         2          Child | Adult
#' #>  Survived          0  factor        -         2               No | Yes
#' #>  Freq              0 numeric 0 to 670        22                      -
#'
getStats <- function(df, limit = getOption("simplr.getStats.limit", default = 5L)) {
  stopifnot("`df` is missing" = !missing(df))
  stopifnot("`df` must be a data.frame or tibble" = inherits(df, "data.frame"))
  stopifnot("`limit` must be an integer." = inherits(limit, "integer"))
  data.frame(
    numMissing = colSums(is.na(df)),
    typeCol = sapply(df, class),
    range = sapply(df, function(x) {
      ifelse(inherits(x, c("numeric", "Date", "POSIXct", "integer")),
        paste(as.character(range(x, na.rm = TRUE)), collapse = " to "),
        "-"
      )
    }),
    numUnique = sapply(df, function(x) {
      ifelse(inherits(x, "factor"),
        length(levels(x)),
        length(unique(x))
      )
    }),
    uniqueVals = sapply(df, function(x) {
      ifelse(inherits(x, c("factor", "character")) & length(unique(x)) <= limit,
             ifelse(inherits(x, "factor"),
                    paste(levels(x), collapse = " | "),
                    paste(as.character(sort(unique(x))), collapse = " | ")),
        "-"
      )
    })
  )
}
