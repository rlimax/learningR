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
