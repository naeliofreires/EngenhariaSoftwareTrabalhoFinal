package br.com.gimovel.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
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
	ModelAndView logar(HttpSession session, Usuario usuario){
		
		ModelAndView model = new ModelAndView("/users/login_usuario");
		
		if(new UsuarioDao().existUsuario(usuario.getEmail(), usuario.getSenha())){
			
			model = new ModelAndView("/users/home_usuario");
			
			Usuario x = new UsuarioDao().getUsuario(usuario);
			
			List<Imovel> imoveis = new ImovelDao().getImovelByUsuario(x.getId());
			
			model.addObject("imoveis", imoveis);
			
			model.addObject("usuario_m", x);
			
			session.setAttribute("usuario", x);
			
			return model;
		}
		
		return model;
	}
	
	@RequestMapping("logout")
	String logout(HttpSession session){
		session.invalidate();
		return "redirect:/";
	}
}
