#lab01 - Questão 1

setwd('C:/Users/elyervesson')
dados = read.csv('Aulas-R/Labs/Laboratorio 01/salarios-ti-formatted.csv')

nordeste = c("MA","PI","CE","RN","PB","PE","AL","SE","BA")
centro_oeste = c("DF","GO","MS","MT")
sudoeste = c("RJ","SP","MG","ES")
sul  = c("RS","SC","PR")
norte  = c("PA","AC","AM","RR","RO","TO","AP")

#pega as linha onde a coluna UF é igual a "PB"
#tabela_nordeste = dados[dados$UF == "PB",]

tabela_nordeste = dados[is.element(dados$UF, nordeste),] #pega as linhas onde 'is.element(dados$UF, nordeste)' 
                                                         #der verdadeiro e adiciona a tabela_nordeste

#tabela_nordeste2 = dados[dados$UF %in% nordeste,]      #faz a mesma coisa do comando a cima, em 'dados$UF %in% nordeste'
                                                        #eh verificado se cada dado$UF esta no vetor nordeste

tabela_centro_oeste = dados[dados$UF %in% centro_oeste,]
tabela_sudoeste = dados[dados$UF %in% sudoeste,]
tabela_sul = dados[dados$UF %in% sul,]
tabela_norte = dados[dados$UF %in% norte,]

# adciona uma coluna Região com a região correspondete a cada linha
tabela_nordeste$Regiao = "Nordeste"
tabela_centro_oeste$Regiao = "Centro-oeste"
tabela_sudoeste$Regiao = "Sudoeste"
tabela_sul$Regiao = "Sul"
tabela_norte$Regiao = "Norte"

#adiciona uma tabela a baixo da outra para gerar a tabela final
tabela = rbind(tabela_nordeste,tabela_centro_oeste)
tabela = rbind(tabela,tabela_sudoeste)
tabela = rbind(tabela,tabela_sul)
tabela = rbind(tabela,tabela_norte)

write.table(tabela, file="Aulas-R/Labs/Laboratorio 01/resultado-lab01-questao1.txt", row.names=F)