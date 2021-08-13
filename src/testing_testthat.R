# Testing `testthat`

# "command + shift + return" to run whole code

# Required packages: `testthat`, `devtools`, and `remotes`
library(testthat)
library(devtools)
library(remotes)

# Create a function that takes any numeric data frame (all variables are numbers), finds the mean of all columns, then finds the max column mean, and the min column mean from that data frame, & returns those min and max mean values in a vector (min_mean_value, max_mean_value)

# `apply(X = df, MARGIN = 2, FUN = mean, na.rm = TRUE`

#' Return Minimum and Maximum Means of a Data Frame
#' 
#' This is a function that will return a vector of the maximum and minimum column means of a data frame
#'
#' @param df This is the data frame from which you want to find the minimum and maximum column means.
#'
#' @return
#' @export
#'
#' @examples
mean_range <- function(df) {
  col_means <- apply(df, 2, mean, na.rm = TRUE)
  col_mean_max <- max(col_means)
  col_mean_min <- min(col_means)
  return(c(col_mean_min, col_mean_max))
}

# should use widely available data set (ex: mtcars) so that it's reproducible
# if testing and get nothing back, you're good - only get response if test fails

expect_length(mean_range(df = mtcars), 2)

expect_true(mean_range(df = mtcars)[1] < mean_range(df = mtcars)[2])

expect_type(mean_range(df = mtcars), "double")
