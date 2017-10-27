#' ochre palette (discrete)
#'
#' ochre palette (discrete)
#'
#' @param n number of colours when using the ramp
#'
#' @param palette 
#'
#' @param alpha transpreancy
#'
#'
#' @examples
#' library(scales)
#' show_col(ochre_pal()(10))
#'
#' filled.contour(volcano,color.palette = ochre_pal(256), asp=1)
#' 
#' @export
ochre_pal <- function(n, palette="namatjira_qual", alpha = 1) {
    pal <- ochre_palettes[[palette]]
    return(colorRampPalette(pal, alpha))
}

#' @rdname scale_color_ochre
#'
#' @importFrom ggplot2 scale_colour_manual
#'
#' @examples 
#' ggplot(mtcars, aes(mpg, wt)) + 
#'   geom_point(aes(colour = factor(cyl))) +     
#'   scale_colour_ochre(palette="olsen_qual")
#' @export
scale_color_ochre <- function(..., palette="namatjira_qual", 
                              discrete = TRUE) {
#    if (discrete) {
#        discrete_scale("colour", "ochre", palette=ochre_palettes[[palette]], ...)
#    } else {
#        scale_color_gradientn(colours = ochre_pal(256, palette, ...))
#    }
    scale_colour_manual(values=ochre_palettes[[palette]])
}

#' @rdname scale_colour_ochre
#' @aliases scale_color_ochre
#' @export
scale_colour_ochre <- scale_color_ochre

#' @rdname scale_fill_ochre
#'
#' @importFrom ggplot2 scale_fill_manual
#'
#' @export
scale_fill_ochre <- function(..., palette="namatjira_qual", 
                              discrete = TRUE) {
    scale_fill_manual(values=ochre_palettes[[palette]])
}
