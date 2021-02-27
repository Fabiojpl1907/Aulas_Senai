**gitSequencia básica Git** 

- Instalar o Git em sua maquina :

 https://git-scm.com/book/pt-br/v2/Come%C3%A7ando-Instalando-o-Git



- Comados básicos via terminal 

  - Identificar versão do Git : **git --version**

  

- Ativar repositório via terminal

  - Ir até o diretório de trabalho onde esta os arquivos / estrutura a ser incluida no Git
  - **git init** 
  - **git add**
  - **git commit -m  "colocar messagem que esclareca o comit"**   
  - **git status**    

- Levar para oGitHub

  - confirmar se user e email do Git e Git hub são iguais
    
  - verificar conta no git :  **git config --list**
    
  - criar repositório no GitHub

  - copiar URL do repositório criada

  - Executar no terminal

    - **git status**

    - **git remote add origin** *urlcopiada*

    - **git remote -v**

    - **git push origin master**

      

- Trazer do Github

  - **git pull origin master**






**Conceitos Gerais do GIT**

 

Git utiliza um algorismo de encriptação chamado SHA1 que é uma função de dispersão criptográfica, desta forma, ele encapsula cada estrutura hierarquica do Git, no caso:

1. Os Blobs (que seria os arquivos);
2. As Trees (que seria os diretórios onde estão os arquivos (blobs) rastreados pelo Git);
3. E os Commites que possui informações especifica sobre o autor, timestamp, mensagem, e sobre a estrutura de blobs e trees (que são um rótulo a toda a estrutura modificada (diretórios/arquivos)).
4. 

**Controle Documento** 

Versão 1 : Registro de comandos básico