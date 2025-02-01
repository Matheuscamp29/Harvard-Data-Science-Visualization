# Instructions
# Compute the standard deviation and the median absolute deviation of the same data. 
# Do not save the standard deviation or the median absolute deviation as an object.

# library(HistData)
# data(Galton)
# x <- Galton$child

library(HistData)
data(Galton)

#armazena as alturas em x
x <- Galton$child

#calcula o desvio padrão
sd(x)

#calcula mediana das alturas
mad(x)
