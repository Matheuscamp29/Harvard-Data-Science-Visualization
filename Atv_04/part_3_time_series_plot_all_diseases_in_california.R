# Instructions
# For the state of California, make a time series plot showing rates for all diseases.

# Include only years with 10 or more weeks reporting.

# Use a different color for each disease.

# Include your aes function inside of ggplot rather than inside your geom layer.

library(dplyr)
library(ggplot2)
library(dslabs)
library(RColorBrewer)

#salvar a saída em um PDF
pdf('part3.pdf')

#carregar os dados
data(us_contagious_diseases)

#criar o gráfico diretamente a partir dos dados filtrados e agregados
us_contagious_diseases %>%
  filter(state == "California", weeks_reporting >= 10) %>%
  group_by(year, disease) %>%
  summarize(rate = sum(count, na.rm = TRUE) / sum(population, na.rm = TRUE) * 10000, .groups = "drop") %>%
  ggplot(aes(x = year, y = rate, color = disease)) +  #chamando ggplot corretamente dentro do encadeamento
  geom_line() +
  labs(title = "Disease Rates in California Over Time",
       x = "Year",
       y = "Cases per 10,000 People",
       color = "Disease") +
  theme_minimal()

#fechar o arquivo PDF
dev.off()
