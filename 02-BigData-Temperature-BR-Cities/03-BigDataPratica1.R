
####### Big data na Prática - Análise da Temperatura média nas cidades Brasileiras ####### 


# Config dir de trabalho
setwd("")
getwd()



# Dataset:
# Berkeley Earth (http://berkeleyearth.org/data) (útimos 100 anos)
# TemperaturaGlobais.csv ~ 78 MB (zip) ~ 496 MB (unzip)


#Instalando e carregando os pacotes (apenas 1vez)
install.packages("readr")
install.packages("data.table")
install.packages("dplyr")
install.packages("ggplot2")
library(readr)
library(dplyr)
library(ggplot2)
library(scales)
library(data.table)




# Carregando os dados (usando timer para comparar o tempo de carregamento de 3 diferentes formas)
# Carga dos dados:

# Usando read.csv2() - (uma das mais lentas, fç antiga)
system.time(df_teste1 <- read.csv2("TemperaturasGlobais/TemperaturasGlobais.csv"))

# Usando read.table() - (performance melhor)
system.time(df_teste2 <- read.table("TemperaturasGlobais/TemperaturasGlobais.csv"))

# Usando fread() - (fç mais recente, mais rápida e conveniente, menos tamanho ocupado na memória)
?fread
system.time(df <- fread("TemperaturasGlobais/TemperaturasGlobais.csv"))




# Criando subsets dos dados carregados (filtro por país) (tratar valores na)
cidadesBrasil <- subset(df, Country == 'Brazil')
cidadesBrasil <- na.omit(cidadesBrasil)
head(cidadesBrasil)
nrow(df)
nrow(cidadesBrasil)
dim(cidadesBrasil)



# Preparação e Organização

# Converter as Datas
cidadesBrasil$dt <- as.POSIXct(cidadesBrasil$dt,format='%Y-%m-%d')
cidadesBrasil$Month <- month(cidadesBrasil$dt)
cidadesBrasil$Year <- year(cidadesBrasil$dt)


# Carregando os subsets (ao invés de criar um grafico com todas as cidades e todos os anos)

# Palmas
plm <- subset(cidadesBrasil, City == 'Palmas')
plm <- subset(plm, Year %in% c(1976,1846,1896,1946,1996,2012))

# Curitiba
crt <- subset(cidadesBrasil, City == 'Curitiba')
crt <- subset(crt, Year %in% c(1976,1846,1896,1946,1996,2012))

# Recife
recf <- subset(cidadesBrasil, City == 'Recife')
recf <- subset(recf, Year %in% c(1976,1846,1896,1946,1996,2012))



# Construindo plots
p_plm <- ggplot(plm, aes(x = (Month), y = AverageTemperature, color = as.factor(Year))) +
  geom_smooth(se = FALSE, fill = NA, size = 2) +
  theme_light(base_size = 20) +
  xlab("M�s")+
  ylab("Temperatura M�dia")+
  scale_color_discrete("")+
  ggtitle("Temperatura M�dia ao longo dos anos em Palmas")+
  theme(plot.title = element_text(size=18))


p_crt <- ggplot(crt, aes(x = (Month), y = AverageTemperature, color = as.factor(Year))) +
  geom_smooth(se = FALSE, fill = NA, size = 2) +
  theme_light(base_size = 20) +
  xlab("M�s")+
  ylab("Temperatura M�dia")+
  scale_color_discrete("")+
  ggtitle("Temperatura M�dia ao longo dos anos em Curitiba")+
  theme(plot.title = element_text(size=18))

p_recf <- ggplot(recf, aes(x = (Month), y = AverageTemperature, color = as.factor(Year))) +
  geom_smooth(se = FALSE, fill = NA, size = 2) +
  theme_light(base_size = 20) +
  xlab("M�s")+
  ylab("Temperatura M�dia")+
  scale_color_discrete("")+
  ggtitle("Temperatura M�dia ao longo dos anos em Recife")+
  theme(plot.title = element_text(size=18))


# Plotando
p_plm
p_crt
p_recf



# Fim













            
            
            
            
            

