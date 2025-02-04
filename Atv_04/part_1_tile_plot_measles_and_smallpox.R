# Instructions
# Modify the tile plot to show the rate of smallpox cases instead of measles cases.

# Exclude years in which cases were reported in fewer than 10 weeks from the plot.

library(dplyr)
library(ggplot2)
library(RColorBrewer)
library(dslabs)

#salvar a saída em um PDF
pdf('part1.pdf')

#carregar os dados
data(us_contagious_diseases)

#definir a doença como Smallpox (Varíola)
the_disease <- "Smallpox"

#filtrar os dados, calcular a taxa e excluir anos com menos de 10 semanas de reportes
dat <- us_contagious_diseases %>% 
   filter(!state %in% c("Hawaii", "Alaska") & disease == the_disease & weeks_reporting >= 10) %>% 
   mutate(rate = count / population * 10000) %>% 
   mutate(state = reorder(state, rate))

#criar o gráfico de calor (tile plot)
dat %>% ggplot(aes(year, state, fill = rate)) + 
  geom_tile(color = "grey50") + 
  scale_x_continuous(expand = c(0, 0)) + 
  scale_fill_gradientn(colors = brewer.pal(9, "Reds"), trans = "sqrt") + 
  theme_minimal() + 
  theme(panel.grid = element_blank()) + 
  ggtitle(the_disease) + 
  ylab("") + 
  xlab("")

#fechar o arquivo PDF
dev.off()
