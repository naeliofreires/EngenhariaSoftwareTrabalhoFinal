package br.com.gimovel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.gimovel.dao.UsuarioDao;
import br.com.gimovel.model.Usuario;

@Controller
public class UsuarioController {
	
	@RequestMapping("cadastrarUsuario")
	String telaCadastrar(){
		return "/users/cadastrar_usuario";
	}
	
	@RequestMapping(value = "cadastrar", method = RequestMethod.POST )
	String cadastrar(Usuario usuario){
		new UsuarioDao().insertUser(usuario);
		return "/users/login_usuario";
	}
}
