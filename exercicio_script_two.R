# Remova todos os objetos do ambiente de trabalho
rm(list = ls())                         # Limpa objetos da memória

# Crie objetos com nomes dados_2010_10_10, dados_2010_11_10, dados_2013_10_10,
# dados_2013_11_10. Faça com que os objetos sejam do tipo numérico, character,
# lógico e inteiro.
# Verifique a classe e a estrutura dos objetos criados.
dados_2010_10_10 <- c(1.0,2.0,3.0,4.3,5.1)
dados_2010_11_10 <- c("one","two","three","four","five")
dados_2013_10_10 <- c(TRUE, FALSE, TRUE, FALSE)
dados_2013_11_10 <- c(1L,2L,3L,4L,5L)

class(dados_2010_10_10)                 #
class(dados_2010_11_10)                 # Classe dos objetos
class(dados_2013_10_10)                 #
class(dados_2013_11_10)                 #

str(dados_2010_10_10)                   #
str(dados_2010_11_10)                   # Estrutura dos objetos
str(dados_2013_10_10)                   #
str(dados_2013_11_10)                   #

# Use ls() para listar apenas os dados de Novembro, E depois para listar apenas
# os dados de Outubro. Use rm() para remover apenas os dados de outubro.
# Dica: Você vai precisar do resultado de ls().
ls(pattern = "11_10")                   #
ls(pattern = "10_10")                   # Pesquisa

rm(list = ls(pattern = "10_10"))        # Remove com base na pesquisa

# Salve sua área de trabalho com o nome exercício_objetos.RData.
# Salve apenas dados_2010_11_10 com o nome dados_2010_11_10.RData
save.image(file = "exercicio_objetos.RData")
save(dados_2010_11_10,file = "dados_2010_11_10.RData")


# Carrega arquivos
rm(list = ls())
load("dados_2010_11_10.RData")
load("exercicio_objetos.RData")

