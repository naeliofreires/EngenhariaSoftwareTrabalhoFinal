package br.com.gimovel.testes;

import java.util.Calendar;

import br.com.gimovel.dao.UsuarioDao;
import br.com.gimovel.model.Usuario;

public class ClassTeste {

	public static void main(String[] args) {
	
		UsuarioDao dao = new UsuarioDao();
		
		Calendar date = Calendar.getInstance();
		
		date.set(Calendar.YEAR, 1999);
		date.set(Calendar.MONTH, 7);
		date.set(Calendar.DAY_OF_MONTH, 26);
		
//		dao.adiciona(new Usuario("naelio","email@exemplo.com","010203","06871784365",date));
//		
//		dao.adiciona(new Usuario("roberto","email@exemplo.com","010203","06871784365",date));
//		
//		dao.adiciona(new Usuario("roberto","email@exemplo.com","010203","06871784365",date));
		
//		dao.adiciona(new Usuario("roberto","email@exemplo.com","010203","06871784365",date));
		
//		dao.delete(3l);
		
//		dao.update(new Usuario(5l,"EITA","email@exemplo.com","010203","06871784365",date));
		
		System.out.println(dao.getUsuarios().get(0).getNome());
	}

}
