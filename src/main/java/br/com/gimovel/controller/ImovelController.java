package br.com.gimovel.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.gimovel.dao.ImovelDao;
import br.com.gimovel.model.Imovel;
import br.com.gimovel.model.Usuario;

@Controller
public class ImovelController {

	@RequestMapping("cadastro_imovel")
	String telaCadastrar(){
		return "/users/cadastrar_imovel";
	}
	
	@RequestMapping(value = "cadastrarImovel", method = RequestMethod.POST )
	String cadastrar(Imovel imovel, HttpSession session, Model model){		
		new ImovelDao().insertImovel(imovel);
		
		Usuario usuario_ = (Usuario) session.getAttribute("usuario");
		
		List<Imovel> imoveis = new ImovelDao().getImovelByUsuario(usuario_.getId());

		model.addAttribute("imoveis", imoveis);
		
		return "/users/home_usuario";
	}
	
	@RequestMapping(value = "atualizaimovel", method = RequestMethod.POST)
	String atualizar(HttpSession session, Imovel imovel, Model model){
		new ImovelDao().updateImovel(imovel);
		model.addAttribute("imoveis",  new ImovelDao().getAllImovel());
		return "/users/home_usuario";
	}
		
}
