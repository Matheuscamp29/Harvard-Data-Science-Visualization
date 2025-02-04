# Instructions
# Now we are going to make a time series plot for the rates of all diseases in the United States. 
# For this exercise, we have provided less sample code in the scaffold - you can take a look at the previous exercise to get you started.

# Instructions
# Compute the US rate by using summarize to sum over states. Call the variable rate.

# The US rate for each disease will be the total number of cases divided by the total population.

# Remember to convert to cases per 10,000.

# You will need to filter for !is.na(population) to get all the data.

# Plot each disease in a different color.

library(dplyr)
library(ggplot2)
library(dslabs)
library(RColorBrewer)

#salvar a saída em um PDF
pdf('part4.pdf')

#carregar os dados
data(us_contagious_diseases)

#calcular a taxa de incidência nos EUA para cada doença e ano
us_disease_rates <- us_contagious_diseases %>%
  filter(!is.na(population)) %>%  #excluir entradas sem população
  group_by(year, disease) %>%
  summarize(rate = sum(count, na.rm = TRUE) / sum(population, na.rm = TRUE) * 10000, .groups = "drop")

#criar o gráfico de séries temporais para todas as doenças nos EUA
us_disease_rates %>%
  ggplot(aes(x = year, y = rate, color = disease)) +
  geom_line() +
  labs(title = "Disease Rates in the United States Over Time",
       x = "Year",
       y = "Cases per 10,000 People",
       color = "Disease") +
  theme_minimal()

#fechar o arquivo PDF
dev.off()
