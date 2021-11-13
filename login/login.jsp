<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta charset="UTF-8">
	<title>Ceavel Mix de Peças</title>
	<link rel="stylesheet" href="../reset.css">
	<link rel="stylesheet" href="../index.css">
	<link rel="stylesheet" href="../scrollbar.css">
	<link rel="stylesheet" href="../stylex.css">
	<script src="https://kit.fontawesome.com/a076d05399.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="loginstyle.css">

</head>
<body>
	<div class="imgPreto">
	<div id="bg1" > </div>
			<div class="box1">
				<div class="wrapper1"> 
	  				<div class="agenda-form1">
	    				<div class="tudo-fields1">
	    					<form name="login" method="post" action="../jsp/login.jsp">
	    						<img src="../imgs/logo.png" class="logosmall">
	    						<p class="txtlogin">LOGIN</p><br><br>

			     				<p class="emailSenha">Usuário:</p> 
			     				<input type="user" class="input" name="usuario1" required="true" placeholder="Usuario"> 

			     				<p class="emailSenha">Senha:</p> 
			     				<input type="password" class="input" name="senha1" required="true" placeholder="Senha">

		      					<input type="submit" value="Entrar" class="btn">

	    				</div>
	  				</div>
				</div>	
				<a href="../home/home.jsp" id="close1">X</a>
			</div> 
</body>
</html>