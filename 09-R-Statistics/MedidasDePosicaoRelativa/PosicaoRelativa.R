# Medidas de Posi��o Relativa

# Definindo a pasta de trabalho
setwd("")
getwd()


# Carregando o dataset
carros <- read.csv("carros.csv")

# Resumo dos dados
head(carros)
str(carros)

# Medidas de Tend�ncia Central (c=vetor de string(representando os titulos das colunas do dataset))
summary(carros$ano)
summary(carros[c('preco', 'kilometragem')])


## Explorando vari�veis num�ricas (vetor c com os valores dos percentis que quero retornar)
mean(carros$preco)
median(carros$preco)
quantile(carros$preco)
quantile(carros$preco, probs = c(0.01, 0.99))
quantile(carros$preco, seq(from = 0, to = 1, by = 0.20))
IQR(carros$preco) # Diferen�a entre Q3 e Q1
range(carros$preco)
summary(carros$preco)
diff(range(carros$preco))


##f�s em R:grupo de c�digo armazenado dentro do obj.
##Criar f�s ou usar as f�s builtin
##diff (calcular a diferen�a entre valor m�x e min).