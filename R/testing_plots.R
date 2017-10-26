library(ggplot2)

# Basic plots 

## Scatterplot with 3 categories
e <- ggplot(mtcars, aes(mpg, wt)) +
    geom_point(aes(colour = factor(cyl)))
e 

## Scatterplot with 7 categories
ggplot(data = mpg) + 
    geom_point(mapping = aes(x = displ, y = hwy, color = class))


## Stacked Bar with 8 categories
b <- ggplot(diamonds) + 
    geom_bar(aes(x = cut, fill = clarity))
b

## Tileplot
a <- ggplot(faithfuld) +
    geom_tile(aes(waiting, eruptions, fill = density))
a 







