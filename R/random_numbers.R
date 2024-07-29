#' Generate Random Numbers
#'
#' This function generates a specified number of random numbers within a given range.
#' It uses `dplyr::filter` to ensure the numbers are within the specified range.
#'
#' @param n A numeric value indicating the number of random numbers to generate.
#' @param min A numeric value indicating the minimum value of the range.
#' @param max A numeric value indicating the maximum value of the range.
#' @return A numeric vector of random numbers.
#' @import dplyr
#' @examples
#' random_numbers(5, 1, 10)
#' random_numbers(10, 0, 1)
#' @export
random_numbers <- function(n, min, max) {
  if (!is.numeric(n) || !is.numeric(min) || !is.numeric(max)) {
    stop("All arguments must be numeric values.")
  }
  if (n <= 0) {
    stop("The number of random numbers to generate must be positive.")
  }
  if (min > max) {
    stop("The minimum value must be less than or equal to the maximum value.")
  }

  # Generate random numbers
  random_numbers <- runif(n, min, max)

  # Create a data frame
  random_df <- data.frame(numbers = random_numbers)

  # Use dplyr::filter to keep numbers within the range (though they already are)
  filtered_df <- dplyr::filter(random_df, numbers >= min & numbers <= max)

  # Return the filtered numbers as a vector
  return(filtered_df$numbers)
}
