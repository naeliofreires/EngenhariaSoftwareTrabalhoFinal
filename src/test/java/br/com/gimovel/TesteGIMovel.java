package br.com.gimovel;

import br.com.gimovel.dao.UsuarioDao;
import br.com.gimovel.model.Usuario;

public class TesteGIMovel {

	public static void main(String[] args) {
		
		Usuario usuario = new Usuario();
		
		usuario.setEmail("naeliofreires@gmail.com");
		usuario.setSenha("naelio");
		
		System.out.println(new UsuarioDao().existUsuario(usuario.getEmail(), usuario.getSenha()));		

	}

}
