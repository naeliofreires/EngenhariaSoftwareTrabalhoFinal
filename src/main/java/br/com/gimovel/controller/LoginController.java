package br.com.gimovel.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.gimovel.dao.ImovelDao;
import br.com.gimovel.dao.UsuarioDao;
import br.com.gimovel.model.Imovel;
import br.com.gimovel.model.Usuario;

@Controller
public class LoginController {

	@RequestMapping("login")
	String login(){
		return "/users/login_usuario";
	}

	@RequestMapping(value = "logar", method = RequestMethod.POST)
	String logar(HttpSession session, Usuario usuario, Model model){

		if(new UsuarioDao().existUsuario(usuario.getEmail(), usuario.getSenha())){			

			Usuario usuario_ = new UsuarioDao().getUsuario(usuario);

			model.addAttribute("usuario_m", usuario_);

			session.setAttribute("usuario", usuario_);

			List<Imovel> imoveis = new ImovelDao().getImovelByUsuario(usuario_.getId());

			model.addAttribute("imoveis", imoveis);

			return "/users/home_usuario";
		}

		return "/users/login_usuario";
	}

	@RequestMapping("logout")
	String logout(HttpSession session){
		session.invalidate();
		return "redirect:/";
	}
}
