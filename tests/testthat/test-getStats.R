set.seed(123)
test_df <- data.frame(FCol = factor(sample(c("A", "B"), 50, replace = TRUE),
                                      levels = c("D", "C", "B", "A")))


test_that("getStats handles extra factor levels properly", {
  expect_equal(getStats(test_df)$uniqueVals, "D | C | B | A")
})

test_df$ChCol <- as.character(test_df$FCol)

test_that("getStats sorts unique values of character column", {
  expect_equal(getStats(test_df)$uniqueVals[2], "A | B")
})

test_df$DCol <- seq.Date(from = as.Date("2022-01-01"), to = as.Date("2022-12-31"), length.out = 50)

test_that("getStats shows Date ranges properly", {
  expect_equal(getStats(test_df)$range[3], "2022-01-01 to 2022-12-31")
})
