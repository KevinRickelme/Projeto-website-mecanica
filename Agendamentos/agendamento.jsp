<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="UTF-8">
		<title>Ceavel Mix de Peças</title>
		<link rel="stylesheet" href="../reset.css">
		<link rel="stylesheet" href="../index.css">
		<link rel="stylesheet" href="../scrollbar.css">
		<link rel="stylesheet" href="../style.css">
		<script src="https://kit.fontawesome.com/a076d05399.js"></script>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="styles.css">
		<script type="text/javascript"></script>
		<script src="https://code.jquery.com/jquery-2.2.4.js" integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI=" crossorigin="anonymous"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
		<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.0/jquery.mask.js"></script>
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

		<div class="wrapper1">
  			<div class="agenda-form1">
    			<div class="tudo-fields1">
    				<p class="msgAgenda">AGENDE SUA VISITA:</p>
    				<form name="agendamento1" method="post" action="../jsp/agendamentos.jsp">
	      				<input type="text" name="nomeCliente" class="input" required="" placeholder="Nome">
	     				<input type="email" name="emailCliente" required="" class="input" placeholder="Email">
	     				<input type="telefone" name="telefone" required="" id="telefone" class="input" placeholder="Telefone">
	     				<script>
						    $(document).ready(function () { 
						        var $verTelefone = $("#telefone");
						        $verTelefone.mask('(00) 00000-0000', {reverse: false});
						    });
					  </script>

	     				Agora, selecione um dia e um horário para marcar a vistoria:
	     				<input type="date" name="dataAgendada" required="" max="31/12/2020" class="input" placeholder="data">
	     				<script>
							var today = new Date().toISOString().split('T')[0];
							document.getElementsByName("dataAgendada")[0].setAttribute('min', today);
						</script>

	      				<input type="time" name="horaAgendada" class="input" min="08:00" max="17:00" placeholder="hora"> 

   						<select id="servicos" name="opcao" class="input">
   							<option value="none" selected disabled hidden> Selecione uma opção: </option>
   							<option value="cambio"class="input">Câmbio</option>
							<option value="escapamento"class="input">Escapamento</option>
							<option value="freios"class="input">Freios</option>
							<option value="injEletronica"class="input">Injeção Eletrônica</option>
							<option value="ManutGeral"class="input">Manutenção em geral</option>
							<option value="checkup"class="input">Manutenção Preventiva (CHECK UP)</option>
							<option value="suspensao"class="input">Suspensão em geral</option>
							<option value="trocaoleo"class="input">Troca de óleo</option>
							<option value="outro"class="input">Outros</option>
							<option value="naosei"class="input">Não sei informar</option>
						</select>

      					<textarea placeholder="Em poucas palavras, diga o que você precisa:"name="mensagem" class="msg" maxlength="400"></textarea>
      					<input type="submit" value="Enviar" class="btn1" onclick="phonenumber(document.agendamento1.telefone)">
      				</form>
    			</div>
  			</div>
		</div>

		<a href="login.jsp">
				
		</a>
		<%
			String usuario1 = request.getParameter("usuario1");
			String senha1 = request.getParameter("senha1");


			if(usuario1 != null && senha1 != null && !usuario1.isEmpty() && !senha1.isEmpty())

				response.sendRedirect("../logado/Agendamentos2/agendamento.jsp");
			
		%>

		<footer>

			&#169; Ceavel Mix de Peças <br>
			1995 - 2020

		</footer>

	</body>
</html>
