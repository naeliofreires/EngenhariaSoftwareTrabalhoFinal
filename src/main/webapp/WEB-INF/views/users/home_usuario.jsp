<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home Usuario</title>
<link href="<c:url value='/resources/css/materialize.min.css' />" rel="stylesheet" type="text/css" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link href="<c:url value='/resources/css/css.css' />" rel="stylesheet" type="text/css" />
</head>
<body>

	<!-- Dropdown Structure -->
	<ul id="dropdown1" class="dropdown-content">
		<li><a href="minhaHome"><i class="material-icons">perm_identity</i> Meu Perfil</a></li>
		<li><a id="editarPerfil" href="#"><i class="material-icons">edit</i>Editar Perfil</a></li>
		<li><a id="addCasa" href="#"><i class="material-icons">add</i>Imovel</a></li>
		<li class="divider"></li>
		<li><a href="logout"><i class="material-icons">exit_to_app</i> sair </a></li>
	</ul>
	
	<!-- Nav Structure -->
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
	
	<!-- Paginação das Casas -->
	<div id="casasPaginacao" class="container">
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
								<a href="dadosImovel?id=${imovel.id}">Editar</a>
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

	<!-- Form Adicionar Casa -->
	<div id="form-adicionar-casa">
		<form action="cadastrarImovel" method="POST">
			<div class="row">
			
				<div class="input-field col s6">
					<i class="material-icons prefix">store</i> 
					<input	name="tipoimovel" type="text" class="validate"> 
					<label	for="tipoimovel">Tipo do Imovel</label>
				</div>
					
				<div class="input-field col s6">
					<i class="material-icons prefix">account_circle</i> 
					<input	name="qtdquartos" type="text" class="validate"> 
					<label	for="qtdquartos">Quantidade de Quartos</label>
				</div>
				
				<div class="input-field col s6">
					<i class="material-icons prefix">credit_card</i> 
					<input	name="preco" type="tel" class="validate"> 
					<label	for="preco">Preço do Imovel</label>
				
				</div>
					<div class="input-field col s6">
					<i class="material-icons prefix">location_on</i> 
					<input	name="estado" type="text" class="validate"> 
					<label	for="estado">Estado</label>
				</div>
				
				<div class="input-field col s6">
					<i class="material-icons prefix">location_on</i> 
					<input	name="cidade" type="text" class="validate"> 
					<label	for="cidade">Cidade</label>
				</div>
					<div class="input-field col s6">
					<i class="material-icons prefix">location_on</i> 
					<input	name="bairro" type="text" class="validate"> 
					<label	for="bairro">Bairro</label>
				</div>
				
				<div class="input-field col s6">
					<i class="material-icons prefix">location_on</i> 
					<input	name="rua" type="text" class="validate"> 
					<label for="rua">Rua</label>
				</div>
				
				<div class="input-field col s6">
					<i class="material-icons prefix">location_on</i> 
					<input	name="numero" type="text" class="validate"> 
					<label	for="numero">Numero</label>
				</div>
				
				<div class="input-field col s6">
					<i class="material-icons prefix">location_on</i> 
					<input	name="complemento" type="text" class="validate"> 
					<label	for="complemento">Complemento</label>
				</div>

				<div class="input-field col s6">
						<i class="material-icons prefix">mode_edit</i> 
						<input	name="descricao" type="text" class="validate" maxlength="250">
						<label for="descricao">Descricao</label>
				</div>
							
				<div class="container">
					<button class="btn waves-effect waves-light col s12" type="submit" name="action">
						Registrar 
					</button>
				</div>
			</div>
		</form>
	</div>
	
	<div id="form-atualizar-perfil" class="container">
		  <div class="row">
		    <form  action="atualizar" method="POST" class="col s12">
		      
		      <div class="row">
		        <div class="input-field col s6">
		          <input id="nome" name="nome" type="text" class="validate">
		          <label for="nome">Nome</label>
		        </div>
		        <div class="input-field col s6">
		          <input id="email" type="email" class="validate">
		          <label for="email">Email</label>
		        </div>
		      </div>
		      
		      <div class="row">
		        <div class="input-field col s6">
		          <input id="cpf" name="cpf" type="text" class="validate" maxlength="11">
		          <label for="cpf">CPF</label>
		        </div>
		        <div class="input-field col s6">
		          <input id="dataNascimento" name="dataNascimento" type="text" class="validate" maxlength="10">
		          <label for="dataNascimento">Data de Nascimento</label>
		        </div>
		      </div>
		      
		      <p style="text-align: center" class="red-text name">Digite sua senha para confirmar as alterações ... </p>
		      
		      <div class="row">
		      	<div class="col s4"></div>
		        <div class="input-field col s4">
		          <input id="senha" type="password" class="validate">
		          <label for="senha">Senha</label>
		        </div>
		        <div class="col s4"></div>
		      </div>
		      
		      <p style="text-align: center">
		      	 <a  class="waves-effect waves-light btn blue">atualizar</a>
		      </p>
		     
		      
		    </form>
		  </div>
	</div>
	
	
	<script type="text/javascript" src="<c:url value="/resources/js/jquery.min.js"/>"></script>	
	<script type="text/javascript" src="<c:url value="/resources/js/materialize.min.js"/>"></script>	
	<script type="text/javascript" src="<c:url value="/resources/js/script.js"/>"></script>	
</body>
</html>


