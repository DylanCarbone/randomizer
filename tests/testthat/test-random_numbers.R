library(testthat)
library(randomizer)

test_that("random_numbers generates correct number of values", {
  set.seed(123)
  result <- random_numbers(5, 1, 10)
  expect_length(result, 5)
})

test_that("random_numbers generates values within the specified range", {
  set.seed(123)
  result <- random_numbers(5, 1, 10)
  expect_true(all(result >= 1 & result <= 10))
})

test_that("random_numbers handles invalid inputs", {
  expect_error(random_numbers(-5, 1, 10), "positive")
  expect_error(random_numbers(5, 10, 1), "minimum value must be less than or equal to the maximum value")
  expect_error(random_numbers("five", 1, 10), "numeric values")
})
