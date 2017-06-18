package br.com.gimovel.controller;

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

	@RequestMapping("cadastrarImovel")
	String telaCadastrar(){
		return "/users/cadastrar_imovel";
	}
	
	@RequestMapping(value = "cadastro_imovel", method = RequestMethod.POST )
	String cadastrar(Imovel imovel){
		new ImovelDao().insertImovel(imovel);
		return "/users/home_usuario";
	}
	
	@RequestMapping(value = "atualizaimovel", method = RequestMethod.POST)
	String atualizar(HttpSession session, Imovel imovel, Model model){
		new ImovelDao().updateImovel(imovel);
		model.addAttribute("imoveis",  new ImovelDao().getAllImovel());
		return "/users/home_usuario";
	}
	
	//Consultas
	
	//@RequestMapping(value = "", method = RequestMethod.POST)
//	String getAllImovel(){
//		
//	}
}
