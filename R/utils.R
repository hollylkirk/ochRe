#' Show an ochre palette
#'
#' @param pal character, vector of (hexadecimal) colors characterizing a palette
#' @export
#' @importFrom graphics plot par text
viz_palette <- function(pal) {
    par(mar = c(1, 1, 1, 1))
    n <- length(pal)
    plot(1:n, rep(0, n), xaxt = "n", yaxt = "n", xlab = "", ylab = "",
         col = pal, pch = 19, cex = 5, frame.plot = FALSE)
    text(1:n, rep(0.5, n), pal, srt = 90)
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
