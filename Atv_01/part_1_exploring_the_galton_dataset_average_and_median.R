# For this exercise, we will use height data collected by Francis Galton for his genetics studies. 
# Here we just use height of the children in the dataset:

# library(HistData)
# data(Galton)
# x <- Galton$child

# Instructions
# Compute the average and median of these data. Note: do not assign them to a variable.

library(HistData)
data(Galton)

#armazena alturas em x
x <- Galton$child

#clacula e imprime media de x
mean(x)

#calcula e imprime mediana de x 
median(x)
