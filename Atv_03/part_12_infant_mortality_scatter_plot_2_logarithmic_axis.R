# Instructions
# Now we are going to transform the x axis of the plot from the previous exercise.

# Instructions
# The mutated dataset is preloaded as gapminder_Africa_2010.

# As in the previous exercise, make a scatter plot of infant_mortality versus dollars_per_day 
# for countries in the African continent.

# As in the previous exercise, use color to denote the different regions of Africa.

# Transform the x axis to be in the log (base 2) scale.

library(dplyr)
library(ggplot2)
library(dslabs)
data(gapminder)

#cria a variável dollars_per_day e filtra os países africanos em 2010, removendo NAs
gapminder_Africa_2010 <- gapminder %>% 
  mutate(dollars_per_day = gdp / population / 365) %>%
  filter(continent == "Africa" & year == 2010 & !is.na(dollars_per_day) & !is.na(infant_mortality))

#cria o gráfico de dispersão com transformação log2 no eixo x
gapminder_Africa_2010 %>%
  ggplot(aes(x = dollars_per_day, y = infant_mortality, color = region)) +
  geom_point() +
  scale_x_continuous(trans = "log2") +  
  labs(title = "Infant Mortality vs. Dollars per Day in Africa (2010)",
       x = "Dollars per Day (log2 scale)",
       y = "Infant Mortality (per 1000 live births)",
       color = "Region") +
  theme_minimal()
