#gráficos
#criando dados
dados<- c(3,4,2,2,1)

plot(dados) #plot simples de pontos
plot(dados,type="l") # gráfico de linha
plot(dados,type="o") # gráfico de pontos com linhas

#histograma

hist(dados)

#Grafico de barras
barplot(dados)

  
#Boxplot
boxplot(dados)
#Gráfico de pizza
pie(dados)


#adicionando detalhes
barplot(dados, # gráfico
main="Título do gráfico", # título
xlab="Nome do eixo X",  # Eixo x
ylab="Nome do eixo Y",
names.arg=c("Segunda","Terça","Quarta","Quinta","Sexta")) # nomes no eixo X
