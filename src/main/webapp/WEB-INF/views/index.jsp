<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="<c:url value='/resources/css/materialize.min.css' />" rel="stylesheet" type="text/css" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link href="<c:url value='/resources/css/css.css' />" rel="stylesheet" type="text/css" />
</head>
<body>

	<!-- Header -->
	<nav>
		<div class="nav-wrapper">
			<a href="#!" class="brand-logo"><img src="<c:url value="/resources/img/logo.png"/> "  height="55"/></a>
			<ul class="right hide-on-med-and-down">
				<li><a href="#modal1" class="black-text name">Entrar</a></li>
				<li><a href="#modal2" class="black-text name">Realizar Cadastro</a></li>
			</ul>
		</div>
	</nav>

	<div class="parallax-container">
		<div class="parallax">
			<img src="http://pontosdevista.pt/static/uploads/2016/03/HOTEL-ALGARVE-7.jpg">
		</div>
	</div>
	<div class="section white">
		<div class="row container">
			<h4  class="orange-text name header">A GI é para você! <br><br> Todo mundo tem alguma coisa
				para anunciar...</h4>
			<p class="grey-text text-darken-3 lighten-3"> * Casa</p>			
			<p class="grey-text text-darken-3 lighten-3"> * Lotes de Terra</p>
			<p class="grey-text text-darken-3 lighten-3"> * Vagas de Apartamento</p>
			<p class="grey-text text-darken-3 lighten-3"> Cadastre-se e aproveite ...</p>
		</div>
	</div>
	<div class="parallax-container">
		<div class="parallax">
			<img src="http://2.bp.blogspot.com/-PJ7aRZtVkrc/VQHGbe9TH6I/AAAAAAAAF5I/k85PcfZQuz4/s1600/ibis-lisboa-liberdade-lisboa.jpg">
		</div>
	</div>

	<!-- Modal Form Login -->
	<div id="modal1" class="modal modal-fixed-footer">
		<div class="modal-content">
			<div class="container">
				<p style="text-align: center;">
					<img src="<c:url value="/resources/img/logo.png"/> " height="55" />
				</p>
				<form  class="row" action="logar" method="POST">		
					<div class="container">
						<div class="col s12"> 
						<div class="input-field">
							<input name="email" type="text" class="validate" placeholder="Digite seu email">
						</div>
						</div>
			
						<div class="col s12">
							<div class="input-field "></div>
							<input name="senha" type="password" class="validate" placeholder="Digite sua senha">
						</div>
		
						<button class="col s12 btn waves-effect waves-light container" type="submit">Entrar	</button>	
					</div>	
				</form>		
			</div>
	
		</div>	
		
		<div class="modal-footer">
			<a href="#!"
				class="modal-action modal-close waves-effect waves-green btn-flat ">Cancelar</a>
		</div>
	</div>

	<!-- Modal Form Register -->
	<div id="modal2" class="modal modal-fixed-footer">
		<div class="modal-content">
				<p style="text-align: center;">
					<img src="<c:url value="/resources/img/logo.png"/> " height="55" />
				</p>
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
						<input name="cpf" type="text" class="validate" placeholder="000.000.000 - 00" maxlength=""> 
					</div>
					
					<div class="input-field col s4">
						<i class="material-icons prefix">today</i> 
						<input name="dataNascimento" type="Date" class="validate" placeholder="00/00/0000" maxlength="10"> 
					</div>
					
					<div class="input-field col s4">
						<i class="material-icons prefix">https</i> 
						<input name="senha" type="password" class="validate" placeholder="Senha" maxlength="8"> 
					</div>
					
					<div class="input-field col s4">
						<i class="material-icons prefix">https</i> 
						<input name="senha2" type="password" class="validate" placeholder="Confirme sua senha"> 
					</div>
					
					<div class="row">
						<button class="col s12 btn waves-effect waves-light" type="submit">Registrar</button>
					</div>
					
				</div>
			</form>
		</div>
		<div class="modal-footer">
			<a href="#!"
				class="modal-action modal-close waves-effect waves-green btn-flat ">Cancelar</a>
		</div>
	</div>

	<script type="text/javascript" src="<c:url value="/resources/js/jquery.min.js"/>"></script>	
	<script type="text/javascript" src="<c:url value="/resources/js/materialize.min.js"/>"></script>	
	<script type="text/javascript" src="<c:url value="/resources/js/script.js"/>"></script>	
</body>
</html>


