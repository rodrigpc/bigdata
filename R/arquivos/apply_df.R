#criar um dataset básico 2x2
#função data.frame - cria dataframes
dados2<- data.frame( "col1"= 1:5,
                     "col2"= c(5,6,9,10,20)
                     )

dados2

#apply -- aplica um função a linhas ou colunas de um dataframe ou matriz
apply(x, margem, função, outros argumentos)

apply(dados2,2,sum) #soma das colunas

apply(dados2,1,sum)# soma das linhas

apply(dados2,1,mean) #média das colunas


#tapply - aplica uma função a um subconjunto de um data frame
tapply(x, fator, função, outros argumentos)

#criando um data frame com subconjunto
dados3<- data.frame( "col1"= 1:5,
                     "col2"= c(5,6,9,10,20),
                     "col3"= c("a","b","b","a","a"))

dados3

tapply(dados3$col1,dados3$col3,sum)# média da coluna 1, baseado na coluna 3

tapply(dados3$col2,dados3$col3,mean)# média da coluna 2, baseado na coluna 3

