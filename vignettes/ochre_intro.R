## ----use_names-----------------------------------------------------------
library(ochRe)

# See names of all palettes
names(ochre_palettes)

## ----see_palettes, fig.height = 8----------------------------------------
pal_names <- names(ochre_palettes)

par(mfrow=c(11, 1), lheight = 2, mar=rep(1, 4), adj = 0)
for (i in 1:length(ochre_palettes)){
    viz_palette(ochre_palettes[[i]], pal_names[i])
}

