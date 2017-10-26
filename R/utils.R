#' Show an ochre palette
#'
#' @param obj character, vector of (hexadecimal) colors characterizing a palette
#' @param nam character, the name of the palette
#' @param num numeric, the number of colors to use
#' @export
#' @importFrom graphics image
#' @importFrom grDevices colorRampPalette
viz_palette <- function(obj, nam, num = length(obj)) {
    if(num <= 0)
        stop("'num' should be > 0")
    pal_func <- colorRampPalette(obj)
    image(seq_len(num), 1, as.matrix(seq_len(num)), col = pal_func(num), 
          main = nam, ylab = "", xaxt = "n", yaxt = "n",  bty = "n",
          xlab = "")
}
