#xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
#
#       Configuração o Git e Github para o RStudio no seu Computador
#
#xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx


# 1	Crie uma conta gratuita no GitHub  https://github.com/
# 2	Download o git neste link https://git-scm.com/downloads
# 3	Instale o git e depois abra-o.
# 4	Configurando via Rstudio
# 4.1 Instale o pacote usethis e carregue-o
  library(usethis)

  #4.2 Configure o Github para o RStudio do seu computador com o Git
  usethis::use_git_config(user.name = "astuciasnor", # Seu nome
                          user.email = "astuciasnor@gmail.com") # Seu email

# 5	Criar um novo token ou regenerar o token (codigo de 40 dig será produzido)
  usethis::create_github_token() # Muda para o site do github para fazer login

# 6 Depois que fizer login, gere o token na própria página do github e o copie.

    # Você deverá colocar esse número no arquivo .Renviron.
    # O .Renviron é um arquivo de configuração do R que permite que você
    # especifique variáveis de ambiente para que fiquem disponíveis para o R.
    # Ele é muito usado para disponibilizar senhas, chaves de API, …
    # - coisas que são secretas - e por isso não é boa prática colocá-las
    # no código.

# 7 Abra o o arquivo .Renviron
  usethis::edit_r_environ()

# 8 Crie uma nova linha na forma: GITHUB_PAT=SEU_TOKEN. Exemplo
  GITHUB_PAT=ghp_Ko3mdlNJpBzQ7lvzKTvGFg91f6HpBQlablalba

# 9) Após adicionar o token copiado do site, pule uma linha e salve o arquivo.
# 10)	Reinicie o RStudio: CTRL + SHIFT + F10

# 11) Método 1: Clonando um repositório do Github (Ver dicas no material
    # que preparei no Word

#    Método 2 - Criando um Repositório Novo no Github via RStuido
  usethis::create_project(path = "D:/Git/TutoriaisGitGithub/ProjetoGit3.2")
  usethis::use_git()

# Outro teste:
  usethis::create_project(path = "D:/Git/TutoriaisGitGithub/ProjetoGit3.2.4")
  usethis::use_git()    # Digite no console desse projeto para ligá-lo ao Git
  usethis::use_github() # Digite no console desse projeto para levá-lo ao Github

# Posso carregar um projeto que já possuo no computador e digitar no console:
  usethis::use_git()    # Para conectar com o Git
  usethis::use_github() # Para criar na minha página do Github

  # Pronto, seu projeto já está no github para começar os versionamentos !!!

# Método 3 - Clonando repositório do RStudio forkado
  usethis::create_from_github(
  	repo_spec = "https://github.com/beatrizmilz/RLadies-Git-RStudio-2019/",
  	destdir = "D:/Git/TutoriaisGitGithub/", fork = TRUE)

  usethis::create_from_github(
  	repo_spec = "https://github.com/Evaldo-Martins-STAT/laquipedados",
  	destdir = "D:/dados_evaldo/scripts_git",
  	fork = TRUE)

# Após clonar como fork, fazer as contribuições e solicitar ao proprietário
# as modificações
  # 1) Criando um branch
  usethis::pr_init(branch = "teste_evaldo")
  # 2) Faça as contribuiçõees no no arquivo Read.me
  # 3) Faça só o commit, mas não o push agora !!
  # 4) Faça o push com a função abaixo:
  usethis::pr_push()
    #    A página do GitHub se abrirá para completar a requisão
  # 5) Clique em Create Pull Request e aguarde o mantenedor aceitar alterações
  # 6) Caso mantenedor tenha aceito, na master atualizar o conteúdo no seu RStudio
  # clicando no botão pull (o mantenedor pode ter feito pequenos ajustes)
  # 6) Deletar o ramo (branch) criado
  usethis::pr_finish()


