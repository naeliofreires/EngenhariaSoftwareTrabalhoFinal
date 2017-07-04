package br.com.gimovel.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.gimovel.dao.ImovelDao;
import br.com.gimovel.dao.UsuarioDao;
import br.com.gimovel.model.Usuario;

@Controller
public class UsuarioController {

	UsuarioDao udao;
	ImovelDao idao;

	public UsuarioController() {
		udao = new UsuarioDao();
		idao = new ImovelDao();
	}

	@RequestMapping("minhaHome")
	String telaHome(HttpSession session){

		Usuario usuario = (Usuario) session.getAttribute("usuario");

		session.setAttribute("minhasCasas", idao.getAllImovelByIdAndType(usuario.getId(), "casa"));
		session.setAttribute("meusApartamento", idao.getAllImovelByIdAndType(usuario.getId(), "apartamento"));
		session.setAttribute("meusLote", idao.getAllImovelByIdAndType(usuario.getId(), "lote"));

		return "/users/home_usuario";
	}

	@RequestMapping(value = "cadastrar", method = RequestMethod.POST )
	String cadastrar(Usuario usuario){
		new UsuarioDao().insertUser(usuario);
		return "redirect:/";
	}
	
	@RequestMapping(value = "atualizar", method = RequestMethod.POST)
	String atualizar(HttpSession session, Usuario usuario){
		
		new UsuarioDao().updateUser(usuario);
		
		session.setAttribute("usuario", new UsuarioDao().getUsuarioByEmailAndSenha(usuario));
		
		return "/users/home_usuario";
	}

}
