# Jellyfish

Este é um projeto, de nome jellyfish, tem como objetivo inicial construir uma api em Ruby on Rails para estudo.


Tabela de conteúdos
=================
<!--ts-->
   * [Environments](#environments)

<!--te-->
<br>
<br><br><br><br><br><br><br><br><br><br><br>

# Environments
Os dados sensíveis da aplicação, senha de banco de dados etc, são armazenadas no arquivo **config/application.yml**. Por uma questão de segurança este arquivo deve ser criado manualmente após ser baixado do repositório e deve seguir o padrão abaixo:

```yml
db_host: '172.17.0.3'   # Host do servidor de dados
db_port: '5432'         # Porta do servidor de dados
db_name: 'jellyfish'    # Nome da base de dados
db_username: 'postgres' # usuário do servidor de dados
db_password: 'postgres' # senha do servidor de dados
  ```
