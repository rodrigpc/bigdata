#exercícios explicação
#revisão

data() #acesso aos datasets do R

View(ChickWeight)

frango<- ChickWeight

View(frango)

str(frango) # estrutura

# graficos

hist(frango$weight)
boxplot(frango$weight)
plot(x=frango$Time,y=frango$weight)

plot(x=frango$Diet,y=frango$weight)

#estatística básica

table(frango$Time)# table conta cada elemento unico em uma coluna
table(frango$Diet)

mean (frango$weight)
sd(frango$weight)

# diferenças específicas
tapply(frango$weight,frango$Diet,mean) # cada dieta

tapply(frango$weight,frango$Time,mean) # cada tempo


#teste estatístico
#dietas
x1<- frango[frango$Diet==1,]
x2<- frango[frango$Diet==2,]
x3<- frango[frango$Diet==3,]
x4<- frango[frango$Diet==4,]

View(x1) #visualização 

t.test(x1$weight,x3$weight) #maior diferença

t.test(x3$weight,x4$weight) # maiores números

