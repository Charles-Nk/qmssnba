#' First Player Position Function
#'
#' This function allows you to obtain the position of the first player listed in an NBA Season Stats Dataset, given a selected year
#'
#' @keywords Position
#'
#' @param x The year you select in the dataset
#'
#' @return The output from \code{\link{print}}, which is the position of that first listed player
#'
#' @export
#'
#' @import tidyverse
#'
#'
#'
#'
#' @examples
#'
#' first_player_pos(1977)
#'
#' first_player_pos(2000)
#'
#'
first_player_pos <- function(x){
  y <- tibble::as_tibble(Seasons_Stats_NBA)
  z <- dplyr::filter(y, y$Year == x)
  df <- z[,c("Year","Player","Pos")]
  print(paste("The first player listed in the NBA Seasons Stats dataset is ", df$Player[1], " and in ", df$Year[1], " his position was: ", df$Pos[1]))
}
