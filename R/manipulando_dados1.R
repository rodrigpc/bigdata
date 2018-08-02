#manipulando data frames
#visualizando

View(dados1) #visualiza a tabela
head(dados1)# mostra as primeiras linhas de cada coluna
names(dados1) # mostra os nomes das colunas
str(dados1) # mostra a estrutura do data frame


#acessando elementos do data frame
# dataframe[linha, coluna]

dados1[2,3] # acessa o elemento localizado na segunda linha e terceira coluna

dados1[1,] # acessa a primeira linha (todas as colunas)

dados1[,3] # acessa a terceira coluna

dados1$altura #acessa a coluna "altura"

dados1[,"altura"] #idem


# é possível utilizar funções nas colunas de um data frame
mean(dados1$altura) #média da coluna 'altura'

###########################
#Filtrando dados



feminino<- dados1[dados1$genero=="feminino",]

View(feminino)

altos<- dados1[dados1$altura>1.6,]


dados1_<- dados1[,-1] #exclui uma coluna

