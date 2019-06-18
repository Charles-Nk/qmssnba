#' Name of First Oldest Player Function
#'
#' This function allows you to obtain name of the first player listed among the oldest players in an NBA Season Stats Dataset, given a selected year
#'
#' @keywords Oldest
#'
#' @param x The year you select in the dataset
#'
#' @return The output from \code{\link{print}}, which is the name of that first listed player
#'
#' @export
#'
#' @import tidyverse
#'
#'
#' @examples
#'
#' first_player_age(1977)
#'
#' first_player_age(2000)
#'
#'
first_player_age <- function(x){
  y <- tibble::as_tibble(Seasons_Stats_NBA)
  z <- dplyr::filter(y, y$Year == x)
  t <- z[,c("Year","Player","Age")]
  df <- dplyr::arrange(t, dplyr::desc(t$Age))
  print(paste("In the year ", df$Year[1], ", the oldest players were ", df$Age[1], " years-old and - among them - the first player listed in the NBA Seasons Stats dataset is: ", df$Player[1]))
}
