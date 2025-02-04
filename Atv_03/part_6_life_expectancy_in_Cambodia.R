# Instructions
# Cambodia was also involved in this conflict and, after the war, Pol Pot and his communist Khmer Rouge 
# took control and ruled Cambodia from 1975 to 1979. He is considered one of the most brutal dictators in history. 
# Do the data support this claim?

# Instructions
# Use a single line of code to create a time series plot from 1960 to 2010 of life expectancy vs year for Cambodia.

library(dplyr)
library(ggplot2)
library(dslabs)
data(gapminder)

#cria um gráfico de expectativa de vida ao longo do tempo para o Camboja
gapminder %>% 
  filter(year >= 1960 & year <= 2010 & country == "Cambodia") %>% 
  ggplot(aes(year, life_expectancy)) + 
  geom_line()
