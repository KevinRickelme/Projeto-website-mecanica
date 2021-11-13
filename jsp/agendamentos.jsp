<%@page language="java" import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	// cria as variaveis e armazena o conteudo que o usuario escreveu
	String nomeCliente  = request.getParameter("nomeCliente") ;
	String emailCliente = request.getParameter("emailCliente") ;
	String   telefone   = request.getParameter("telefone") ; 
	String dataAgendada = request.getParameter("dataAgendada") ;
	String horaAgendada = request.getParameter("horaAgendada") ;
	String    opcao     = request.getParameter("opcao") ;
	String   mensagem   = request.getParameter("mensagem") ;

	// cria as variaveis para acesso ao banco de dados
	String banco = "ceavelmix" ;
	String url = "jdbc:mysql://localhost:3306/"+banco ;
	String usuario = "root" ;
	String senha   = "" ;
	String driver  =  "com.mysql.jdbc.Driver" ;

	// carregar o driver na memoria
	Class.forName( driver ) ;

	// variavel de conexao 
	Connection conexao ;

	// abre a conexao com o banco de dados
	conexao = DriverManager.getConnection( url, usuario , senha ) ;

	String sql = "insert into agendamentos (nomeCliente, emailCliente, telefone, dataAgendada, horaAgendada, opcao, mensagem) values ('" + nomeCliente + "','" + emailCliente + "','" + telefone + "','" + dataAgendada + "','" + horaAgendada + "','" + opcao + "','" + mensagem + "')";

	Statement stm = conexao.createStatement() ;

	stm.executeUpdate(  sql  ) ; 

	stm.close();
	conexao.close() ;

	out.print("<br> <br>") ;
	out.print("Agendamento criado com sucesso. Aguarde um email com a confirmação. Muito obrigado por nos dar essa chance de ter você como nosso cliente.") ;
	out.print("<a href='../home/home.jsp'>Voltar ao site</a>");

%>