# Instructions
# Now we are going to make density plots for males and females separately. 
# We can do this using the group argument within the aes mapping. 
# Because each point will be assigned to a different density depending on a variable from the dataset, 
# we need to map within aes.

# Instructions
# Create separate smooth density plots for males and females by defining group by sex. 
# Use the existing aes function inside of the ggplot function.

library(dplyr)
library(ggplot2)
library(dslabs)
data(heights)

##cria gráficos de densidade separados para homens e mulheres agrupando por sexo
heights %>% 
  ggplot(aes(height, group = sex)) +
  geom_density()
