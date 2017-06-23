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

	<!-- HEADER -->
	<nav class="teal">
		<div class="nav-wrapper   green lighten-5">
			<img src="<c:url value="/resources/img/logo.png"/> "  height="55"/>  
			<ul id="nav-mobile" class="right hide-on-med-and-down">
				<li>
					<a href="meuPerfil" target="_self" class=" col s12 waves-effect waves-light btn"> Meu Perfil </a> 
				</li>
				<li>
					<a href="logout" target="_self" class=" col s12 waves-effect waves-light btn red">sair </a> 
				</li>
			</ul>
		</div>
	</nav>
	<hr>
	
	<div class="container">
		<div class="row">

			<form action="cadastrarImovel" method="POST" class="col s12">
				<div class="row">
					
					<!-- Indica para qual usuario o novo movel vai pertencer1  -->
					<input name ="iduser" hidden="true" value="${usuario.id}">
					
					<div class="input-field col s6">
						<i class="material-icons prefix">store</i> 
						<input name="tipoimovel" type="text" class="validate"> 
						<label for="tipoimovel">Tipo do Imovel</label>
					</div>
					
					<div class="input-field col s6">
						<i class="material-icons prefix">account_circle</i> 
						<input name="qtdquartos" type="text" class="validate"> 
						<label for="qtdquartos">Quantidade de Quartos</label>
					</div>
									
					<div class="input-field col s6">
						<i class="material-icons prefix">phone</i> 
						<input name="preco" type="tel" class="validate"> 
						<label for="preco">Preço do Imovel</label>
					</div>
					
					<div class="col s6">
						<div class="input-field col s6">
							<i class="material-icons prefix">phone</i> 
							<input name="estado" type="text" class="validate"> 
							<label for="estado">Estado</label>
						</div>
					
						<div class="input-field col s6">
							<i class="material-icons prefix">phone</i> 
							<input name="cidade" type="text" class="validate"> 
							<label for="cidade">Cidade</label>
						</div>
					</div>
					
					<di class="col s6">
						<div class="input-field col s4">
							<i class="material-icons prefix">phone</i> 
							<input name="bairro" type="text" class="validate"> 
							<label for="bairro">Bairro</label>
						</div>
						
						<div class="input-field col s4">
							<i class="material-icons prefix">phone</i> 
							<input name="rua" type="text" class="validate"> 
							<label for="rua">Rua</label>
						</div>
						
						<div class="input-field col s4">
							<i class="material-icons prefix">phone</i> 
							<input name="numero" type="text" class="validate"> 
							<label for="numero">Numero</label>
						</div>
					</di>
							
					<div class="input-field col s6">
						<i class="material-icons prefix">phone</i> 
						<input name="complemento" type="text" class="validate"> 
						<label for="complemento">Complemento</label>
					</div>
					
					<div class="input-field col s12">
						<i class="material-icons prefix">mode_edit</i> 
						<input name="descricao" type="text" class="validate" maxlength="250"> 
						<label for="descricao">Descricao</label>
					</div>
					
					<button class="btn waves-effect waves-light col s12" type="submit"	name="action">
					Cadastrar
					<i class="material-icons right">add</i>
					</button>
				</div>
			</form>				
		</div>
	</div>
	<!-- FOOTER -->
	<footer class="page-footer  green lighten-5 ">
		<div class="footer-copyright  green lighten-5">
			<div class="container ">
				<span class="black-text text-darken-2">© 2014 Copyright Text </span>
				<a class="black-text text-darken-2 text-lighten-4 right" href="#!">More Links</a>
			</div>
		</div>
	</footer>
	
	<script type="text/javascript" src="<c:url value="/resources/js/jquery.min.js"/>"></script>	
	<script type="text/javascript" src="<c:url value="/resources/js/materialize.min.js"/>"></script>	
</body>
</html>


