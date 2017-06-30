
$('.collapsible').collapsible();

$('.modal').modal();

$("#side_nav").sideNav();

$('.parallax').parallax();

$('#form-atualizar-perfil').hide();
$('#form-adicionar-casa').hide();

$('#editarPerfil').click(function() {

	$('#form-atualizar-perfil').show();

	$('#form-atualizar-imovel').hide();
	$('#form-adicionar-casa').hide();
	$('#casasPaginacao').hide();
});

$('#addCasa').click(function() {
	
	$('#form-adicionar-casa').show();
	
	$('#form-atualizar-perfil').hide();
	$('#form-atualizar-imovel').hide();	
	$('#casasPaginacao').hide();
});


