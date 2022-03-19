# Revis�o 1

# Definindo a pasta de trabalho
setwd("")
getwd()

# Carregando o dataset
amostras <- read.csv("amostras.csv", fileEncoding = "windows-1252")

# Resumo do dataset
View(amostras)
str(amostras)
summary(amostras$AmostraA)
summary(amostras$AmostraB)

# M�dia
# A m�dia de uma vari�vel de observa��o � uma medida num�rica da localiza��o central dos valores dos dados. 
# � a soma de seus valores de dados divididos pela contagem de dados.

# Mediana
# A mediana de uma vari�vel � o valor no meio quando os dados s�o classificados em ordem crescente. 
# � uma medida ordinal da localiza��o central dos valores de dados.

# Vari�ncia
# A vari�ncia � uma medida num�rica de como os valores dos dados est�o dispersos em torno da m�dia.

# Desvio Padr�o
# O desvio padr�o de uma vari�vel � a raiz quadrada de sua vari�ncia.


# Exemplo 1 - Comparar as amostras dos pre�os de a��es
# Que medidas usar?
# M�dia, Desvio Padr�o e CV
mean(amostras$AmostraA)
mean(amostras$AmostraB)
sd(amostras$AmostraA)
sd(amostras$AmostraB)
cvA <- sd(amostras$AmostraA) / mean(amostras$AmostraA) * 100
cvB <- sd(amostras$AmostraB) / mean(amostras$AmostraA) * 100
cvA
cvB


# Exemplo 2 - Comparar as amostras de produtos fabricados
# Que medidas usar?
# Vari�ncia
var(amostras$AmostraA)
var(amostras$AmostraB)


# Exemplo 3 - Comparar as amostras na produ��o de camisas
# Que medidas usar?
# Moda
calculaModa <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

calculaModa(amostras$AmostraA)
calculaModa(amostras$AmostraB)


# Exemplo 4 - Comparar as amostras das notas de alunos
# Que medidas usar?
# Mediana
median(amostras$AmostraA)
median(amostras$AmostraB)




