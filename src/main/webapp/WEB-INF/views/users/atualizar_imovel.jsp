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
					<a href="login"class="waves-effect waves-light btn">entrar</a> 
				</li>
				<li>
					<a href="cadastrarUsuario" target="_self" class=" col s12 waves-effect waves-light btn">cadastre-se 
					<i class="material-icons right">supervisor_account</i></a> 
				</li>
			</ul>
		</div>
	</nav>
	<hr>
	
	

			<div class="container">
				<form action="atualizaImovel"  method="POST">
				
					<div class="row">
					
						<input name="iduser" hidden="true" value="${usuario.id}">
						<input name="id" hidden="true" value="${imovel.id}">		

						<div class="input-field col s6">
							<i class="material-icons prefix"></i> 
							<input name="tipoimovel" type="text" class="validate"> 
							<label for="tipoimovel">Tipo do Imovel</label>
						</div>

						<div class="input-field col s6">
							<i class="material-icons prefix"></i> 
							<input name="qtdquartos" type="text" class="validate"> 
							<label for="qtdquartos">Quantidade de Quartos</label>
						</div>

						<div class="input-field col s6">
							<i class="material-icons prefix"></i> 
							<input name="preco"	type="tel" class="validate"> 
							<label for="preco">Preço do Imovel</label>
						</div>


						<div class="input-field col s6">
							<i class="material-icons prefix"></i> 
							<input name="estado" type="text" class="validate">
							<label for="estado">Estado</label>
						</div>

						<div class="input-field col s6">
							<i class="material-icons prefix"></i> 
							<input name="cidade" type="text" class="validate"> 
							<label for="cidade">Cidade</label>
						</div>



						<div class="input-field col s6">
							<i class="material-icons prefix"></i> 
							<input name="bairro" type="text" class="validate"> 
							<label for="bairro">Bairro</label>
						</div>

						<div class="input-field col s6">
							<i class="material-icons prefix"></i> 
							<input name="rua" type="text" class="validate"> 
							<label for="rua">Rua</label>
						</div>

						<div class="input-field col s6">
							<i class="material-icons prefix"></i>
							<input name="numero" type="text" class="validate"> 
							<label for="numero">Numero</label>
						</div>


						<div class="input-field col s6">
							<i class="material-icons prefix"></i> 
							<input name="complemento" type="text" class="validate"> 
							<label for="complemento">Complemento</label>
						</div>

						<div class="input-field col s6">
							<i class="material-icons prefix"></i> 
							<input name="descricao" type="text" class="validate" maxlength="250">
							<label for="descricao">Descricao</label>
						</div>
						
						<div class="container">
							<button class="btn waves-effect waves-light col s12"
								type="submit" name="action">
								update <i class="material-icons right">mode_edit</i>
							</button>
						</div>

					</div>
					
				</form>
		</div>
	
	<script type="text/javascript" src="<c:url value="/resources/js/jquery.min.js"/>"></script>	
	<script type="text/javascript" src="<c:url value="/resources/js/materialize.min.js"/>"></script>	
</body>
</html>


