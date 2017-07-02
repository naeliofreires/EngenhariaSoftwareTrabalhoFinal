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
		<li><a href="logout"><i class="material-icons">exit_to_app</i> sair </a></li>
	</ul>
	<nav>
		<div class="nav-wrapper">
			<a href="#!" class="brand-logo"><img src="<c:url value="/resources/img/logo.png"/> "  height="55"/></a>
			<ul class="right hide-on-med-and-down">
				<li><a href="paginaInicial" class="black-text name">Página Inicial</a></li>
				<!-- Dropdown Trigger -->
				<li>
					<a class="dropdown-button black-text name" href="#!" data-activates="dropdown1"> ${usuario.email}
					<i class="material-icons right">arrow_drop_down</i></a>
				</li>
			</ul>
		</div>
	</nav>
	
	<br>
	
	<!-- Campo de Pesquisa Imovel - [Filtros] -->
	<div class="container">
		<nav>
		<div class="nav-wrapper">
			<form action="filtrando" method="POST">
				<div class="input-field">
					<input id="busca" name="busca" type="search" required> 
					<label class="label-icon" for="busca">
					<i class="material-icons black-text name">search</i></label>
					<i class="material-icons ">close</i>
				</div>
			</form>
		</div>
		</nav>
	</div>

	<br>
	<div class="branco lado-esquerdo categorias">
		<h5>Categorias</h5>
		<h6>Casas/Apartamentos</h6>
		<ul class="container"> 
			<li><a href="filtrandoQuartos?buscar=1">1 Quarto</a></li>
			<li><a href="filtrandoQuartos?buscar=2">2 Quartos</a></li>
			<li><a href="filtrandoQuartos?buscar=3">+ 3 Quartos</a></li>
			<li><a href="filtrandoSuites?buscar=1">1 Suite</a></li>
			<li><a href="filtrandoSuites?buscar=2">2 Suites</a></li>
			<li><a href="filtrandoSuites?buscar=3">+ 3 Suite</a></li>
		</ul>	
		<h6>Loteamentos</h6>
		<ul class="container"> 
			<li><a href="filtrandoLoteamento?buscar=100">100 M²</a></li>
			<li><a href="filtrandoLoteamento?buscar=150">150 M²</a></li>
			<li><a href="filtrandoLoteamento?buscar=200">200 M²</a></li>
			<li><a href="filtrandoLoteamento?buscar=250"> + 250 M²</a></li>
		</ul>
		<h6>Preços</h6>
		<ul class="container"> 
			<li><a href="filtrandoPreco?buscar=15.000">15.000</a></li>
			<li><a href="filtrandoPreco?buscar=20.000">20.000</a></li>
			<li><a href="filtrandoPreco?buscar=25.000">25.000</a></li>
			<li><a href="filtrandoPreco?buscar=40.000">40.000</a></li>
			<li><a href="filtrandoPreco?buscar=50.000">+ 50.000</a></li>
			<li></li>
		</ul>
	</div>
	
	<!-- Paginação das Casas -->
	<div class="container">
		<div class="row">
			<div class="col s12">
				<ul class="tabs">
					<li class="tab col s4"><a href="#casa">Casas</a></li>
					<li class="tab col s4"><a href="#apartamento">Apartamentos</a>
					<li class="tab col s4"><a href="#lote">Lotes</a></li>
				</ul>
			</div>
			
			<div id="casa" class="col s12">
					<div class="row">
						<c:forEach var="casa" items="${casas}">
							<div class="col s3">
								<div class="card">
									<div class="card-image container">
										<div class="container">
											<img src="<c:url value="/resources/img/house.jpg"/> "  height="150" width="50"/>
										</div>  
									</div>
									
									<div class="card-content">
										<label class="black-text name">Cidade: ${casa.cidade}</label><br>
										<label class="black-text name">Bairro: ${casa.bairro}</label><br>
										<label class="black-text name">Estado: ${casa.estado}</label><br>
										<label class="black-text name">R$: ${casa.preco}</label><br>
									</div>
									
									<div class="card-action">
										<a href="visualizarCasa?id=${casa.id}">Visualizar</a>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
			</div><!--Final Div Casas  -->
			
			<div id="apartamento" class="col s12">
			
				<div class="row">
					<c:forEach var="apartamento" items="${apartamentos}">
						<div class="col s3">
							<div class="card">
								<div class="card-image container">
									<div class="container">
										<img src="<c:url value="/resources/img/house.jpg"/> "  height="150" width="50"/>
									</div>  
								</div>
								
								<div class="card-content">
									<label class="black-text name">Cidade: ${apartamento.cidade}</label><br>
									<label class="black-text name">Bairro: ${apartamento.bairro}</label><br>
									<label class="black-text name">Estado: ${apartamento.estado}</label><br>
									<label class="black-text name">R$: ${apartamento.preco}</label><br>
								</div>
								
								<div class="card-action">
									<a href="visualizarCasa?id=${apartamento.id}">Visualizar</a>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>	
					
			</div>
			
			<div id="lote" class="col s12">
			
				<div class="row">
					<c:forEach var="lote" items="${lotes}">
						<div class="col s3">
							<div class="card">
								<div class="card-image container">
									<div class="container">
										<img src="<c:url value="/resources/img/house.jpg"/> "  height="150" width="50"/>
									</div>  
								</div>
								
								<div class="card-content">
									<label class="black-text name">Cidade: ${lote.cidade}</label><br>
									<label class="black-text name">Bairro: ${lote.bairro}</label><br>
									<label class="black-text name">Estado: ${lote.estado}</label><br>
									<label class="black-text name">R$: ${lote.preco}</label><br>
								</div>
								
								<div class="card-action">
									<a href="visualizarCasa?id=${lote.id}">Visualizar</a>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>	
					
			</div>
		</div>
	</div>	
	
	<script type="text/javascript" src="<c:url value="/resources/js/jquery.min.js"/>"></script>	
	<script type="text/javascript" src="<c:url value="/resources/js/materialize.min.js"/>"></script>	
	<script type="text/javascript" src="<c:url value="/resources/js/script.js"/>"></script>	
</body>
</html>


