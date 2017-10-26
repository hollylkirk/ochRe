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

# Boxplot with 8 categories
library(eechidna)
ggplot(data = abs2011,
       aes(x = reorder(State, -MedianIncome),
           y = MedianIncome,
           colour = State)) + 
    geom_boxplot() + 
    theme_minimal() + 
    theme(legend.position = "none") + 
    labs(x = "State")

## Tileplot
a <- ggplot(faithfuld) +
    geom_tile(aes(waiting, eruptions, fill = density))
a 







