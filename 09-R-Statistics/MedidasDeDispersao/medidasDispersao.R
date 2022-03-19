# Medidas de Dispers�o

# Definindo a pasta de trabalho
setwd("")
getwd()

# Carregando o dataset
vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

# Resumo do dataset
View(vendas)
str(vendas)
summary(vendas$Valor)

# Vari�ncia (de qual coluno desejo efetuar o c�lculo)
var(vendas$Valor)

# Desvio Padr�o (aqui tb escolho a coluna que irei efetuar o c�lculo)
sd(vendas$Valor)

