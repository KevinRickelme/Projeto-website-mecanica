<%@page language="java" import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	// cria as variaveis e armazena o conteudo que o usuario escreveu
	String usuario1  = request.getParameter("usuario1") ;
	String senha1 = request.getParameter("senha1") ;

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

	String sql = "Select * from login where usuario='"+ usuario1 +"' and senha = '"+ senha1 +"'";

	Statement stmt = conexao.createStatement() ;
	ResultSet qq = stmt.executeQuery(sql) ;

		if(qq.next()){
				session.setAttribute("usuario1", usuario1);
				response.sendRedirect("../logado/Agendamentos2/agendamento.jsp");}
			else{
				response.sendRedirect("../homeErro/senha.jsp#bg");
			}


	stmt.close();
	conexao.close() ;
%>