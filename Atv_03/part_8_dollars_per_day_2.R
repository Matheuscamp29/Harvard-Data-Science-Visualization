# Instructions
# Now we are going to calculate and plot dollars per day for African countries in 2010 using GDP data.

# In the second part of this analysis, we will plot the smooth density plot using a log (base 2) x axis.

# Instructions
# The dataset including the dollars_per_day variable is preloaded as daydollars.

# Create a smooth density plot of dollars per day from daydollars.

# Use scale_x_continuous to change the x-axis to a log (base 2) scale.

library(dplyr)
library(ggplot2)
library(dslabs)
data(gapminder)

#cria a variável dollars_per_day e filtra para países africanos em 2010, removendo NAs
daydollars <- gapminder %>% 
  mutate(dollars_per_day = gdp / population / 365) %>% 
  filter(continent == "Africa", year == 2010, !is.na(dollars_per_day))

#cria um gráfico de densidade de dólares por dia com eixo x em escala log2
p <- daydollars %>%
  ggplot(aes(x = dollars_per_day)) +
  geom_density() +
  scale_x_continuous(trans = "log2")
