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
			<li><a href="filtrandoPreco?buscar=15000">15.000</a></li>
			<li><a href="filtrandoPreco?buscar=20000">20.000</a></li>
			<li><a href="filtrandoPreco?buscar=25000">25.000</a></li>
			<li><a href="filtrandoPreco?buscar=40000">40.000</a></li>
			<li><a href="filtrandoPreco?buscar=50000">+ 50.000</a></li>
			<li></li>
		</ul>
	</div>
	
	<div id="casa" class="col s12">
					<div class="row">
						<c:forEach var="i" items="${imoveisFiltrados}">
							<div class="col s3">
								<div class="card">
									<div class="card-image container">
										<div class="container">
											<img src="<c:url value="/resources/img/house.jpg"/> "  height="150" width="50"/>
										</div>  
									</div>
									<div class="card-content black-text name">
										<h6><b>Endereço</b> <br>
										Rua ${i.rua}<br>
										${i.bairro }, ${i.cidade } - ${i.estado}
										</h6>

										<ul class="black-text name" >
											<li>${i.qtdquartos} <span>Quartos</span>
											</li>
											<li>
												${i.qtdsuites}
												<span>Suites</span>
											</li>
											
											<li>
												${i.area}
												<span>Área(M²)</span>
											</li>
										</ul>
										<label class="black-text name">R$: ${i.preco}</label><br>
									</div>
									<div class="card-action">
										<a href="visualizarCasa?id=${i.id}">Visualizar</a>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
			</div><!--Final Div Casas  -->
	
	<script type="text/javascript" src="<c:url value="/resources/js/jquery.min.js"/>"></script>	
	<script type="text/javascript" src="<c:url value="/resources/js/materialize.min.js"/>"></script>	
	<script type="text/javascript" src="<c:url value="/resources/js/script.js"/>"></script>	
</body>
</html>


