# Instructions
# Modify the sample code for the time series plot to plot data for smallpox instead of for measles.

# Once again, restrict the plot to years in which cases were reported in at least 10 weeks.

library(dplyr)
library(ggplot2)
library(dslabs)
library(RColorBrewer)

#salvar a saída em um PDF
pdf('part2.pdf')

#carregar os dados
data(us_contagious_diseases)

#definir a doença como Smallpox (Varíola)
the_disease <- "Smallpox"

#filtrar os dados para excluir estados e anos com menos de 10 semanas de reportes
dat <- us_contagious_diseases %>%
   filter(!state %in% c("Hawaii", "Alaska") & disease == the_disease & weeks_reporting >= 10) %>%
   mutate(rate = count / population * 10000) %>%
   mutate(state = reorder(state, rate))

#calcular a média nacional da taxa de casos por ano
avg <- us_contagious_diseases %>%
  filter(disease == the_disease, weeks_reporting >= 10) %>%
  group_by(year) %>%
  summarize(us_rate = sum(count, na.rm = TRUE) / sum(population, na.rm = TRUE) * 10000)

#criar o gráfico de séries temporais
dat %>% ggplot() +
  geom_line(aes(year, rate, group = state), color = "grey50", 
            show.legend = FALSE, alpha = 0.2, size = 1) +
  geom_line(mapping = aes(year, us_rate), data = avg, size = 1, color = "black") +
  scale_y_continuous(trans = "sqrt", breaks = c(5, 25, 125, 300)) + 
  ggtitle(paste(the_disease, "Cases per 10,000 by State")) + 
  xlab("") + 
  ylab("") +
  geom_text(data = data.frame(x = 1955, y = 50), 
            mapping = aes(x, y, label = "US average"), color = "black") + 
  geom_vline(xintercept = 1963, col = "blue")

#fechar o arquivo PDF
dev.off()
