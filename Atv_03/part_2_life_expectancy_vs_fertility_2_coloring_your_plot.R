# Instructions
# Note that there is quite a bit of variability in life expectancy and fertility 
# with some African countries having very high life expectancies. 
# There also appear to be three clusters in the plot.

# Instructions
# Remake the plot from the previous exercise but this time use color to distinguish 
# the different regions of Africa to see if this explains the clusters. 
# Remember that you can explore the gapminder data to see how the regions of Africa 
# are labeled in the data frame!

# Use color rather than col inside your ggplot call - while these two forms 
# are equivalent in R, the grader specifically looks for color.

library(dplyr)
library(ggplot2)
library(dslabs)
data(gapminder)

##filtra os dados para a África em 2012 e adiciona cor por região
gapminder %>% filter(continent == "Africa" & year == 2012) %>%
  ggplot(aes(fertility, life_expectancy, color = region)) +
  geom_point()
