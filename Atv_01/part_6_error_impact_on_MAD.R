# Instructions
# We saw that the median barely changes. Now let's see how the MAD is affected.

# Instructions
# Report how many inches the MAD grows after the mistake. 
# Specifically, report the difference between the MAD of the data with the mistake x_with_error and the data without the mistake x.

library(HistData)
data(Galton)

#armazena as alturas em x
x <- Galton$child

#cria uma cópia dos dados e introduz um erro no primeiro valor
x_with_error <- x
x_with_error[1] <- x_with_error[1]*10

#calcula a diferença entre os MADs antes e depois do erro
mad(x_with_error) - mad(x)
