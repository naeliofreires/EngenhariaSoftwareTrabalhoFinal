package br.com.gimovel.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.gimovel.dao.UsuarioDao;
import br.com.gimovel.model.Usuario;

@Controller
public class LoginController {

	@RequestMapping("login")
	String login(){
		return "/users/login_usuario";
	}
	
	@RequestMapping(value = "logar", method = RequestMethod.POST)
	String logar(HttpSession session, Usuario usuario){
		if(new UsuarioDao().existUsuario(usuario.getEmail(), usuario.getSenha())){
			session.setAttribute("usuario", new UsuarioDao().getUsuario(usuario));			
			return "/users/home_usuario";
		}
		return"forward:login";
	}
	
	@RequestMapping("logout")
	String logout(HttpSession session){
		session.invalidate();
		return "redirect:/";
	}
}
