package br.com.gimovel.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.gimovel.dao.UsuarioDao;
import br.com.gimovel.model.Usuario;

@Controller
public class LoginController {

	public LoginController() {
		
	}
	
	@RequestMapping(value = "logar", method = RequestMethod.POST)
	String logar(HttpSession session, Usuario usuario, Model model){

		if(new UsuarioDao().existUsuario(usuario.getEmail(), usuario.getSenha())){			

			usuario = new UsuarioDao().getUsuarioByEmailAndSenha(usuario);

			session.setAttribute("usuario", usuario);

			return "redirect:paginaInicial";
		}

		return "redirect:/";
	}

	@RequestMapping("logout")
	String logout(HttpSession session){
		session.invalidate();
		return "redirect:/";
	}

}
