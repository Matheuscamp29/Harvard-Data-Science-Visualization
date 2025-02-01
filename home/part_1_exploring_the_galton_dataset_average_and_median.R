# For this exercise, we will use height data collected by Francis Galton for his genetics studies. 
# Here we just use height of the children in the dataset:

# library(HistData)
# data(Galton)
# x <- Galton$child

# Instructions
# Compute the average and median of these data. Note: do not assign them to a variable.

library(HistData)
data(Galton)

# Armazena a altura das crianças no vetor 'x'
x <- Galton$child

# Calcula e imprime a média das alturas das crianças
mean(x)

# Calcula e imprime a mediana das alturas das crianças
median(x)
