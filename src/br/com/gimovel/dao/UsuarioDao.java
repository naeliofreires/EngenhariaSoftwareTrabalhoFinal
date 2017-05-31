package br.com.gimovel.dao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import br.com.gimovel.connection.ConnectionFactory;
import br.com.gimovel.model.Usuario;

public class UsuarioDao {

	public void adiciona(Usuario usuario){

		String sql = "insert into usuario (nome,email,senha,cpf,dataNasc) values (?,?,?,?,?)"; 

		try {

			PreparedStatement stmt = ConnectionFactory.getConnection().prepareStatement(sql);

			stmt.setString(1, usuario.getNome());
			stmt.setString(2, usuario.getEmail());
			stmt.setString(3, usuario.getSenha());
			stmt.setString(4, usuario.getCpf());
			stmt.setDate(5, new Date(usuario.getDataNascimento().getTimeInMillis()));

			stmt.execute();
			stmt.close();
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}

	public void update(Usuario usuario){

		String sql = "update usuario set nome=?, email=?, senha=?, cpf=?, dataNasc=? where id=?";

		try {

			PreparedStatement stmt = ConnectionFactory.getConnection().prepareStatement(sql);
			
			stmt.setString(1, usuario.getNome());
			stmt.setString(2, usuario.getEmail());
			stmt.setString(3, usuario.getSenha());
			stmt.setString(4, usuario.getCpf());
			stmt.setDate(5, new Date(usuario.getDataNascimento().getTimeInMillis()));
			stmt.setLong(6, usuario.getId());
			
			stmt.execute();
	        stmt.close();
		} catch (Exception e) {
			throw new RuntimeException(e);
		}

	}
	
	public void delete(Long id){
		
		String sql = "delete from usuario where id=?";
		
		try {
			
			PreparedStatement stmt = ConnectionFactory.getConnection().prepareStatement(sql);
			
			stmt.setLong(1, id);
			
			stmt.execute();
	        stmt.close();
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	
	public List<Usuario> getUsuarios(){
		
		String sql = "select * from usuario";
		
		try {
			
			ArrayList<Usuario> usuarios = new ArrayList<>();
			PreparedStatement stmt = ConnectionFactory.getConnection().prepareStatement(sql);	
			ResultSet rs = stmt.executeQuery();
			
			while(rs.next()){	
				
				Long id = rs.getLong("id");
				String nome = rs.getString("nome");
				String email = rs.getString("email");
				String senha = rs.getString("senha");
				String cpf = rs.getString("cpf");
				Calendar dataNascimento = Calendar.getInstance();
				dataNascimento.setTime(rs.getDate("dataNasc"));	
				boolean isAdmin = rs.getBoolean("isadmin");
			
				usuarios.add(new Usuario(id,nome,email,senha, cpf, dataNascimento,isAdmin));
			}
			
			rs.close();
			stmt.close();
			return usuarios;
			
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
}
