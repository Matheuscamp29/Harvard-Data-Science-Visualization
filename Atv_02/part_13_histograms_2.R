# Instructions
# Now we are ready to add a layer to actually make the histogram.

# Instructions
# Add a layer to the object p (created in the previous exercise) using the geom_histogram function to make the histogram.

library(dplyr)
library(ggplot2)
library(dslabs)
data(heights)

#cria um objeto ggplot com altura no eixo x
p <- heights %>% ggplot(aes(height)) 

#adiciona uma camada para criar o histograma
p + geom_histogram()
