package br.com.gimovel.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.gimovel.connection.ConnectionFactory;
import br.com.gimovel.model.Usuario;

public class UsuarioDao {
	
	private final Connection connection;
	
	public UsuarioDao() {
		this.connection = new ConnectionFactory().getConnection();
	}
	
	public void insertUser(Usuario usuario){

		String sql = "insert into usuario (nome,email,senha,cpf,dataNasc, isadmin) values (?,?,?,?,?,?)";

		try {
			PreparedStatement st = connection.prepareStatement(sql);
			st.setString(1, usuario.getNome());
			st.setString(2, usuario.getEmail());
			st.setString(3, usuario.getSenha());
			st.setString(4, usuario.getCpf());
			st.setString(5, usuario.getDataNascimento());
			st.setBoolean(6, false);
			st.execute();
			st.close();
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}

	public void updateUser(Usuario usuario){

		String sql = "update usuario set nome = ?, email = ?, senha = ?, cpf = ?, dataNasc = ? where id=?";

		try {
			PreparedStatement st = connection.prepareStatement(sql);
			
			st.setString(1, usuario.getNome());
			st.setString(2, usuario.getEmail());
			st.setString(3, usuario.getSenha());
			st.setString(4, usuario.getCpf());
			st.setString(5, usuario.getDataNascimento());
			st.setLong(6, usuario.getId());
			
			st.execute();
	        st.close();
		} catch (Exception e) {
			throw new RuntimeException(e);
		}

	}
	
	public void deleteUser(int id){
		
		String sql = "delete from usuario where id = ?";
		
		try {
			PreparedStatement st = connection.prepareStatement(sql);
			st.setInt(1, id);
			
			st.execute();
	        st.close();
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	
	public List<Usuario> getAllUser(){
		
		String sql = "select * from usuario";
		
		try {
			
			ArrayList<Usuario> usuarios = new ArrayList<Usuario>();
			PreparedStatement st = connection.prepareStatement(sql);	
			ResultSet rs = st.executeQuery();
			
			while(rs.next()){	
				
				int id = rs.getInt("id");
				String nome = rs.getString("nome");
				String email = rs.getString("email");
				String senha = rs.getString("senha");
				String cpf = rs.getString("cpf");
				String dataNascimento = rs.getString("dataNasc");	
				boolean isAdmin = rs.getBoolean("isadmin");
				
				usuarios.add(new Usuario(id,nome,email,senha, cpf, dataNascimento,isAdmin));
			}
			
			rs.close();
			st.close();
			return usuarios;
			
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	
	public Usuario getUsuario(Usuario usrx) {

		String sql = "select * from usuario where email = ? and senha = ?";

		try {
			
			PreparedStatement stmt = this.connection.prepareStatement(sql);
			
			stmt.setString(1, usrx.getEmail());
			stmt.setString(2, usrx.getSenha());
			
			ResultSet rs = stmt.executeQuery();
			
			Usuario usr = new Usuario();
			
			if (rs.next()) {
				usr.setId(rs.getInt("id"));
				usr.setNome(rs.getString("nome"));
				usr.setEmail(rs.getString("email"));
				usr.setCpf(rs.getString("cpf"));
				usr.setDataNascimento(rs.getString("dataNasc"));	
				usr.setAdmin(rs.getBoolean("isadmin"));			
			}
			rs.close();
			stmt.close();
			return usr;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			if (this.connection != null) {
				try {
					this.connection.close();
				} catch (SQLException e) {}
			}
		}
	}
	
	public boolean existUsuario(String email, String senha) {
		
		String sql = "select * from usuario where email=? and senha=?";

		try {
			
			PreparedStatement stmt = this.connection.prepareStatement(sql);
			
			stmt.setString(1, email);
			stmt.setString(2, senha);
			
			ResultSet rs = stmt.executeQuery();
			
			if(rs.next()){
				stmt.close();
				return true;
			}else{
				stmt.close();
				return false;
			}		
			
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			if (this.connection != null) {
				try {
					this.connection.close();
				} catch (SQLException e) {}
			}
		}
	}
}