#Análise exploratória de dados com xda

iris<- iris

library(devtools)
install_github("ujjwalkarn/xda")

library(xda)

#resume as variáveis numéricas
numSummary(iris)

#resume as variáveis categóricas/qualitativas
charSummary(iris)

#dados bivariados
bivariate(iris,'Species','Sepal.Length')

#gráficos
Plot(iris,'Petal.Length') # faz o gráfico de petal.lnegth com as outras variáveis
Plot(iris,'Sepal.Length') # faz o gráfico de petal.lnegth com as outras variáveis
