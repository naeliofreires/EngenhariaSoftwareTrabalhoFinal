
<form action="atualizaImovel?id=${selecionado.id}" method="POST">

		<div class="container row">
			
			<input	name="status" value="${selecionado.status}" hidden="true"> 
			
			<div class="input-field col s6">
				<i class="material-icons prefix">store</i> 
				<input	name="tipoimovel" type="text" class="validate" value="${selecionado.tipoimovel}"> 
				<label	for="tipoimovel">Tipo do Imovel</label>
			</div>
				
			<div class="input-field col s6">
				<i class="material-icons prefix">account_circle</i> 
				<input	name="qtdquartos" type="text" class="validate" value="${selecionado.qtdquartos}"> 
				<label	for="qtdquartos">Quantidade de Quartos</label>
			</div>
			
			<div class="input-field col s6">
				<i class="material-icons prefix">account_circle</i> 
				<input	name="qtdsuites" type="text" class="validate" value="${selecionado.qtdsuites}"> 
				<label	for="qtdsuites">Quantidade de Suites</label>
			</div>
				
			<div class="input-field col s6">
				<i class="material-icons prefix">account_circle</i> 
				<input	id ="area" name="area" type="text" class="validate" value="${selecionado.area}"> 
				<label	for="area">Área M²</label>
			</div>
			
			<div class="input-field col s6">
				<i class="material-icons prefix">credit_card</i> 
				<input	name="preco" type="tel" class="validate" value="${selecionado.preco}"> 
				<label	for="preco">Preço do Imovel</label>
			</div>
			
			<div class="input-field col s6">
				<i class="material-icons prefix">location_on</i> 
				<input	name="estado" type="text" class="validate" value="${selecionado.estado}"> 
				<label	for="estado">Estado</label>
			</div>
			
			<div class="input-field col s6">
				<i class="material-icons prefix">location_on</i> 
				<input	name="cidade" type="text" class="validate" value="${selecionado.cidade}"> 
				<label	for="cidade">Cidade</label>
			</div>
				<div class="input-field col s6">
				<i class="material-icons prefix">location_on</i> 
				<input	name="bairro" type="text" class="validate" value="${selecionado.bairro}"> 
				<label	for="bairro">Bairro</label>
			</div>
			
			<div class="input-field col s6">
				<i class="material-icons prefix">location_on</i> 
				<input	name="rua" type="text" class="validate" value="${selecionado.rua}"> 
				<label for="rua">Rua</label>
			</div>
			
			<div class="input-field col s6">
				<i class="material-icons prefix">location_on</i> 
				<input	name="numero" type="text" class="validate" value="${selecionado.numero}"> 
				<label	for="numero">Numero</label>
			</div>
			
			<div class="input-field col s6">
				<i class="material-icons prefix">location_on</i> 
				<input	name="complemento" type="text" class="validate" value="${selecionado.complemento}"> 
				<label	for="complemento">Complemento</label>
			</div>

			<div class="input-field col s6">
				<i class="material-icons prefix">mode_edit</i> 
				<input	name="descricao" type="text" class="validate" maxlength="250" value="${selecionado.descricao}">
				<label for="descricao">Descricao</label>
			</div>
							
			<div class="container">
				<button class="btn waves-effect waves-light col s12" type="submit" name="action">
					Registrar 
				</button>
			</div>
		</div>
</form>
		
		