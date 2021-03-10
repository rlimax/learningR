funcionarios <- data.frame(nome = c("João","Maria","José"),
                           sexo = c("M","F","M"),
                           salario = c(1000,1200,1300),
                           stringsAsFactors = FALSE
                          )

funcionarios

str(funcionarios)         # Estrutura do dataframe
rownames(funcionarios)    # Nomes das linhas
colnames(funcionarios)    # NOmes da colunas/variáveis

names(funcionarios)       # Função trata colunas no dataframe

# Diferença entre dataframe e matrizes
  # dataframe pode possuir diversos tipos de dados
  # matrizes armazena somente um tipo
funcionarios <- as.matrix(funcionarios)   # Converte todos os tipos para character
funcionarios
funcionarios <- as.data.frame(funcionarios)
funcionarios
# Manipulação funciona como matrizes
funcionarios[-1,]                   # Retorna tudo menos a linha 1
funcionarios[1,1]                   # Primeira linha e coluna - matriz
funcionarios[1,1, drop = FALSE]     # Primeira linha e coluna - dataframe
funcionarios[3,c("nome","salario")] # Linha 3 variáveis nome e salário

# Altera valores como matrizes
funcionarios[1,"salario"] <- 1100
funcionarios


# Extras do dataframe $ e [[]]
funcionarios$nome             #
funcionarios[["nome"]]        # Sempre retornam vetor como resultado
funcionarios$salario          #
funcionarios[["salario"]]     #

# ALterando valor de coluna
funcionarios$salario[1] <- 1150
funcionarios
funcionarios[["salario"]][1] <- 1155
funcionarios

# Retornar dataframe como resultado
x <- funcionarios[1,1, drop = FALSE]          # Retorna dataframe
z <- funcionarios[,"salario", drop = FALSE]   # Retorna dataframe
w <- funcionarios["salario"]                  # Retorna dataframe
y <- funcionarios[2,1]                        # Retorna vetor, variavel

# Tabela resumo

# Criar coluna
funcionarios
# Com $
funcionarios$escolaridade <- c("Ensino Médio","Graduação","Mestrado")
# Com [,]
funcionarios[,"experiencia"] <- c(10,12,15)
# Com [[]]
funcionarios[["avaliacao_anual"]] <- c(7,9,10)
# Com função cbind() - column bind
funcionarios <- cbind(funcionarios, prim_emprego = c("sim","nao","nao"),
                      stringsAsFactors = FALSE)

# Remover colunas
funcionarios$prim_emprego <- NULL           # Remove com NULL
funcionarios <- funcionarios[, c(-4, -6)]   # Remove retornando filtrado
funcionarios

# Adicionar linhas

funcionarios[4,] <- c("Ana","F",2000,15)    # Causa coerção
str(funcionarios)                           # Todos assumem character

funcionarios$salario <- as.numeric(funcionarios$salario)
funcionarios$experiencia <- as.numeric(funcionarios$experiencia)

funcionarios[5,] <- data.frame(nome = "Cleide", sexo = "F",
                               salario = 2000, experiencia = 15,
                               stringsAsFactors = FALSE
                               )
# Adicionar linha com rbind()
rbind(funcionarios,
      data.frame(nome = "Fiuk", sexo = "F",
      salario = 2020, experiencia = 15,
      stringsAsFactors = FALSE)
)

# Não é bom ficar adicioando linhas e colunas.
# Sempre que possível pré-aloque espaço.

# Remover linhas
    # Remove linha 4
funcionarios <- funcionarios[-4,]                         
    # Remove linha onde salario > 1200
funcionarios <- funcionarios[funcionarios$salario > 1200,]
funcionarios


rm(list = c("w","x","z","y"))


# Seleções
funcionarios[funcionarios$salario > 1300,]  # salario > 1300
funcionarios[funcionarios$sexo == "M",]     # sexo = M


# Funções de conveniência
# SUBSET
# Selecionar linhas e colunas de dataframe
#subset(nome_do_dataframe,
#       subset = expressao_logica_filtro,
#       select = nomes_colunas,
#       drop   = simplificar_vetor?)
subset(funcionarios, sexo == "F")
subset(funcionarios, sexo == "M", select = c("nome","salario"))

# Funções de conveniência
# com WITH
with(funcionarios, (salario^3 - salario^2)/log(salario))
# sem WITH
(funcionarios$salario^3 - funcionarios$salario^2)/log(funcionarios$salario)

# Quatro maneiras de obter o mesmo resultado
subset(funcionarios, sexo == "M", select = "salario", drop = TRUE)
with(funcionarios, salario[sexo == "M"])
funcionarios$salario[funcionarios$sexo == "M"]
funcionarios[funcionarios$sexo == "M", "salario"]


# Funções nas colunas - SAPPLY / LAPPLY
# Aplicam a função em cada elemento
# Tenta simplificar o resultado
    # SAPPLY()
sapply(funcionarios[3:4], mean)

# Sempre retorna uma lista
    # LAPPLY()
lapply(funcionarios[3:4], mean)

# Filtrar variáveis antes de aplicar funções
    # FILTER()
filter(is.numeric, funcionarios)
filter(is.character, funcionarios)

# Filtro aplicado dentro da função
sapply(Filter(is.numeric, funcionarios), max)
sapply(Filter(is.numeric, funcionarios), mean)
