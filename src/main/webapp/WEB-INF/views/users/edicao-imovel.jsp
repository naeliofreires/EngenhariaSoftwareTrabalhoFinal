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
				<!-- Dropdown Trigger -->
				<li>
					<a class="dropdown-button black-text name" href="#!" data-activates="dropdown1"> ${usuario.email}
					<i class="material-icons right">arrow_drop_down</i></a>
				</li>
			</ul>
		</div>
	</nav>
	
	<br>
	
	<div class="container row">
		<div class="col s6">
			 <div class="slider">
			    <ul class="slides">
			      <li>
			        <img src="https://lorempixel.com/580/250/nature/1"> <!-- random image -->
			        <div class="caption center-align">
			          <h3>This is our big Tagline!</h3>
			          <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
			        </div>
			      </li>
			      <li>
			        <img src="https://lorempixel.com/580/250/nature/2"> <!-- random image -->
			        <div class="caption left-align">
			          <h3>Left Aligned Caption</h3>
			          <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
			        </div>
			      </li>
			      <li>
			        <img src="https://lorempixel.com/580/250/nature/3"> <!-- random image -->
			        <div class="caption right-align">
			          <h3>Right Aligned Caption</h3>
			          <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
			        </div>
			      </li>
			      <li>
			        <img src="https://lorempixel.com/580/250/nature/4"> <!-- random image -->
			        <div class="caption center-align">
			          <h3>This is our big Tagline!</h3>
			          <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
			        </div>
			      </li>
			    </ul>
			 </div>
		</div>
		<div class="col s6">
			<div class="container">
			
				<a href="pagina-inicial"> <i class="material-icons">reply</i> voltar para a busca</a><br>
				
				<div class="branco">
					<div class="container">
						<h6>${selecionado.tipoimovel}</h6>
						<h6>
							Rua ${selecionado.rua}<br>
							${selecionado.bairro }, ${selecionado.cidade } - ${selecionado.estado}
						</h6>
					</div>					
				</div>
				
				<div class="branco">
					<div class="container">
						<ul>
							<li>
								${selecionado.qtdquartos}
								<span>Quartos</span>
							</li>
							<li>
								
								<span>Suites</span>
							</li>
							<li>
								
								<span>Área(M²)</span>
							</li>
						</ul>
					</div>
				</div>
				
				<div class="branco">
					<div class="container">
						<h6>Status
							<c:choose>
								<c:when test="${selecionado.status == true}">
        							<span  style="color: green;"> Disponivel 
        							<a href="situacao?id=${imovel.id}&status=false"> alterar</a></span>
    							</c:when>
							<c:otherwise>
        							<span style="color: red;"> Indisponivel
        							<a href="situacao?id=${imovel.id}&status=true"> alterar</a></span>
    						</c:otherwise>
							</c:choose>
						</h6>
					</div>
				</div>

			</div>
		</div>
	</div>
	
	<div class="container">
		<div class="branco">
			<div class="container">
				<h6>Outras Informações</h6>
				<p>${selecionado.descricao}</p>
			</div>
		</div>				
	</div>
	
	
	<script type="text/javascript" src="<c:url value="/resources/js/jquery.min.js"/>"></script>	
	<script type="text/javascript" src="<c:url value="/resources/js/materialize.min.js"/>"></script>	
	<script type="text/javascript" src="<c:url value="/resources/js/script.js"/>"></script>	
</body>
</html>


