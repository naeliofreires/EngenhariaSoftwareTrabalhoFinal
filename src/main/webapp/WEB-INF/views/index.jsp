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
					<a href="index"class="waves-effect waves-light btn">inicio</a> 
				</li>
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


