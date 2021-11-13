<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="UTF-8">
		<title>Ceavel Mix de Peças</title>
		<link rel="stylesheet" href="contato.css">
		<link rel="stylesheet" href="../reset.css">
		<link rel="stylesheet" href="../index.css">
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
				<td><a href="../login/login.jsp" class="btnLogin">LOGIN</a></td>
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
		<main class="contatoss">
			<img src="../imgs/imagem_contato.png" class="imagem_contato" alt="Foto Ceavel">
				<div class="fale_conosco">
				<h2>Fale Conosco</h2>
				<p>Nossa equipe esta pronta para atende-lo em nossa loja.</p>
				<table>
					<tr>
						<td><img src="../imgs/telefone.png" class="imagens_info"></td>
						<td>  (11) 2402-1861</td>
					</tr>

					<tr>
						<td><img src="../imgs/casa.png" class="imagens_info"></td>
						<td>  R. Humberto Brochini, 390<br>
							 Jardim Bela Vista, Guarulhos - SP<br>
						</td>					
					</tr>

					<tr>
						<td><img src="../imgs/email.jpg" class="imagens_info"></td>
						<td> ceavelmix@hotmail.com</td>
					</tr>

					<tr>
						<td><img src="../imgs/relogio.png" class="imagens_info"></td>
						<td> Seg. à Sex. 08:00 as 17:00</td>
					</tr>

				</table>
				</div>
		</main>
		
		<section class="formulario">
			<form method="post" action="mailto:ceavelmix@hotmail.com" id="formulario" enctype="text/plain">
				<h1 id="contato">Contato</h1>
				<label for="nome">Nome</label>
				<input type="text" name="Nome" id="nome" class="input-padrao" required="" placeholder="Digite seu nome"><br>

				<label for="telefone">Telefone</label>
				<input type="tel" name="Telefone" id="telefone" class="input-padrao" required="" placeholder="(XX) XXXXX-XXXX">

				<label for="email">Email</label>
				<input type="email" name="E-mail" id="email" class="input-padrao" required="" placeholder="seuemail@dominio.com">

				<label for="mensagem">Mensagem</label>
				<textarea cols="30" rows="20" name="Mensagem" class="input-padrao"></textarea>

				<button type="submit">Enviar</button>
				<button type="reset">Limpar</button>

			</form>
		</section>

			<section class="mapa">

			<h1 class="ContatoH1">Nosso Estabelecimento</h1>
			<p class="ContatoP">A Ceavel Mix de Peças esta localizada próximo as principais vias da cidade de Guarulhos - SP.</p>
			<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14642.639018582038!2d-46.510944!3d-23.436655!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x4ae0e34c0ac446c1!2sCeavel%20Mix%20Comercio%20De%20Pecas!5e0!3m2!1spt-BR!2sbr!4v1589411523271!5m2!1spt-BR!2sbr" width=70% height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
			</section>

		<div id="bg"></div>
		<div class="box">
					<div class="wrapper">
  			<div class="agenda-form">
    			<div class="tudo-fields">
    				<form name="agendamento">
    					<img src="../imgs/logo.png" class="logosmall">
    					<p class="txtlogin">LOGIN</p><br><br>
	     				<p class="emailSenha">Email:</p> <input type="email" class="input" placeholder="Email"> 
	     				<p class="emailSenha">Senha:</p> <input type="password" class="input" placeholder="senha"> 
      					<br><div class="btn">Entrar</div>
    				</div>
  				</div>
			</div>	
			<a href="" id="close">X</a>
		</div>
		
		<footer>

			&#169; Ceavel Mix de Peças <br>
			1995 - 2020

		</footer>

	</body>
</html>
