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

class(numero)
class(inteiro)
class(complexo)
class(texto)
class(logico)


# Teste de classe
