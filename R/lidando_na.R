#como lidar com valores inexistentes

na.omit() #remove as linhas com NA

?complete.cases() # retorna observações completas

is.na() # identifica os NA


na.rm #funções como mean, sd


dados<-data.frame("a"= c(1,3,NA), "b"= c("x",NA,"y"))
dados

na.omit(dados)

is.na(dados)
