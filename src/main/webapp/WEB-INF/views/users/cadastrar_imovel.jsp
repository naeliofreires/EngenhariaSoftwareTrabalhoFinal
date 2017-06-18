<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
		
			<form:form method="post" modelAttribute="imovelForm" action="cadastrarImovel">
				<tr>
					<td>
						<ul>
							<label>Selecione o tipo da Casa</label>
							<form:select path="tipoimovel">
								<form:option value="casa" label="Casa" />
								<form:option value="apartamento" label="Apartamento" />
								<form:option value="terreno" label="Terreno" />
								<form:option value="lote" label="Lote" />
								<form:option value="casa" label="Outros" />
							</form:select>
						</ul>
					</td>
				</tr>
				
				<form:input path="qtdquartos" type="text" placeholder="Quantidade de Quartos" />
				<form:errors path="qtdquartos" />
				
				<form:input path="descricao" type="text" placeholder="Descricao" />
				<form:errors path="descricao" />
				
				<form:input path="preco" type="text" placeholder="Digite o preço do imovel " />
				<form:errors path="preco" />
	
			</form:form>
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


