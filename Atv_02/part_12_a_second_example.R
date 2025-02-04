# Instructions
# We are now going to make a histogram of the heights so we will load the heights dataset. 
# The following code has been pre-run for you to load the heights dataset:

# library(dplyr)
# library(ggplot2)
# library(dslabs)
# data(heights)

# Instructions
# Create a ggplot object called p using the pipe to assign the heights data to a ggplot object.
# Assign height to the x values through the aes function.

library(dplyr)
library(ggplot2)
library(dslabs)
data(heights)

##define e atribui `p` ao ggplot com altura no eixo x
p <- heights %>% 
  ggplot(aes(height))
