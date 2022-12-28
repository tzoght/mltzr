library(dplyr)

#' Performs basic exploratory data analysis
#'
#' @param df A dataframe
#'
#' @return a char vector
#' @export
#'
#' @examples
#' @export
print_basic_eda <- function(df) {
  # g <- glimpse(df)
  df |>
     dplyr::select_if(is.numeric) |>
     summary()
}
