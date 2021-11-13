<h1 align="center"> Projeto website para uma mecânica</h1> <br>
<div align="justify">
  <a>
    Este projeto foi desenvolvido para o módulo Implantação de Sistemas para a Faculdade ENIAC no segundo semestre de 2019. O projeto desenvolvido recebeu um reconhecimento como um dos melhores projetos do semestre em questão. <br><br>O objetivo do projeto era fornecer um site de visitas para a mecânica, onde os visitantes teriam um primeiro contato com a mecânica antes mesmo de visitá-la fisicamente.
  </a>
</div>
<br>

#

<h1>Tecnologias utilizadas: </h1>
<ul>
  <li>
    <a>
      HTML5
    </a>
  </li>
    <li>
    <a>
      CSS3
    </a>
  </li>
    <li>
    <a>
      JAVASCRIPT
    </a>
  </li>
    <li>
    <a>
      Java Server Pages (JSP)
    </a>
  </li>
</ul>

#

<h1>Imagem da home do site:</h1+
  <div>
    
  <img src="https://user-images.githubusercontent.com/75383862/141649703-4aaf938b-21e6-4e3f-b2c2-c29adf09e4d1.png">

  </div>
  
<h1> Quer testar? </h1>

Passo-a-passo para abrir o site em seu computador:

<pre>

### instalar XAMPP + Servidor TOMCAT ###

XAMPP ---> ATIVAR APACHE E MYSQL.

TOMCAT ---> BAIXAR E INICIAR. 

1. INSERIR OS ARQUIVOS DESTA PASTA EM UMA PASTA (RECOMENDO CHAMAR DE "ceavelmix");

2. ACESSAR "http://localhost/phpmyadmin/";

3. CRIAR UMA BASE DE DADOS COM O NOME "ceavelmix";

4. CRIAR UM BANCO DE DADOS (TABELA) DENTRO DA BASE DE DADOS "ceavelmix" CHAMADA "agendamentos";

	CODIGO: create table agendamentos (
			nomeCliente varchar(50),
			emailCliente varchar(50),
			telefone varchar(16),
			dataAgendada date,
			horaAgendada time,
			opcao varchar(34),
			mensagem varchar(400)
		)

5. CRIAR UMA OUTRA TABELA DENTRO DA BASE DE DADOS "ceavelmix" CHAMADA "login";

	CODIGO: create table login (
			idUsuario PRIMARY KEY AUTO_INCREMENT,
			nome varchar(50),
			usuario varchar(10),
			senha varchar(10)
		)

6. INSIRA NA TABELA LOGIN UM USUARIO E SENHA (USE USUARIO ADM);

	CODIGO: 
      insert into login (nome, usuario, senha) values ('administrador','adm','adm17556')

7. NA TABELA AGENDAMENTOS, COLOQUE O CODIGO QUE NÃO VAI DEIXAR O CLIENTE USAR UMA DATA E HORA QUE JÁ ESTEJA AGENDADA:
		    ALTER TABLE `agendamentos` ADD INDEX( `dataAgendada`, `horaAgendada`);

8. NA TABELA LOGIN, VÁ EM ESTRUTURA, SELECIONE A COLUNA "SENHA" E ENTRE EM "MUDA" (AO LADO DO LÁPIS). 
EM "Agrupamento (Collation)" SELECIONE A OPÇÃO latin1_general_cs. (É NECESSÁRIO POIS ESSA É UMA OPÇÃO COM CASE SENSITIVE, 
OU SEJA, LETRAS MAIUSCULA OU MINUSCULA FAZ DIFERENÇA);

9. PRATICAMENTE TUDO PRONTO;

10. AGORA, SE VOCÊ ESTIVER USANDO O TOMCAT FORA DO XAMPP, ACESSE O DIRETÓRIO:  
"C:\Program Files\Apache Software Foundation\Tomcat 9.0\webapps". COLOQUE A PASTA ceavelmix LÁ.

	SE ESTIVER USANDO O TOMCAT DIRETO NO XAMPP, VÁ EM C:\xampp\tomcat\webapps. COLOQUE A PASTA ceavelmix LÁ.


SE ESTIVER CORRETO, ACESSE O LINK "http://localhost:8080/ceavelmix/home/home.jsp", CASO CONSIGA ACESSAR, PRONTO. ESTÁ TUDO CERTO.



</pre>



  
