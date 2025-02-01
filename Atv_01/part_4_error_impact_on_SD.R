# Instructions
# In the previous exercise we saw how a simple mistake in 1 out of over 900 observations 
# can result in the average of our data increasing more than half an inch, which is a large difference in practical terms.
# Now let's explore the effect this outlier has on the standard deviation.

# Instructions
# Compute how many inches the SD grows after this mistake. 
# Specifically, report the difference between the SD of the data with the mistake x_with_error and the data without the mistake x.

library(HistData)
data(Galton)

#armazena as alturas em x
x <- Galton$child

#cria uma cópia dos dados e introduz um erro no primeiro valor
x_with_error <- x
x_with_error[1] <- x_with_error[1]*10

#calcula a diferença entre os desvios padrão antes e depois do erro
sd(x_with_error) - sd(x)
