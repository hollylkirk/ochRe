#' Show an ochre palette
#'
#' @param obj character, vector of (hexadecimal) colors characterizing a palette
#' @param nam character, the name of the palette
#' @export
#' @importFrom graphics image
viz_palette <- function(obj, nam) {
    image(1:length(obj), 1, as.matrix(1:length(obj)), col=obj, 
          main = nam, ylab = "", xaxt = "n", yaxt = "n",  bty = "n",
          xlab = "")
}
