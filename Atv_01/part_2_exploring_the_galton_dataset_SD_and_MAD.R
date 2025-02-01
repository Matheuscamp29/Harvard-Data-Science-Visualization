# Instructions
# Compute the standard deviation and the median absolute deviation of the same data. 
# Do not save the standard deviation or the median absolute deviation as an object.

# library(HistData)
# data(Galton)
# x <- Galton$child

library(HistData)
data(Galton)

# Armazena a altura das crianças no vetor 'x'
x <- Galton$child

# Calcula e imprime o desvio padrão das alturas das crianças
sd(x)

# Calcula e imprime a mediana da diferença absoluta das alturas das crianças
mad(x)
