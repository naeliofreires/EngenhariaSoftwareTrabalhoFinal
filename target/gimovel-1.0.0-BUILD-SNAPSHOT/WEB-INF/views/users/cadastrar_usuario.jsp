<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="<c:url value='/resources/css/materialize.min.css' />"
	rel="stylesheet" type="text/css" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link href="<c:url value='/resources/css/css.css' />" rel="stylesheet"
	type="text/css" />
</head>

<body>


	<!-- HEADER -->
	<nav class="teal">
		<div class="nav-wrapper	green lighten-5">
			<img src="<c:url value="/resources/img/logo.png"/>"  height="55"/>  
			<ul id="nav-mobile" class="right hide-on-med-and-down">	
				<li>
					<a href="index"class="waves-effect waves-light btn">inicio</a> 
				</li>
				<li>
					<a href="login"class="waves-effect waves-light btn">entrar</a> 
				</li>
			</ul>
		</div>
	</nav>
	<hr>
	<div class="row">

		<form action="cadastrar" class="col s12" method="POST">
			<div class="row">
			
				<div class="input-field col s4">
					<i class="material-icons prefix">account_circle</i> 
					<input name="nome" type="text" class="validate" placeholder="Nome"> 
				</div>
				
				<div class="input-field col s4">
					<i class="material-icons prefix">email</i> 
					<input name="email"	type="email" class="validate" placeholder="Email"> 
				</div>
				
				<div class="input-field col s4">
					<i class="material-icons prefix">vpn_key</i> 
					<input name="cpf" type="text" class="validate" placeholder="000.000.000 - 00"> 
				</div>
				
				<div class="input-field col s4">
					<i class="material-icons prefix">today</i> 
					<input name="dataNascimento" type="text" class="validate"> 
				</div>
				
				<div class="input-field col s4">
					<i class="material-icons prefix">https</i> 
					<input name="senha" type="password" class="validate" placeholder="senha"> 
				</div>
				
				<!-- <div class="input-field col s4">
					<i class="material-icons prefix">https</i> 
					<input name="senha2" type="password" class="validate" placeholder="Confirme sua senha"> 
				</div>
				 -->
				<div class="row">
					<button class="col s12 btn waves-effect waves-light" type="submit">cadastrar</button>
				</div>
				
			</div>
		</form>
	</div>




	<!-- FOOTER -->
	<footer class="page-footer green lighten-5 ">
		<div class="footer-copyright green lighten-5">
			<div class="container ">
				<span class="black-text text-darken-2">© 2014 Copyright Text </span>
				<a class="black-text text-darken-2 text-lighten-4 right" href="#!">More Links</a>
			</div>
		</div>
	</footer>
	
	<script type="text/javascript"
		src="<c:url value="/resources/js/jquery.min.js"/>"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/js/materialize.min.js"/>"></script>
</body>


</html>