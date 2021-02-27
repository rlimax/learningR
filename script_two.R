# Operador de atribuição
  # <- Mais utilizado
    # Também é função
  # = Utilizado para atribuição de valores em parâmetros

x1 <- 10       # Operador de atribuição
`<-`("x1",15)  # Sintaxe de função de <-

x2 = 20        # Também funciona para atribuir valores para variáveis
assign("x3",4) # Também uma função de atribuição1

# Depois de atribuido o valor à variável pode-se utilizá-las
x1+x2+x3
x1/x2
x1*x2
y <- x1 * x2 + x3

# Concatenando valores c(valor1,valor2,...)
x3 <- c(x1,x2,2,x3)
x3
x4 <- c("a","b","c")
x4

# Classe de vetores
numero <- c(546.4,10,780)
inteiro <- c(1L, 98L)
complexo <- c(20i, 2+9i)
texto <- c("Nome1","Nome2")
logico <- c(TRUE,FALSE,TRUE)

class(numero)     #
class(inteiro)    #
class(complexo)   #   Retorno das classes dos valores nas variáveis  
class(texto)      #
class(logico)     #


# Teste de classe
is.numeric(numero)      #
is.character(numero)    #
is.character(texto)     #   Retorna TRUE ou FALSE para validação do tipo
is.logical(texto)       #

# Conversão de classe
as.character(numero)
as.numeric(numero)
as.integer(numero) # Desconsidera decimal, não arredonda.
as.numeric(logico)
as.numeric("001232")

# Estrutura de objeto
str(numero)
str(logico)
str(texto)
str(complexo)

# Tamanho de objeto
length(x1)
length(x2)
length(x3)
length(y)
length(logico)
length(texto)

# Elementos de vetor
numero[1]                                         # Retorna a posição 1
numero[c(1,2)]                                    # Retorna as posições 1 e 2
numero[-1]
numero[-c(2,3)]                                   # Retorna sem posições 2 e 3

# Nomes
names(numero)                                     # Retorno sem nomes - NULL
names(numero) <- c("numero1","numero2","numero3") # Nomeia posições
numero                                            # Exibe os nomes atribuidos
numero["numero2"]                                 # Acesso ao valor pelo nome
numero[c("numero1","numero3")]                    # Acesso pela lista de nomes

# ALteração de valores
numero[1] <- 99                   # Altera unica posição
numero[2:3] <- c(33,44)           # ALtera intervalo
numero[c(1,3)] <- c(00,11)        # Altera valores intercalados
numero[10] <- -4                  # Quando índice maior o intervalo recebe NA

# Deletar elemento
logico <- logico[-2]              # Deletado o índice 2
logico
logico[3:6] <- c(FALSE,FALSE,TRUE,FALSE)
logico <- logico[-5]

# Nomeando colunas
names(numero) <- c("numero1","numero2","numero3","numero4","numero5","numero6","numero7","numero8","numero9","numero10")
# Excluindo colunas
numero <- numero[-4:-9]

# Ordenando vetores
order(numero)                     # Ordena indices pelos valores que guardam
numero[order(numero)]             # Ordena os valores
sort(numero)                      # Ordena os valores direto
order(numero, decreasing = TRUE)  # Ordem decrescente
sort(numero, decreasing = TRUE)   # Ordem decrescente

# Listar objetos carregados
ls()
objects()

# Remover objetos
rm(x3)
remove(x3)

# Guardar vetor de objetos
lista_obj <- ls()
lista_obj

# Busca de objetos - Pattern
raa <- "golf"
graa <- 99
ls(pattern="raa")              # Busca variáveis que contenham "raa" no nome

# Remover todos os objetos
rm(list=ls())                  # Remove todas as variáveis
rm(list = ls(pattern = "raa")) # Remove as variáveis com o padrão de busca


# Salvar área de trabalho
save.image(file = "workplace.RData")  # Salva com todas as variáveis

# Remover todos os objetos para verificar salvamento anterior
rm(list = ls())               # Remove
ls()                          # Verifica

# Carregar área de trabalho salva
load(file = "workplace.RData")        # Carregar todas as variáveis
ls()                          # Verifica
