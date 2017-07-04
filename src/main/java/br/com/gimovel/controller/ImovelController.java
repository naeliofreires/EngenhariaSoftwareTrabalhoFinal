package br.com.gimovel.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import br.com.gimovel.dao.ImovelDao;
import br.com.gimovel.model.Imovel;
import br.com.gimovel.model.Usuario;

@Controller
public class ImovelController {

	private ImovelDao idao;
	//	private UsuarioDao udao;

	public ImovelController() {
		idao = new ImovelDao();
		//		udao = new UsuarioDao();
	}

	@RequestMapping(value = "cadastrarImovel", method = RequestMethod.POST )
	String cadastrar(Imovel imovel, HttpSession session){		

		Usuario usuario = (Usuario) session.getAttribute("usuario");

		imovel.setIduser(usuario.getId());
		imovel.setStatus(true);
		
		String tipo = imovel.getTipoimovel().toLowerCase();
		imovel.setTipoimovel(tipo);
		
		System.out.println(imovel.getArea());

		new ImovelDao().insertImovel(imovel);

		return "redirect:minhaHome";
	}

	@RequestMapping(value = "atualizaImovel", method = RequestMethod.POST)
	String atualizar(Imovel imovel){
		
		imovel.setTipoimovel(imovel.getTipoimovel().toLowerCase());
		
		new ImovelDao().updateImovel(imovel);

		return "redirect:minhaHome";
	}

	@RequestMapping(value="remover")
	String delete(Imovel imovel){

		new ImovelDao().deleteImovel(imovel.getId());

		return "redirect:minhaHome";

	}

	@RequestMapping("paginaInicial")
	String telaHome(HttpSession session){

		ArrayList<Imovel> casas = (ArrayList<Imovel>) idao.getImovelByTipoImovel("casa");

		ArrayList<Imovel> apartamentos = (ArrayList<Imovel>) idao.getImovelByTipoImovel("apartamento");

		ArrayList<Imovel> lotes = (ArrayList<Imovel>) idao.getImovelByTipoImovel("lote");

		session.setAttribute("casas", casas);

		session.setAttribute("apartamentos", apartamentos);

		session.setAttribute("lotes", lotes);


		return "pagina-inicial";
	}

	@RequestMapping("visualizarCasa")
	String visualizarCasa(Imovel i, HttpSession session) {

		Imovel imovel = idao.getImovelById(i.getId());

		//suario usuario = udao.getUsuarioById(imovel.getIduser());

		imovel.setTipoimovel(imovel.getTipoimovel().toUpperCase());

		session.setAttribute("selecionado", imovel);
		//session.setAttribute("proprietario", usuario);

		return "visualizar-casa";
	}

	@RequestMapping("dadosImovel")
	String edicaoImovel(Imovel imovel, HttpSession session){

		imovel = idao.getImovelById(imovel.getId());

		session.setAttribute("selecionado", imovel);

		imovel.setTipoimovel(imovel.getTipoimovel().toUpperCase());
		
		return "/users/edicao-imovel";
	}

	@RequestMapping("situacao")
	String situacao(Imovel imovel, HttpSession session){

		idao.setStatusImovel(imovel); // trocando o status

		imovel = idao.getImovelById(imovel.getId());

		imovel.setTipoimovel(imovel.getTipoimovel().toUpperCase()); 

		session.setAttribute("selecionado", imovel);

		return "/users/edicao-imovel";
	}

	@RequestMapping("filtrandoQuartos")
	String filtroQuarto(@RequestParam(value="buscar") String busca, HttpSession session){

		int quantidade = Integer.parseInt(busca);

		if(quantidade >= 3){
			List<Imovel> imoveis = idao.getImovelByQtdQuartosMaiorIgual(quantidade);
			session.setAttribute("imoveisFiltrados", imoveis);
		}else{
			List<Imovel> imoveis = idao.getImovelByQtdQuartosIgual(quantidade);

			session.setAttribute("imoveisFiltrados", imoveis);
		}
		return "casas-filtradas";
	}

	@RequestMapping("filtrandoSuites")
	String filtroSuite(@RequestParam(value="buscar") String busca, HttpSession session){

		int quantidade = Integer.parseInt(busca);

		if(quantidade >= 3){
			List<Imovel> imoveis = idao.getImovelByQtdSuitesMaiorIgual(quantidade);
			session.setAttribute("imoveisFiltrados", imoveis);
		}else{
			List<Imovel> imoveis = idao.getImovelByQtdSuitesIgual(quantidade);

			session.setAttribute("imoveisFiltrados", imoveis);
		}
		return "casas-filtradas";
	}
	
	@RequestMapping("filtrandoPreco")
	String filtroPreco(@RequestParam(value="buscar") String busca, HttpSession session){

		float quantidade = Float.parseFloat(busca);

		if(quantidade >= 50000f){
			List<Imovel> imoveis = idao.getImovelByPrecoMaiorIgual(quantidade);

			session.setAttribute("imoveisFiltrados", imoveis);
		}else{
			List<Imovel> imoveis = idao.getImovelByPrecoIgual(quantidade);

			session.setAttribute("imoveisFiltrados", imoveis);
		}
		return "casas-filtradas";
	}

	@RequestMapping("filtrandoLoteamento")
	String filtroArea(@RequestParam(value="buscar") String busca, HttpSession session){

		float quantidade = Float.parseFloat(busca);

		if(quantidade >= 250f){
			List<Imovel> imoveis = idao.getImovelbyArealMaiorIgual(quantidade);

			session.setAttribute("imoveisFiltrados", imoveis);
		}else{
			List<Imovel> imoveis = idao.getImovelByAreaIgual(quantidade);

			session.setAttribute("imoveisFiltrados", imoveis);
		}

		return "casas-filtradas";
	}

}















