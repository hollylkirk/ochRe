#' Australian Colour Palettes
#' 
#'A collection of colour palettes inspired by the landscape and wildlife of Australia. The list of available palettes is:
#' namatjira_qual, namatjira_div
#' mccrea
#' parliament
#' tasmania
#' nolan_ned
#' winmar
#' olsen_qual
#' williams_pilbara
#' healthy_reef, dead_reef
#' galah, lorikeet, jumping_frog
#' emu_woman_paired
#'
#'@examples
#'
#' # Make an x-y plot using the Namatjira palette
#' library(tidyverse)
#' df <- data.frame(x = rnorm(100, 0, 20), 
#'           y = rnorm(100, 0, 20), 
#'           cl = sample(letters[1:8], 100, replace=TRUE))
#' ggplot(df, aes(x, y, colour=cl, shape=cl)) + 
#'   geom_point(size=4) + scale_colour_ochre() +
#'   theme_bw() + theme(aspect.ratio=1) 
#' 
#' # Make a histogram using the McCrea Collins Street palette
#' ggplot(df, aes(x, fill=cl)) + geom_histogram() +
#'   scale_fill_ochre(palette="mccrea")
#'
#' \dontrun{
#'   data(elev)
#'   library(elevatr)
#'   library(raster)
#'   library(ochRe)
#'   colpal <- ochre_pal()(150)
#'   ex <- extent(110, 155, -45, -10)
#'   elev <- raster::crop(elev, ex)
#'   elev[elev < 0] <- NA
#'   topo <- list(x = xFromCol(elev), y = rev(yFromRow(elev)), 
#'                z = t(as.matrix(elev))[, nrow(elev):1])
#'                par(mar = rep(0, 4), bg = "#444444")
#'                image(topo, useRaster = TRUE, col = colpal,
#'                      axes = FALSE, xlab = "", ylab = "",
#'                            asp = cos(27.5 * pi/180))
#' }
#' @export
ochre_palettes <- list(
    ## Albert Namatjira: Twin Ghosts
    ## http://www.menziesartbrands.com/sites/default/files/field/catalogue_items//DM_24017.jpg
    namatjira_qual = c(
        "#d8f0f0",	
        "#786060",
        "#d8c0a8",	
        "#a86030",
        "#a890a8",
        "#486090",
        "#a89078",
        "#f0a860"
    ),
    
    namatjira_div = c(
        "#786060", 
        "#486090", 
        "#a890a8", 
        "#d8f0f0", 
        "#f0a860", 
        "#d8c0a8", 
        "#a89078", 
        "#a86030"
    ),
    
    ## Georgiana McCrae, "Melbourne, Collins St, 1841",
    ## https://en.wikipedia.org/wiki/File:Melbourne_Collins_Street_1841.jpg
    mccrea = c(
        "#a8c0a8",
        "#c0c0a8",
        "#a8a890",
        "#909078",
        "#a8a8a8",
        "#c0c0c0",
        "#d8c0a8",
        "#c09048",
        "#c07848",
        "#d89060",
        "#c07848"
    ),
    
    # based on the great all tapestry https://www.aph.gov.au/Visit_Parliament/Art/Top_5_Treasures/Great_Hall_Tapestry
    # and house of reps and senate colours https://www.peo.gov.au/learning/closer-look/australias-parliament-house/a-place-for-the-parliament.html
    parliament = c(
        "#a84848", # senate red
        "#f0d8d8", # light pink/red
        "#304830", # dark green
        "#909078", # grey green
        "#607890", # grey blue
        "#90a8a8", # light blue
        "#906030", # brown
        "#c0a890" # light brown
    ),
    
    # based on photographs from cradle mountain national park and the bay of fires
    # random comment
    tasmania = c(
        "#a84830", # bay of fires lychen
        "#d89060", # lighter lychen
        "#604830", # forest brown
        "#6090d8", # wineglass bay blue
        "#c0c0d8", # crater lake grey
        "#606030", # fern green
        "#486030" # enchanted walk moss
    ),
    
    ## Sidney Nolan, "Ned Kelly 1946",
    ## https://cs.nga.gov.au/detail.cfm?irn=28926
    nolan_ned = c(
        "#a89030", # ochre
        "#004878", # sky blue
        "#78a890", # dusty blue
        "#000000", # black
        "#481800"  # brown
    ),
    
    ## Wayne Ludbey, "Nicky Winmar St Kilda Footballer", 1993
    ## https://nga.gov.au/federation/Detail.cfm?WorkID=27707&ZoomID=3
    winmar = c(
        "#d8d8d8",
        "#609060",
        "#183030",
        "#a8c090",
        "#604848",
        "#d8c0a8",
        "#a86048"
    ),
    
    ## John Olsen, "Sydney Sun, 1965",
    ## https://artsearch.nga.gov.au/Detail-LRG.cfm?IRN=26102
    olsen_qual = c(
        "#c47000", # rusty yellow
        "#e0c48c", # light tan
        "#8c3800", # dark orange
        "#e0a81c", # yellow
        "#8ca8c4", # dusky blue
        "#385438"  # dark green
    ),
    olsen_seq = c(
        "#701c00", 
        "#8c3800", 
        "#a85400", 
        "#c47000",
        "#c48c1c",
        "#e0a81c", 
        "#e0c48c", 
        "#e0e0e0",
        "#c4c4c4",
        "#8ca8c4", 
        "#708ca8",
        "#1c54a8",
        "#385438",
        "#38381c"
    ),
    ## Fred Williams, Mount Nameless (morning)
    ## http://www.art-almanac.com.au/wp-content/uploads/2013/11/benalla_mt_nameless_review_1213.jpg
    ## 7 30 y n
    williams_pilbara = c(
        "#d23c1e", # 3
        "#965a3c", # 6
        "#b4783c", # 2
        "#b4d2d2", # 5
        "#96b4b4", # 7
        "#96b4d2", # 4
        "#7896b4"  # 1
    ),
    
    
    
    ## Great Barrier reef, before global warming
    ## based on http://aussiedestinationtours.com/wp-content/uploads/2014/07/Greatbarrierreef.jpg
    healthy_reef = c(
        "#f63b32", # hot coral
        "#e37870", # coral pink
        "#f3ff41", # bright yellow
        "#005487", # deep blue
        "#52bcd4", # blue sand
        "#679c40", # sea green
        "#f3fbfb", # white coral
        "#1c0608", # dark brown coral
        "#002B52" # dark blue
    ),
    
    ## Emily Kame Kngwarreye, Emu Woman 1988–89
    ## http://www.nma.gov.au/exhibitions/utopia_the_genius_of_emily_kame_kngwarreye/emily_kame_kngwarreye
    emu_woman_paired = c(
        "#AB7E37", 
        "#79222A",
        "#562323",
        "#333B43",
        "#B68830",
        "#232728",
        "#B9ACA3",
        "#7A2529",
        "#2C374A",
        "#120F11",
        "#768B99",
        "#6F2827",
        "#7B939C",
        "#BD852C",
        "#AAAEB5",
        "#78292F",
        "#B6B0AE",
        "#3A3A43" ),
 
    ## Galah
 ## https://theconversation.com/how-the-australian-galah-got-its-name-in-a-muddle-65646
 galah = c(
     "#903030", "#d84860",
     "#f0a8c0", "#ffffff",
     "#a8a8a8","#787878"),
 
 ## Rainbow lorikeet
 ## http://reptilepark.com.au/animals/birds/rainbow-lorikeet/
 lorikeet = c(
     "#486030",
     "#c03018",
     "#f0a800",
     "#484878",
     "#a8c018",
     "#609048"),
 
 ## Bleached great barrier reef
 ## http://cdn.newsapi.com.au/image/v1/7c2f433cd1e020a6ad1b7018070c55a6
 dead_reef = c(
     "#D2E1DE",
     "#548495",
     "#3C4347",
     "#758388",
     "#DBE9E2",
     "#8E9796"
 ),
 
 ## Jumping Frog (John Olsen, 1982)
 ## http://cdn.artserieshotels.com.au/images/made/images/remote/http_cdn.artserieshotels.com.au/images/uploads/main/john-olsen-artist-artwork1_600_400_60.jpg
 jumping_frog = c(
     "#607848",
     "#184848",
     "#c0c030",
     "#a8a890",
     "#90a878"
 ))



