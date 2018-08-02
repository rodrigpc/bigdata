#Testes estatisticos - Correlação e teste T
#datasets no R
data() #mostra os datasets disponíveis


View(Orange)

#Correlação
?cor.test
cor.test(Orange$circumference,Orange$age)


#Teste T
?t.test
# | significa "ou"
laranja<- Orange[Orange$Tree=="1"|Orange$Tree=="2",]

t.test(laranja$circumference~laranja$Tree)
