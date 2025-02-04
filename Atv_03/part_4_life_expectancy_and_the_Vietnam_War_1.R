# Instructions
# The Vietnam War lasted from 1955 to 1975. Do the data support war having a negative effect on life expectancy? 
# We will create a time series plot that covers the period from 1960 to 2010 of life expectancy 
# for Vietnam and the United States, using color to distinguish the two countries. 
# We start the analysis by generating a table.

# Instructions
# Use filter to create a table with data for the years from 1960 to 2010 in Vietnam and the United States.

# Save the table in an object called tab.

library(dplyr)
library(dslabs)
data(gapminder)

#definir os países e o período de interesse
countries <- c("Vietnam", "United States")
years <- 1960:2010

#filtrar os dados para os países e anos selecionados
tab <- gapminder %>%
  filter(country %in% countries, year %in% years)
