package br.com.gimovel.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	@RequestMapping(value = "atualizar", method = RequestMethod.POST)
	String atualizar(HttpSession session, Usuario usuario, Model model){
		new UsuarioDao().updateUser(usuario);
		
		session.removeAttribute("usuario");
		session.setAttribute("usuario", new UsuarioDao().getUsuario(usuario));
		
		model.addAttribute("usuario_m",  new UsuarioDao().getUsuario(usuario));
		return "/users/home_usuario";
	}	
}
