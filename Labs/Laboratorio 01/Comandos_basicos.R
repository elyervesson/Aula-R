#COMANDOS BASICOS DO R

#HELP
help(comando) #apresenta documentação do comando em questão
?comando

example(comando) #executa o exemplo contido na documentação do comando

#ATRIBUIÇÃO

#podem ser usados para atribuição o "=", "->" ou "<-"
#mesmo resultado para os três casos
x = 10
x <- 10
10 -> x

#CONDICIONAL

#sintaxe basica
if (condição logica) {
  ...
} else {
  ...
}

#tambem pode ser usado o ifelse() para operações condicionais com vetores
x = -5:5
y = ifelse(x > 0, x*2, x*5) #ifelse(teste, caso sim, caso não)
y

# entre os operadores condicionais, temos:
# |: or
# &: and
# ==: igual a

#FILTRO

#Pode-se aplicar um filtro dos dados baseados em condicoes

#Para vetores:
x.filtrado = x[condicao]

#Para estrutura com duas dimensões:
x.filtrado = x[condicao,] #filtra as linhas onde a condicao é TRUE

x = -5:5 #vetor que vai de -5 ate 5
x.positivos = x[x > 0] #vetor que vai de 1 a 5

df = data.frame(X = -10:10, Y = 0:20) #atribuição
df
df.filtrado = df[df$X > 0,] #pega todas as linhas onde o valor eh maior que 0
df.filtrado = subset(df, X > 0) subset(tabela, condicao) #igual ao anterior
df.filtrado

#Um outro filtro usado eh o which, que retorna o indice dos elementos que
#satisfazem a condição

x = c( 1, -4, 3 , 5, -2, -5)
which(x < 0) #deve retornar os indices 2, 5 e 6

#LOOPS E ITERADORES

#for
for (i in <vetor>) {
  ...
}

#while
while (condicao) {
  ...
}




