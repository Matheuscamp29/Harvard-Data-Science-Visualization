# Instructions
# We are going to continue looking at patterns in the gapminder dataset 
# by plotting infant mortality rates versus dollars per day for African countries.

# Instructions
# Generate dollars_per_day using mutate and filter for the year 2010 for African countries.

# Remember to remove NA values for infant_mortality and dollars_per_day.

# Store the mutated dataset in gapminder_Africa_2010.

# Make a scatter plot of infant_mortality versus dollars_per_day for countries in the African continent.

# Use color to denote the different regions of Africa.

library(dplyr)
library(ggplot2)
library(dslabs)

#carregar o dataset
data(gapminder)

#cria a variável dollars_per_day e filtra os países africanos em 2010, removendo NAs
gapminder_Africa_2010 <- gapminder %>%
  mutate(dollars_per_day = gdp / population / 365) %>%
  filter(continent == "Africa", year == 2010, 
         !is.na(dollars_per_day), !is.na(infant_mortality))

#cria o gráfico de dispersão de mortalidade infantil vs. dólares por dia, colorindo por região
p <- gapminder_Africa_2010 %>%
  ggplot(aes(x = dollars_per_day, y = infant_mortality, color = region)) +
  geom_point() +
  scale_x_continuous(trans = "log2") +
  labs(title = "Infant Mortality vs. Dollars per Day in Africa (2010)",
       x = "Dollars per Day (log2 scale)",
       y = "Infant Mortality (per 1000 live births)",
       color = "Region") +
  theme_minimal()

#exibir o gráfico
print(p)
