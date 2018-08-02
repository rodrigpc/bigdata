#correlação
#medida de relação de duas variáveis
View(Orange)

data(Orange)

#checar dados com gráfico de pontos
plot(Orange$age,Orange$circumference)

#correlação Person
cor(Orange$age,Orange$circumference) # padrão
cor(Orange$age,Orange$circumference, method="pearson") 

#teste estatístico
cor.test(mtcars$mpg,mtcars$wt, method="pearson") 

#Outros tipos de correlação
cor.test(Orange$age,Orange$circumference, method="kendall") 
cor.test(Orange$age,Orange$circumference, method="spearman") 

#######################################
#multiplas variáveis 
#matriz de correlação

data(mtcars)

cor(mtcars)
m<- cor(mtcars)
View(m)

library(Hmisc)


library(corrplot)

?corrplot
corrplot(m) # padrão com círculos
corrplot(m, method="color") #cores
corrplot(m, method="ellipse") #elípses
corrplot(m, method="shade") # tons
corrplot(m, method="number") #números

#posição
corrplot(m,type="upper")
corrplot(m,type="lower",method = "number")

#números

#matriz e gráficos mais complexos

install.packages(Hmisc)
library(Hmisc)
m<- rcorr(as.matrix(mtcars)) #coeficiente de correlação, n e valor p
m

m$r # matriz de coeficiente de correlação
m$P # matriz de valor p

corrplot(m$r,p.mat=m$P,sig.level= 0.005)

corrplot(m$r,p.mat=m$P,sig.level=0.001,method="number",type="upper")



#alternativa para matriz
install.packages(("PerformanceAnalytics"))
library("PerformanceAnalytics")
md<- mtcars[,c(1,3,4,5,6,7)] # filtrando apenas algumas colunas
chart.Correlation(md, histogram = TRUE)


# A distribuição de cada grupo está na diagonal
# metade inferior: gráficos de pontos com linha de aproximação
# metade superiorOn the top of the diagonal : the value of the correlation plus the significance level as stars
# cada nível de significância está associado a um simbolo => valor p(0, 0.001, 0.01, 0.05, 0.1, 1) <=> símbolo(“***“,”**“,”*”, “.”, " “)