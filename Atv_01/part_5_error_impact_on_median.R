# Instructions
# In the previous exercises, we saw how one mistake can have a substantial effect on the average and the standard deviation.
# Now we are going to see how the median and MAD are much more resistant to outliers. 
# For this reason, we say that they are robust summaries.

# Instructions
# Compute how many inches the median grows after the mistake. 
# Specifically, report the difference between the median of the data with the mistake x_with_error and the data without the mistake x.

library(HistData)
data(Galton)

#armazena as alturas em x
x <- Galton$child

#cria uma cópia dos dados e introduz um erro no primeiro valor
x_with_error <- x
x_with_error[1] <- x_with_error[1]*10

#calcula a diferença entre as medianas antes e depois do erro
median(x_with_error) - median(x)
