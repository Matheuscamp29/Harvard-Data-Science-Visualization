# Instructions
# Now we are going to combine the plotting tools we have used in the past two exercises 
# to create density plots for multiple years.

# Instructions
# Create the dollars_per_day variable as in Exercise 7, but for African countries 
# in the years 1970 and 2010 this time.

# Make sure you remove any NA values.

# Create a smooth density plot of dollars per day for 1970 and 2010 using a log (base 2) scale for the x axis.

# Use facet_grid to show a different density plot for 1970 and 2010.

library(dplyr)
library(ggplot2)
library(dslabs)

# Carregar o dataset
data(gapminder)

#cria a variável dollars_per_day para os países africanos nos anos 1970 e 2010, removendo NAs
daydollars <- gapminder %>%
  mutate(dollars_per_day = gdp / population / 365) %>%
  filter(continent == "Africa", year %in% c(1970, 2010), !is.na(dollars_per_day))

#cria o gráfico de densidade com facet_grid para separar os anos
p <- daydollars %>%
  ggplot(aes(x = dollars_per_day)) +
  geom_density() +
  scale_x_continuous(trans = "log2") +
  facet_grid(year ~ .) +
  labs(title = "Distribution of Dollars per Day in Africa (1970 vs 2010)",
       x = "Dollars per Day (log2 scale)",
       y = "Density") +
  theme_minimal()

#exibir o gráfico
print(p)
