<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="UTF-8">
		<title>Ceavel Mix de Peças</title>
		<link rel="stylesheet" href="../reset.css">
		<link rel="stylesheet" href="../index.css">
		<link rel="stylesheet" href="home.css">
		<link rel="stylesheet" href="../scrollbar.css">
		<link rel="stylesheet" href="../style.css">
		<script src="https://kit.fontawesome.com/a076d05399.js"></script>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
	</head>
	<body>
		<img class="logo" src="../imgs/logo.png" alt="Logo Ceavel Mix de Peças">

		<table class="info">
			<tr>
				<td><img src="../imgs/telefone.png" class="imagens_info"></td>
				<td>  (11) 2402-1861</td>
				<td><img src="../imgs/casa.png" class="imagens_info"></td>
				<td>R. Humberto Brochini, 390<br>Jardim Bela Vista, Guarulhos - SP<br></td>
				<td><img src="../imgs/email.jpg" class="imagens_info"></td>
				<td> ceavelmix@hotmail.com</td>
				<td><img src="../imgs/relogio.png" class="imagens_info"></td>
				<td> Seg. à Sex. 08:00 as 17:00</td>
				<td><a href="#bg" class="btnLogin">LOGIN</a></td>
			</tr>
		</table>

		<nav>
			<input type="checkbox" id="check">
			<label for="check" class="checkbtn">
				<i class="fas fa-bars"></i>
			</label>
			<ul class="menu">
				<li class="linha"><a href="../home/home.jsp"> Home</a></li>
				<li class="linha"><a href="../quem somos/quem-somos.jsp">Quem Somos</a></li>
				<li class="linha"><a href="../serviços/servicos.jsp">Serviços</a></li>
				<li class="linha"><a href="../Agendamentos/agendamento.jsp">Agendar um serviço</a></li>
				<li class="linha"><a href="../contato/contato.jsp">Contato</a></li>
			</ul>
		</nav>

		</header>
		<main class="corpo">
			
		<div id="bg"></div>
		<div class="box">
			<div class="wrapper1">
  				<div class="agenda-form10">
    				<div class="tudo-fields">
    					<form name="agendamento">
    						<img src="../imgs/logo.png" class="logosmall">
    						<p class="txtlogin1"><br><br>Ops, você não está logado. Lembre-se, o login é apenas para administradores.</p>
    				</div>
  				</div>
			</div>	
			<a href="../home/home.jsp" id="close">X</a>
		</div> 


		<img src="../imgs/foto_index.png">
		<div>
			<h1><strong>Seja bem-vindo(a) ao nosso site.</strong></h1>
			<p class="paragrafo">Somos especialistas em vários tipos de serviços automotivos. Através de nosso</p>
			<p class="paragrafo1"> site você poderá ver um pouco mais sobre nossa empresa e serviços.</p> <br>
		</div>
		<a class="agendar" href="../Agendamentos/agendamento.jsp">Agende um serviço</a>
		<a class="contato" href="../contato/contato.jsp">Entre em contato</a>
		</main>
		<footer>

			&#169; Ceavel Mix de Peças <br>
			1995 - 2020

		</footer>

	</body>
</html>
