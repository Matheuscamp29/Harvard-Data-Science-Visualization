# Instructions
# Now we are going to calculate and plot dollars per day for African countries in 2010 using GDP data.

# In the first part of this analysis, we will create the dollars per day variable.

# Instructions
# Use mutate to create a dollars_per_day variable, which is defined as gdp/population/365.

# Create the dollars_per_day variable for African countries for the year 2010.

# Remove any NA values.

# Save the mutated dataset as daydollars.

library(dplyr)
library(dslabs)
data(gapminder)

#cria a variável dollars_per_day e filtra para países africanos em 2010, removendo NAs
daydollars <- gapminder %>%
  mutate(dollars_per_day = gdp / population / 365) %>%  
  filter(continent == "Africa", year == 2010, !is.na(dollars_per_day))

daydollars
