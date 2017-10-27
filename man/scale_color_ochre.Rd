% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scales.R
\name{scale_color_ochre}
\alias{scale_color_ochre}
\title{Setup colour palette for ggplot2}
\usage{
scale_color_ochre(..., palette = "namatjira_qual", discrete = TRUE)
}
\arguments{
\item{palette}{Choose from 'ochre_palettes' list}
}
\description{
Setup colour palette for ggplot2
}
\examples{
library(tidyverse)
ggplot(mtcars, aes(mpg, wt)) + 
  geom_point(aes(colour = factor(cyl))) +     
  scale_colour_ochre(palette="olsen_qual")
}