# Instructions
# Start by loading the dplyr and ggplot2 libraries as well as the murders data.

# library(dplyr)
# library(ggplot2)
# library(dslabs)
# data(murders)

# Note that you can load both dplyr and ggplot2, as well as other packages, 
# by installing and loading the tidyverse package.

# With ggplot2 plots can be saved as objects. For example we can associate a dataset with a plot object like this

# p <- ggplot(data = murders)

# Because data is the first argument we don't need to spell it out. So we can write this instead:

# p <- ggplot(murders)

# or, if we load dplyr, we can use the pipe:

# p <- murders %>% ggplot()

# Remember the pipe sends the object on the left of %>% to be the first argument 
# for the function the right of %>%.
  
# Now let's get an introduction to ggplot.

# Instructions
# What is the class of the object p?

library(dplyr)
library(ggplot2)
library(dslabs)
data(murders)

#cria um objeto ggplot associado ao dataset murders
p <- ggplot(murders)

#verifica a classe do objeto p
class(p)
