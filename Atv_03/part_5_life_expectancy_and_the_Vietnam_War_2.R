# Instructions
# Now that you have created the data table in Exercise 4, it is time to plot the data for the two countries.

# Instructions
# Use geom_line to plot life expectancy vs year for Vietnam and the United States and save the plot as p. 
# The data table is stored in tab.

# Use color to distinguish the two countries.

# Print the object p.

library(dplyr)
library(ggplot2)
library(dslabs)
data(gapminder)

#definir os países e o período de interesse
years <- 1960:2010
countries <- c("United States", "Vietnam")

#filtrar os dados para os países e anos selecionados
tab <- gapminder %>% filter(year %in% years & country %in% countries)

#criar o gráfico de expectativa de vida ao longo do tempo, diferenciando os países por cor
p <- tab %>%
  ggplot(aes(year, life_expectancy, color = country)) +
  geom_line()

#exibir o gráfico
print(p)
