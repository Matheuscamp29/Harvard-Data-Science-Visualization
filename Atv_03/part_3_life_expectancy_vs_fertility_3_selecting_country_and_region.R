# Instructions
# While many of the countries in the high life expectancy/low fertility cluster 
# are from Northern Africa, three countries are not.

# Instructions
# Create a table showing the country and region for the African countries (use select) 
# that in 2012 had fertility rates of 3 or less and life expectancies of at least 70.

# Assign your result to a data frame called df.

library(dplyr)
library(dslabs)
data(gapminder)

##filtra países africanos em 2012 com fertilidade ≤ 3 e expectativa de vida ≥ 70 e seleciona país e região
df <- gapminder %>% 
  filter(continent == "Africa", year == 2012, fertility <= 3, life_expectancy >= 70) %>%
  select(country, region)
