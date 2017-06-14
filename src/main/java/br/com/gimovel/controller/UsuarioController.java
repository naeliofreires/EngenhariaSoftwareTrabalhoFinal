package br.com.gimovel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UsuarioController {
	
	@RequestMapping("cadastrarUsuario")
	String cadastra(){
		return "/users/cadastrar_usuario";
	}
}
