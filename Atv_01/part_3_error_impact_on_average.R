# Instructions
# In the previous exercises we saw that the mean and median are very similar and so are the standard deviation and MAD. 
# This is expected since the data is approximated by a normal distribution which has this property.

# Now suppose that Galton made a mistake when entering the first value, forgetting to use the decimal point. 
# You can imitate this error by typing:

# library(HistData)
# data(Galton)
# x <- Galton$child
# x_with_error <- x
# x_with_error[1] <- x_with_error[1]*10
# The data now has an outlier that the normal approximation does not account for. Let's see how this affects the average.

# Instructions
# Compute how many inches the average grows after this mistake. Specifically, report the difference 
# between the average of the data with the mistake x_with_error and the data without the mistake x.

library(HistData)
data(Galton)

#armazena as alturas em x
x <- Galton$child

#cria uma cópia dos dados e introduz um erro no primeiro valor
x_with_error <- x
x_with_error[1] <- x_with_error[1]*10

#calcula a diferença entre as médias antes e depois do erro
mean(x_with_error) - mean(x)
