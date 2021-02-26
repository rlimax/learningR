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
  # carregar pacote
  library("dlookr")

# Verifica pacotes carregados
search()

# Descarregar pacote
detach(package:dlookr)
detach(package:graphics)

# Resolução de conflitos
  #Utiliza-se nomePacote::função
  #MASS::mrvnorm
x <- MASS::mvrnorm(n=100, mu, Sigma)

#
