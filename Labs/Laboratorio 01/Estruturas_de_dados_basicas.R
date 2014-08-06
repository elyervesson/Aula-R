
#ESTRUTURA DE DADOS BASICAS

#VETOR(uma dimensão)
v = vector(mode = "integer", length = 10) #atribuição
v #imprime conteudo da variavel na tela
is.vector(v) #verifica o tipo da estrutura de dados

#formas de atribuir valor ao vector v
v = c(1,2,3,4,5)
v
v = 1:5
v
v = seq(1,5)
print(v)

#ARRAY(n dimensões)
a = array(1:10, dim = c(5,2)) #atribuição, c(linhas,colunas)
a #imprime conteudo da variavel na tela
is.array(a) #verifica o tipo da estrutura de dados

a[1,2] #retorna o elemento da linha1, e coluna2
a[1,] #retorna todas as colunas da linha1
a[,1] #retorna todas as linhas da coluna1

#MATRIZ(array com duas dimensões)
m = matrix(1:10, nrow= 5, ncol = 2) #atribuição, nrow = linhas e ncol = colunas
m #imprime conteudo da variavel na tela
is.matrix(m) #verifica o tipo da estrutura de dados

#DATA FRAME(tabelas onde cada coluna pode ser de um tipo distinto)
df = data.frame(coluna1 = c("A","B","C"),
                coluna2 = c(1,2,3),
                coluna3 = c(TRUE, FALSE, TRUE)) #atribuição
df #imprime conteudo da variavel na tela
df$coluna1 #retorna a primeira coluna

df2 = data.frame(coluna1 = c("D","E","F"),
                 coluna2 = c(4,5,6),
                 coluna3 = c(FALSE,TRUE,FALSE)) #atrubuição
df2 #imprime conteudo da variavel na tela
df2$coluna2 #retorna a segunda coluna

df = rbind(df,df2) #COMBINA OS DATAFRAMES POR LINHA, MANTENDO COLUNAS
is.data.frame(df) #verifica o tipo da estrutura de dados
df #imprime conteudo da variavel na tela
df$coluna3 #retorna a teceira coluna

#LIST(tabelas onde cada atributo pode ter quantidades diferentes)
l = list(atributo1 = c("A","B","C"),
         atributo2 = c(1,2,3,4,5),
         atributo3 = c(TRUE,FALSE)) #atribuição, note que cada linha possue uma 
                                    #quantidade diferente de elementos
l #imprime conteudo da variavel na tela
is.list(l) #verifica o tipo da estrutura de dados


