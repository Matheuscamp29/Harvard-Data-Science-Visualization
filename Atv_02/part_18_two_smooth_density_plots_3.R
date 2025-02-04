# Instructions
# We can also assign groups using the fill argument. 
# When using the geom_density geometry, color creates a colored line for the smooth density plot 
# while fill colors in the area under the curve.

# We can see what this looks like by running the following code:

# heights %>% 
#   ggplot(aes(height, fill = sex)) + 
#   geom_density() 

# However, here the second density is drawn over the other. 
# We can change this by using something called alpha blending.

# Instructions
# Set the alpha parameter to 0.2 in the geom_density function to make this change.

library(dplyr)
library(ggplot2)
library(dslabs)
data(heights)

#cria gráficos de densidade separados por sexo com preenchimento e transparência
heights %>% 
  ggplot(aes(height, fill = sex)) +
  geom_density(alpha = 0.2)
