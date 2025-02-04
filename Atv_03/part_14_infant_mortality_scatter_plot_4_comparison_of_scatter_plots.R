# Instructions
# Now we are going to look at changes in the infant mortality and dollars per day patterns 
# in African countries between 1970 and 2010.

# Instructions
# Generate dollars_per_day using mutate and filter for the years 1970 and 2010 for African countries.

# Remember to remove NA values.

# As in the previous exercise, make a scatter plot of infant_mortality versus dollars_per_day 
# for countries in the African continent.

# As in the previous exercise, use color to denote the different regions of Africa.

# As in the previous exercise, transform the x axis to be in the log (base 2) scale.

# As in the previous exercise, add a layer to display country names in addition to points.

# Use facet_grid to show different plots for 1970 and 2010. Align the plots vertically.

library(dplyr)
library(ggplot2)
library(dslabs)

#carregar o dataset
data(gapminder)

#cria a variável dollars_per_day e filtra os países africanos para os anos 1970 e 2010, removendo NAs
gapminder_Africa <- gapminder %>%
  mutate(dollars_per_day = gdp / population / 365) %>%
  filter(continent == "Africa", year %in% c(1970, 2010), 
         !is.na(dollars_per_day), !is.na(infant_mortality))

#cria o gráfico de dispersão com nomes dos países e facet_grid para os anos
p <- gapminder_Africa %>%
  ggplot(aes(dollars_per_day, infant_mortality, color = region, label = country)) +
  geom_point() +  #adiciona os pontos primeiro
  geom_text() +  #adiciona os nomes dos países
  scale_x_continuous(trans = "log2") +  #transformação log2 no eixo X
  facet_grid(year ~ .)   #separa os gráficos por ano (alinhamento vertical)

#exibir o gráfico
print(p)
