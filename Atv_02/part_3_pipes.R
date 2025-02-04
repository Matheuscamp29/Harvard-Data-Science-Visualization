# Instructions
# Now we are going to review the use of pipes by seeing how they can be used with ggplot.

# Instructions
# Using the pipe %>%, create an object p associated with the heights dataset 
# instead of with the murders dataset as in previous exercises.

library(dplyr)
library(ggplot2)
library(dslabs)
data(heights)

##define um objeto ggplot associado ao dataset heights usando o pipe
p <- heights %>% ggplot()
