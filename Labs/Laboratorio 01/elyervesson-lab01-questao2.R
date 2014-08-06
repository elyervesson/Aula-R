#lab01 - Questão 2

setwd('C:/Users/elyervesson')
dados_ = read.csv('C:/Users/elyervesson/Aulas-R/Labs/Laboratorio 01/resultado-lab01-questao1.txt', sep=" ")

#with(dados onde estao as informações, aggregate(lista com todos os valores dos salarios,lista com as regiões presentes em _data,media))
media_salarial = with(dados_,aggregate(Salario.Bruto, list(Regiao), mean))

#altera o nome da primeira coluna para "Regiao" e o nome da segunda coluna para "Media.Salarial"
colnames(media_salarial) <- c("Regiao", "Media.Salarial")

#ordenar a tabela pela ordem das medias em ordem decrescente
media_salarial = media_salarial[order(media_salarial$Media.Salarial,decreasing=TRUE),]

write.table(media_salarial, file="C:/Users/elyervesson/Aulas-R/Labs/Laboratorio 01/resultado-lab01-questao2.txt", row.names=F)