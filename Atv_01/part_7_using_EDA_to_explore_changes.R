# Instructions
# We have seen how the average can be affected by outliers. But how large can this effect get? 
# This of course depends on the size of the outlier and the size of the dataset.

# To see how outliers can affect the average of a dataset, let's write a simple function 
# that takes the size of the outlier as input and returns the average.

# Instructions
# Write a function called error_avg that takes a value k and returns the average of the vector x 
# after the first entry changed to k. Show the results for k=10000 and k=-10000.

library(HistData)
data(Galton)

#armazena as alturas em x
x <- Galton$child

#função que substitui o primeiro valor de x por k e retorna a média
error_avg <- function(k) {
  x[1] <- k
  mean(x)
}

#calcula a média quando o primeiro valor é 10000
result1 <- error_avg(10000)

#calcula a média quando o primeiro valor é -10000
result2 <- error_avg(-10000)

result1
result2
