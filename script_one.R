# Plotar gráfico com valores de 1 a 10
plot(1:10)

# Atribui valor para variável
x <- 15

# Enetendendo função com autocomplete
  #Usa-se TAB

# Entendendo função com a documentação
  # função{pacote}
  # Description - Descrição
  # Usage - Forma de uso
  # Arguments - Parâmetros
  # Value - Retorno
  # Referencias / Funções relacionadas e exemplos
?mean
help("mean")
?boxplot
help("boxplot")

# Busca por termos
??"normal distribution"
help.search("normal distribution")

# Gestão de pacotes
  # remover pacote
  remove.packages("dlookr")
  # atualizar pacote
  update.packages("dlookr")
  # instalar pacote
  install.packages("systemfonts")
  install.packages("gdtools")
  install.packages("svglite")
  install.packages("hrbrthemes")
  install.packages("kableExtra")
  install.packages("dlookr")
  install.packages("MASS")
  # carregar pacote
  library("dlookr")
  library("MASS")

# Verifica pacotes carregados
search()

# Descarregar pacote
detach(package:dlookr)
detach(package:graphics)

# Resolução de conflitos - Caso haja funções de mesmo nome
  #Utiliza-se nomePacote::função
  #MASS::mrvnorm
x <- MASS::mvrnorm(parametro1, parametro2, parametro3)


# Exemplo de uso
Sigma <- matrix(c(10,3,3,2),nrow=2,ncol=2) # Matrix de Variância-Covariância
mu <- c(1,10) # Médias
x <- mvrnorm(n=100, mu, Sigma) # Gerar 100 observações
#
