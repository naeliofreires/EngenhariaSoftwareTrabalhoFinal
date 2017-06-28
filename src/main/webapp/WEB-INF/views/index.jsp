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
		<div class="nav-wrapper ">
			<img src="<c:url value="/resources/img/logo.png"/> "  height="55"/>  
			<ul id="nav-mobile" class="right hide-on-med-and-down">	
				<li>
					<a href="#modal1">login</a>
				</li>
				<li>
					<a href="cadastrarUsuario" target="_self" >cadastre-se 
					<i class="material-icons right">supervisor_account</i></a> 
				</li>
			</ul>
		</div>
	</nav>
	<hr>

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
							<input name="email" type="text" class="validate" placeholder="email">
						</div>
						</div>
			
						<div class="col s12">
							<div class="input-field "></div>
							<input name="senha" type="password" class="validate" placeholder="senha">
						</div>
		
						<button class="col s12 btn waves-effect waves-light container" type="submit">entrar	</button>	
					</div>	
				</form>		
			</div>
	
		</div>	
		
		<div class="modal-footer">
			<a href="#!"
				class="modal-action modal-close waves-effect waves-green btn-flat ">cancel</a>
		</div>
	</div>

	<script type="text/javascript" src="<c:url value="/resources/js/jquery.min.js"/>"></script>	
	<script type="text/javascript" src="<c:url value="/resources/js/materialize.min.js"/>"></script>	
	<script type="text/javascript" src="<c:url value="/resources/js/script.js"/>"></script>	
</body>
</html>


