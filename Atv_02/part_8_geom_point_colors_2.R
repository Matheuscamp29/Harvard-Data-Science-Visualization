# Instructions
# Now let's go ahead and make the labels blue. 
# We previously wrote this code to add labels to our plot:

# murders %>% ggplot(aes(population, total, label= abb)) +
#   geom_label()

# Now we will edit this code.

# Instructions
# Rewrite the code above to make the labels blue by adding an argument to geom_label.
# You do not need to put the color argument inside of an aes().
# Note that the grader expects you to use the argument color instead of col; these are equivalent.

library(dplyr)
library(ggplot2)
library(dslabs)
data(murders)

#cria um gráfico de dispersão com rótulos azuis das abreviações dos estados
murders %>% ggplot(aes(population, total, label = abb)) +
  geom_label(color = "blue")
