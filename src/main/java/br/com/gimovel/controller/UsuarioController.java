package br.com.gimovel.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.gimovel.dao.ImovelDao;
import br.com.gimovel.dao.UsuarioDao;
import br.com.gimovel.model.Imovel;
import br.com.gimovel.model.Usuario;

@Controller
public class UsuarioController {
		
	@RequestMapping("minhaHome")
	String telaHome(HttpSession session, Model model){
		
		Usuario usuario = (Usuario) session.getAttribute("usuario");

		List<Imovel> imoveis = new ImovelDao().getImovelByUsuario(usuario.getId());

		model.addAttribute("imoveis", imoveis);

		return "/users/home_usuario";
	}
	
	@RequestMapping(value = "cadastrar", method = RequestMethod.POST )
	String cadastrar(Usuario usuario){
		new UsuarioDao().insertUser(usuario);
		return "redirect:/";
	}
	
	@RequestMapping(value = "atualizar", method = RequestMethod.POST)
	String atualizar(HttpSession session, Usuario usuario, Model model){
		new UsuarioDao().updateUser(usuario);
		
		session.removeAttribute("usuarioS");
		session.setAttribute("usuarioS", new UsuarioDao().getUsuarioByEmailAndSenha(usuario));
		
		return "/users/home_usuario";
	}	

}
