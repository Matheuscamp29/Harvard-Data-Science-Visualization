# Instructions
# Note that there is a large variation in infant mortality and dollars per day among African countries.

# As an example, one country has infant mortality rates of less than 20 per 1000 
# and dollars per day of 16, while another country has infant mortality rates over 10% 
# and dollars per day of about 1.

# In this exercise, we will remake the plot from Exercise 12 with country names instead of points 
# so we can identify which countries are which.

# Instructions
# The mutated dataset is preloaded as gapminder_Africa_2010.

# As in the previous exercise, make a scatter plot of infant_mortality versus dollars_per_day 
# for countries in the African continent.

# As in the previous exercise, use color to denote the different regions of Africa.

# As in the previous exercise, transform the x axis to be in the log (base 2) scale.

# Add a geom_text layer to display country names instead of points.

# Be sure to call aes() within your call to ggplot().

library(dplyr)
library(ggplot2)
library(dslabs)
data(gapminder)

#cria a variável dollars_per_day e filtra os países africanos em 2010, removendo NAs
gapminder_Africa_2010 <- gapminder %>% 
  mutate(dollars_per_day = gdp / population / 365) %>%
  filter(continent == "Africa" & year == 2010 & !is.na(dollars_per_day) & !is.na(infant_mortality))

#cria o gráfico de dispersão substituindo pontos por nomes dos países
gapminder_Africa_2010 %>%
  ggplot(aes(x = dollars_per_day, y = infant_mortality, color = region, label = country)) +
  geom_text() +  
  scale_x_continuous(trans = "log2") +  
  labs(title = "Infant Mortality vs. Dollars per Day in Africa (2010)",
       x = "Dollars per Day (log2 scale)",
       y = "Infant Mortality (per 1000 live births)",
       color = "Region") +
  theme_minimal()
