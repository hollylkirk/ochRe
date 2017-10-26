viz_palette <- function(pal) {
    n <- length(pal)
    plot(1:n, rep(0, n), xaxt = "n", yaxt = "n", 
         col = pal, pch = 19, cex = 5)
    text(1:n, rep(0.5, n), pal, srt = 90)
}

order_palette <- function(pal) {
    r <- col2rgb(pal) %>%
        t %>%
        as.data.frame %>%
        arrange(red, green, blue)
    with(r, rgb(red, green, blue, maxColorValue = 255))
}
