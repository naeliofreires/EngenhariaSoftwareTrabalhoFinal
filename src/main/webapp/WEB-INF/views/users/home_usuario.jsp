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

	<!-- HEADER -->
	<nav class="teal">
		<div class="nav-wrapper   green lighten-5">
			<img src="<c:url value="/resources/img/logo.png"/> "  height="55"/>  
			<ul id="nav-mobile" class="right hide-on-med-and-down">
				<li>
					<a href="logout" target="_self" class=" col s12 waves-effect waves-light btn red">sair </a> 
				</li>
			</ul>
		</div>
	</nav>
	<hr>
	
	

	<!-- Modal - Atualizar Imovel -->
	<div id="modal1" class="modal">
		<div class="modal-content">
			<h4>Atualizar Imovel</h4>
			<div class="container">
				<form action=""  method="POST">
				
					<div class="row">
					
						<input name="iduser" hidden="true" value="${usuario.id}">

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
		</div>
		<div class="modal-footer">
			<a href="#!"
				class="modal-action modal-close waves-effect waves-green btn-flat">Sair</a>
		</div>
	</div>

	<!-- Colapso -->
	<ul class="collapsible" data-collapsible="accordion">
		
		<li>
			<div class="collapsible-header">
				<i class="material-icons">perm_identity</i>Meu Perfil
			</div>
			<!-- CARD - MEUS DADOS -->
			<div class="collapsible-body">
				<div class="container row">
						<div class="col s6">
							<!-- CARD COM OS DADOS -->
							<div class="row">
								<div class="col s12 m6">
									<div class="card blue-grey darken-1">
										<div class="card-content white-text">
											<span class="card-title">Meus Dados</span>
											<label>Nome:</label>
											<p>${usuario_m.nome}</p>
											<label>Email:</label>
											<p>${usuario_m.email }</p>
											<label>CPF:</label>
											<p>${usuario_m.cpf}</p>
											<label>Nascimento:</label>
											<p>${usuario_m.dataNascimento}</p>
										</div>
										<div class="card-action">
										</div>
									</div>
								</div>
							</div>
						</div>
							
						<!-- FORMULARIO ATUALIZAR -->
						<form class="col s6" action="atualizar" method="POST">
							<div class="row">
								
								<input name="id" value="${usuario_m.id}" hidden="true">
								
								<div class="input-field col s6">
									<i class="material-icons prefix">account_circle</i> 
									<input name="nome" type="text" class="validate" placeholder="Nome">
								</div>
	
								<div class="input-field col s6">
									<i class="material-icons prefix">email</i> 
									<input name="email"	type="email" class="validate" placeholder="Email">
								</div>
	
								<div class="input-field col s6">
									<i class="material-icons prefix">vpn_key</i> 
									<input name="cpf" type="text" class="validate" placeholder="000.000.000 - 00">
								</div>
	
								<div class="input-field col s6">
									<i class="material-icons prefix">today</i> 
									<input name="dataNascimento" type="text" class="validate" placeholder="00/00/0000">
								</div>
									
								<div class="input-field col s6">
									<i class="material-icons prefix">https</i> 
									<input name="senha"	type="password" class="validate" placeholder="Digite sua senha">
								</div>
								
								<div class="input-field col s6">
									<i class="material-icons prefix">https</i> 
									<input name="senha2" type="password" class="validate" placeholder="Confirme sua senha...">
								</div>
	
								<div class="row">
									<button class="col s12 btn waves-effect waves-light"
										type="submit">atualizar</button>
								</div>
							</div>
						</form>
					
					</div>
			</div>
		</li>
		
		<li>
			<div class="collapsible-header">
				<i class="material-icons">place</i>
				Minhas Casas
			</div>
			
			
			<div class="collapsible-body">
				<div class="container">
							
					<table class="striped responsive-table">
						<thead>
							<tr>
								<th>Tipo</th>
								<th>Quartos</th>
								<th>R$</th>
								<th>Descrição</th>
								<th>Estado</th>
								<th>Endereço</th>
								<th>Complento</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${imoveis}" var="imovel">
								<tr>
									<td>${imovel.tipoimovel}</td>
									<td>${imovel.qtdquartos}</td>
									<td>${imovel.preco}</td>
									<td>${imovel.descricao}</td>
									<td>${imovel.estado}</td>
									<td>
										Cidade: ${imovel.cidade}
										<br>
										Bairro: ${imovel.bairro}
										<br>
										Rua: ${imovel.rua}
										<br>
										Número: ${imovel.numero}
									</td>
									<td>${imovel.complemento}</td>
									<td>
										<p><a class="waves-effect waves-light btn" href="#modal1"><i class="material-icons">mode_edit</i></a></p>            
									</td>
									<td>
										<p><a href="remover?id=${imovel.id}" class="waves-effect waves-light btn red"><i class="material-icons">delete</i></a></p>            
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					
				</div>
				
				<a href="cadastro_imovel" class="btn btn-floating cyan right"><i class="material-icons">add</i></a>
				
				<br><br><br>
				
			</div>
		</li>
		<li>
			<div class="collapsible-header">
				<i class="material-icons">whatshot</i>Third
			</div>
			<div class="collapsible-body">
				<span>Lorem ipsum dolor sit amet.</span>
			</div>
		</li>
	</ul>


	<script type="text/javascript" src="<c:url value="/resources/js/jquery.min.js"/>"></script>	
	<script type="text/javascript" src="<c:url value="/resources/js/materialize.min.js"/>"></script>	
	<script type="text/javascript" src="<c:url value="/resources/js/script.js"/>"></script>	
</body>
</html>


