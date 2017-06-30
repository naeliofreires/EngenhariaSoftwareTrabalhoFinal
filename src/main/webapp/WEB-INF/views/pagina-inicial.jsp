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

	<!-- Dropdown Structure -->
	<ul id="dropdown1" class="dropdown-content">
		<li><a href="minhaHome"><i class="material-icons">perm_identity</i> Meu Perfil</a></li>
		
		<li class="divider"></li>
		<li><a href="#!"><i class="material-icons">exit_to_app</i> sair </a></li>
	</ul>
	<nav>
		<div class="nav-wrapper">
			<a href="#!" class="brand-logo"><img src="<c:url value="/resources/img/logo.png"/> "  height="55"/></a>
			<ul class="right hide-on-med-and-down">
				<li><a href="pagina-inicial" class="black-text name">Página Inicial</a></li>
				<li><a href="badges.html" class="black-text name">Configuração</a></li>
				<!-- Dropdown Trigger -->
				<li>
					<a class="dropdown-button black-text name" href="#!" data-activates="dropdown1"> ${usuario.email}
					<i class="material-icons right">arrow_drop_down</i></a>
				</li>
			</ul>
		</div>
	</nav>
	
	<br>
	
	<div class="container">
		<nav>
		<div class="nav-wrapper">
			<form>
				<div class="input-field">
					<input id="search" type="search" required> 
					<label class="label-icon" for="search">
					<i class="material-icons black-text name">search</i></label>
					<i class="material-icons 	">close</i>
				</div>
			</form>
		</div>
		</nav>
	</div>

	<br>
	
	<!-- Paginação das Casas -->
	<div class="container">
		<div class="row">
			<div class="col s12">
				<ul class="tabs">
					<li class="tab col s4"><a href="#test1">Casas</a></li>
					<li class="tab col s4"><a href="#test2">Apartamentos</a>
					<li class="tab col s4"><a href="#test3">Lotes</a></li>
				</ul>
			</div>
			<div id="test1" class="col s12">
					
					<div class="row">
					<c:forEach var="imovel" items="${imoveis}">
						<div class="col s4">
							<div class="card">
								<div class="card-image container">
									<div class="container">
										<img src="<c:url value="/resources/img/house.jpg"/> "  height="150" width="50"/>
									</div>  
								</div>
								
								<div class="card-content">
									<label class="black-text name">Cidade: ${imovel.cidade}</label><br>
									<label class="black-text name">Bairro: ${imovel.bairro}</label><br>
									<label class="black-text name">Estado: ${imovel.estado}</label><br>
								</div>
								
								<div class="card-action">
									<a href="visualizarCasa?id=${imovel.id}">Visualizar</a>
								</div>
							</div>
						</div>
					</c:forEach>
					</div>		
				
			</div><!--Final Div Casas  -->
			<div id="test2" class="col s12">Test 2</div>
			<div id="test3" class="col s12">Test 3</div>
		</div>
	</div>
	
	<script type="text/javascript" src="<c:url value="/resources/js/jquery.min.js"/>"></script>	
	<script type="text/javascript" src="<c:url value="/resources/js/materialize.min.js"/>"></script>	
	<script type="text/javascript" src="<c:url value="/resources/js/script.js"/>"></script>	
</body>
</html>


