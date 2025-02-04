# Instructions
# Remember that to print an object you can use the command print or simply type the object. 
# For example, instead of

# x <- 2
# print(x)

# you can simply type

# x <- 2
# x

# Print the object p defined in exercise one. This should result in a blank slate plot.

library(dslabs)
library(ggplot2)
library(dslabs)
data(heights)

#cria um objeto ggplot associado ao dataset heights
p <- ggplot(heights)

#imprime o objeto p (gera um gráfico em branco)
p
