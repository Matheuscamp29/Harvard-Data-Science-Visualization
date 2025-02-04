# Instructions
# Now we are going to edit the code from Exercise 9 to show a stacked density plot of each region in Africa.

# Instructions
# Much of the code will be the same as in Exercise 9:

# Create the dollars_per_day variable as in Exercise 7, but for African countries in the years 1970 and 2010 this time.

# Make sure you remove any NA values.

# Create a smooth density plot of dollars per day for 1970 and 2010 using a log (base 2) scale for the x axis.

# Use facet_grid to show a different density plot for 1970 and 2010.

# Make sure the densities are smooth by using bw = 0.5.

# Use the fill and position arguments where appropriate to create the stacked density plot of each region.

library(dplyr)
library(ggplot2)
library(dslabs)

#carregar o dataset
data(gapminder)

#cria a variável dollars_per_day para os países africanos nos anos 1970 e 2010, removendo NAs
daydollars <- gapminder %>%
  mutate(dollars_per_day = gdp / population / 365) %>%
  filter(continent == "Africa", year %in% c(1970, 2010), !is.na(dollars_per_day))

#cria o gráfico de densidade empilhado por região
p <- daydollars %>%
  ggplot(aes(dollars_per_day, fill = region)) +
  geom_density(bw = 0.5, position = "stack") +
  scale_x_continuous(trans = "log2") +
  facet_grid(year ~ .) +
  labs(title = "Stacked Density Plot of Dollars per Day by Region in Africa (1970 & 2010)",
       x = "Dollars per Day (log2 scale)",
       y = "Density",
       fill = "Region") +
  theme_minimal()

#exibir o gráfico
print(p)
