#' ochre palette with ramped colours
#'
#' @param palette Choose from 'ochre_palettes' list
#'
#' @param alpha transparency
#'
#'
#' @examples
#' library(scales)
#' show_col(ochre_pal()(10))
#'
#' filled.contour(volcano,color.palette = ochre_pal(), asp=1)
#' 
#' @export
ochre_pal <- function(palette="namatjira_qual", alpha = 1) {
    pal <- ochre_palettes[[palette]]
    return(colorRampPalette(pal, alpha))
}

#' Setup colour palette for ggplot2
#' 
#' @rdname scale_color_ochre
#'
#' @param palette Choose from 'ochre_palettes' list
#' 
#' @inheritParams viridis::scale_color_viridis
#'
#' @importFrom ggplot2 scale_colour_manual
#'
#' @examples 
#' library(ggplot2)
#' ggplot(mtcars, aes(mpg, wt)) + 
#'   geom_point(aes(colour = factor(cyl))) +     
#'   scale_colour_ochre(palette="olsen_qual")
#' ggplot(mtcars, aes(mpg, wt)) + 
#'   geom_point(aes(colour = hp)) +     
#'   scale_colour_ochre(palette="olsen_qual", discrete = FALSE)
#' ggplot(data = mpg) + 
#'   geom_point(mapping = aes(x = displ, y = hwy, color = class)) +
#'   scale_colour_ochre(palette="winmar")
#' ggplot(diamonds) + geom_bar(aes(x = cut, fill = clarity)) +
#'   scale_fill_ochre()
#' @export
#' 
#' @importFrom ggplot2 discrete_scale scale_color_gradientn
scale_color_ochre <- function(..., palette="namatjira_qual", 
                              discrete = TRUE, alpha = 1) {
   if (discrete) {
       discrete_scale("colour", "ochre", palette=ochre_pal(palette, alpha = alpha))
   } else {
       scale_color_gradientn(colours = ochre_pal(palette, alpha = alpha, ...)(256))
   }
    #scale_colour_manual(values=ochre_palettes[[palette]])
}

#' @rdname scale_color_ochre
#' @export
scale_colour_ochre <- scale_color_ochre

#' #' Setup fill palette for ggplot2
#'
#' @param palette Choose from 'ochre_palettes' list
#' 
#' @inheritParams viridis::scale_fill_viridis
#'
#' @importFrom ggplot2 scale_fill_manual discrete_scale scale_fill_gradientn
#'
#' @export
scale_fill_ochre <- function(..., palette="namatjira_qual", 
                              discrete = TRUE, alpha=1) {
    if (discrete) {
        discrete_scale("fill", "ochre", palette=ochre_pal(palette, alpha = alpha))
    }
    else {
        scale_fill_gradientn(colours = ochre_pal(palette, alpha = alpha, ...)(256))
    }
}
