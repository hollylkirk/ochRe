#' Show an ochre palette
#'
#' @param pal character, vector of (hexadecimal) colors characterizing a palette
#' @param nam character, the name of the palette
#' @export
#' @importFrom graphics plot par text
viz_palette <- function(obj, nam) {
    image(1:length(obj), 1, as.matrix(1:length(obj)), col=obj, 
          main = nam, ylab = "", xaxt = "n", yaxt = "n",  bty = "n")
}

#' Order an ochre palette automatically
#'
#' @param pal palette name
#' @import dplyr
#' @importFrom grDevices col2rgb
order_palette <- function(pal) {
    r <- col2rgb(pal) %>%
        t %>%
        as.data.frame %>%
        arrange(red, green, blue)
    with(r, rgb(red, green, blue, maxColorValue = 255))
}
