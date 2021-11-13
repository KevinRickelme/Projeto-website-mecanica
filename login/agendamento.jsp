<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*" %>

<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="UTF-8">
		<title>Ceavel Mix de Peças</title>
		<link rel="stylesheet" href="../../index.css">
		<link rel="stylesheet" href="../../scrollbar.css">
		<link rel="stylesheet" href="../../style.css">
		<link rel="stylesheet" href="styles.css">
		<script src="https://kit.fontawesome.com/a076d05399.js"></script>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="Content-Type" content="text/html" charset=UTF-8>
		<script type="text/javascript"></script> 

	</head>
	<body>
		<% 
		String usuario1 = (String) session.getAttribute("usuario1");
		String senha1 = (String) session.getAttribute("senha1");
		String senha3= "abc";
		String usuario3= "def";
		if (usuario1==null && usuario1!="adm"){
			response.sendRedirect("../../homeErro/home.jsp#bg");
		}
		else{
			if (usuario1!=usuario3 && senha1!=senha3){
			out.print("Bem vindo, Administrador!");}
		}
		%>
		<img class="logo" src="../../imgs/logo.png" alt="Logo Ceavel Mix de Peças">
		
		<table class="info">
			<tr>
				<td><img src="../../imgs/telefone.png" class="imagens_info"></td>
				<td>  (11) 2402-1861</td>
				<td><img src="../../imgs/casa.png" class="imagens_info"></td>
				<td>R. Humberto Brochini, 390<br>Jardim Bela Vista, Guarulhos - SP<br></td>
				<td><img src="../../imgs/email.jpg" class="imagens_info"></td>
				<td> ceavelmix@hotmail.com</td>
				<td><img src="../../imgs/relogio.png" class="imagens_info"></td>
				<td> Seg. à Sex. 08:00 as 17:00</td>	
				<td><a href="../../deslogar/deslogar.jsp">Sair</a></td>
			</tr>
		</table>

		<nav>
			<input type="checkbox" id="check">
			<label for="check" class="checkbtn">
				<i class="fas fa-bars"></i>
			</label>
			<ul class="menu">
				<li class="linha"><a href="../Agendamentos2/agendamento.jsp">Agendamentos</a></li>
			</ul>
		</nav>
		     	
		<%

			String banco = "ceavelmix" ;
			String url = "jdbc:mysql://localhost:3306/"+banco ;
			String usuario = "root" ;
			String senha   = "" ;
			String driver  =  "com.mysql.jdbc.Driver" ;

			Class.forName( driver ) ;


			Connection conexao ;

			conexao = DriverManager.getConnection( url, usuario , senha ) ;

			String sql = "select * from agendamentos";
			Statement stm = conexao.createStatement() ;


			ResultSet dadosAgendamento = stm.executeQuery( sql ) ;

			out.print("<table border=1>") ;
			out.print("<tr>") ;
				out.print("<th>Nome</th>") ;
				out.print("<th>Email</th>") ;
				out.print("<th>Telefone</th>") ;
				out.print("<th>Data agendada</th>") ;
				out.print("<th>Hora agendada</th>") ;
				out.print("<th>Opção escohlida</th>") ;
				out.print("<th>Mensagem</th>") ;
			out.print("</tr>") ;

			while( dadosAgendamento.next() )
			{
				out.print("<br>") ;
				out.print("<tr class=alfa>") ;
					out.print("<td>") ;
						out.print( dadosAgendamento.getString("nomeCliente") ) ;
					out.print("</td>") ;

					out.print("<td>") ;	
						out.print( dadosAgendamento.getString("emailCliente") ) ;
					out.print("</td>") ;

					out.print("<td>") ;	
						out.print( dadosAgendamento.getString("telefone") ) ;
					out.print("</td>") ;

					out.print("<td>") ;	
						out.print( dadosAgendamento.getString("dataAgendada") ) ;
					out.print("</td>") ;

					out.print("<td>") ;	
						out.print( dadosAgendamento.getString("horaAgendada") ) ;
					out.print("</td>") ;

					out.print("<td>") ;	
						out.print( dadosAgendamento.getString("opcao") ) ;
					out.print("</td>") ;

					out.print("<td>") ;	
						out.print( dadosAgendamento.getString("mensagem") ) ;
					out.print("</td>") ;

				out.print("</tr>") ;
			}

			out.print("</table>") ;


			stm.close();
			conexao.close();

		%>





	</body>
</html>
