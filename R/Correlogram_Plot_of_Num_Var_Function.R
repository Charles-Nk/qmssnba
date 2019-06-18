#' Correlogram Plot of Num. Var. Function
#'
#' This function allows you to obtain the correlogram plot of the numeric variables in an NBA Season Stats Dataset, given a selected year
#'
#' @keywords Correlogram
#'
#' @param x The year you select in the dataset
#'
#' @return The output from \code{\link{corrplot}}, which is a correlogram plot
#'
#' @export
#'
#' @import tidyverse
#' @import corrplot
#'
#'
#'
#' @examples
#'
#' corr_plot(1977)
#'
#' corr_plot(2000)
#'
#'
corr_plot <- function(x){
  y <- tibble::as_tibble(Seasons_Stats_NBA)
  z<- dplyr::filter(y, y$Year == x)
  df <- z[,-1]
  df_num <- dplyr::select_if(df, is.numeric)
  M <- stats::cor(df_num)
  corrplot::corrplot(M, type="upper", tl.col="black", tl.cex = 0.5, number.cex= 7/ncol(df_num), mar=c(0,0,2,0), title = paste("Corr. Plot - Num. Var. ~ NBA Seasons Stats dataset - Year: ", x))
}
