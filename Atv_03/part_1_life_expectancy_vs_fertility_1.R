# Instructions
# The Gapminder Foundation (www.gapminder.org) is a non-profit organization based in Sweden 
# that promotes global development through the use of statistics that can help reduce 
# misconceptions about global development.

# Instructions
# Using ggplot and the points layer, create a scatter plot of life expectancy versus fertility 
# for the African continent in 2012. 
# This means that fertility should be plotted on the x-axis and life expectancy on the y-axis.

# Remember that you can use the R console to explore the gapminder dataset 
# to figure out the names of the columns in the dataframe.

# In this exercise we provide parts of code to get you going. 
# You need to fill out what is missing. But note that going forward, 
# in the next exercises, you will be required to write most of the code.

library(dplyr)
library(ggplot2)
library(dslabs)
data(gapminder)

##filtra os dados para a África em 2012 e cria um gráfico de dispersão de fertilidade vs expectativa de vida
gapminder %>% filter(continent == "Africa" & year == 2012) %>%
  ggplot(aes(fertility, life_expectancy)) +
  geom_point()
