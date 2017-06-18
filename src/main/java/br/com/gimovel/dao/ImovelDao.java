package br.com.gimovel.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.gimovel.connection.ConnectionFactory;
import br.com.gimovel.model.Imovel;


public class ImovelDao {
	
	private final Connection connection;
	
	public ImovelDao(){
		this.connection = new ConnectionFactory().getConnection();
	}
	
	public void insertImovel(Imovel imovel){
		String sql = "insert into imovel(tipoimovel, qtdquartos, descricao, preco, status, estado, cidade, bairro, rua, numero, complemento, iduser) values(?,?,?,?,?,?,?,?,?,?,?,?)";
		
		try {
			PreparedStatement st = connection.prepareStatement(sql);
			st.setString(1, imovel.getTipoimovel());
			st.setInt(2, imovel.getQtdquartos());
			st.setString(3, imovel.getDescricao());
			st.setFloat(4, imovel.getPreco());
			st.setBoolean(5, imovel.getStatus());
			st.setString(6, imovel.getEstado());
			st.setString(7, imovel.getCidade());
			st.setString(8, imovel.getBairro());
			st.setString(9, imovel.getRua());
			st.setString(10, imovel.getNumero());
			st.setString(11, imovel.getComplemento());
			st.setInt(12, imovel.getIduser());
			
			st.execute();
			st.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public void deleteImovel(int id){
		String sql = "delete from imovel where id = ?";
		
		try {
			PreparedStatement st = connection.prepareStatement(sql);
			st.setLong(1, id);
			
			st.execute();
			st.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public void updateImovel(Imovel imovel){
		String sql = "update imovel set tipoimovel = ?, qtdquartos = ?, descricao = ?, preco = ?, status = ?, estado = ?, cidade = ?, bairro = ?, rua = ?, numero = ?, complemento = ? where id = ?";

		try {
			PreparedStatement st = connection.prepareStatement(sql);
			
			st.setString(1, imovel.getTipoimovel());
			st.setInt(2, imovel.getQtdquartos());
			st.setString(3, imovel.getDescricao());
			st.setFloat(4, imovel.getPreco());
			st.setBoolean(5, imovel.getStatus());
			st.setString(6, imovel.getEstado());
			st.setString(7, imovel.getCidade());
			st.setString(8, imovel.getBairro());
			st.setString(9, imovel.getRua());
			st.setString(10, imovel.getNumero());
			st.setString(11, imovel.getComplemento());
			st.setInt(12, imovel.getId());
			
			st.execute();
	        st.close();
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	
	public List<Imovel> getAllImovel(){
		String sql = "select * from imovel";
		
		try {
			PreparedStatement st = connection.prepareStatement(sql);
			ArrayList<Imovel> imoveis = new ArrayList<Imovel>();
			ResultSet rs = st.executeQuery();
			
			while(rs.next()){
				int id = rs.getInt("id");
				String tipoimovel = rs.getString("tipoimovel");
				int qtdquartos = rs.getInt("qtdquartos");
				String descricao = rs.getString("descricao");
				float preco = rs.getFloat("preco");
				boolean status = rs.getBoolean("status");
				String estado = rs.getString("estado");
				String cidade = rs.getString("cidade");
				String bairro = rs.getString("bairro");
				String rua = rs.getString("rua");
				String numero = rs.getString("numero");
				String complemento = rs.getString("complemento");
				int iduser = rs.getInt("iduser");
				
				imoveis.add(new Imovel(id, tipoimovel, qtdquartos, descricao, preco, status, estado, cidade, bairro, rua, numero, complemento,iduser));
			}
			
			rs.close();
			st.close();
			return imoveis;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public List<Imovel> getImovelByQtdQuartosMaiorIgual(int qtdQuartos){
		String sql = "select * from imovel where qtdquartos >= ?";
		
		try {
			PreparedStatement st = connection.prepareStatement(sql);
			st.setInt(1, qtdQuartos);
			ArrayList<Imovel> imoveis = new ArrayList<Imovel>();
			ResultSet rs = st.executeQuery();
			
			while(rs.next()){
				int id = rs.getInt("id");
				String tipoimovel = rs.getString("tipoimovel");
				int qtdquartos = rs.getInt("qtdquartos");
				String descricao = rs.getString("descricao");
				float preco = rs.getFloat("preco");
				boolean status = rs.getBoolean("status");
				String estado = rs.getString("estado");
				String cidade = rs.getString("cidade");
				String bairro = rs.getString("bairro");
				String rua = rs.getString("rua");
				String numero = rs.getString("numero");
				String complemento = rs.getString("complemento");			
				int iduser = rs.getInt("iduser");
				
				imoveis.add(new Imovel(id, tipoimovel, qtdquartos, descricao, preco, status, estado, cidade, bairro, rua, numero, complemento,iduser));
			}
			
			rs.close();
			st.close();
			return imoveis;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public List<Imovel> getImovelByQtdQuartosIgual(int qtdQuartos){
		String sql = "select * from imovel where qtdquartos = ?";
		
		try {
			PreparedStatement st = connection.prepareStatement(sql);
			st.setInt(1, qtdQuartos);
			ArrayList<Imovel> imoveis = new ArrayList<Imovel>();
			ResultSet rs = st.executeQuery();
			
			while(rs.next()){
				int id = rs.getInt("id");
				String tipoimovel = rs.getString("tipoimovel");
				int qtdquartos = rs.getInt("qtdquartos");
				String descricao = rs.getString("descricao");
				float preco = rs.getFloat("preco");
				boolean status = rs.getBoolean("status");
				String estado = rs.getString("estado");
				String cidade = rs.getString("cidade");
				String bairro = rs.getString("bairro");
				String rua = rs.getString("rua");
				String numero = rs.getString("numero");
				String complemento = rs.getString("complemento");			
				int iduser = rs.getInt("iduser");
				
				imoveis.add(new Imovel(id, tipoimovel, qtdquartos, descricao, preco, status, estado, cidade, bairro, rua, numero, complemento,iduser));
			}
			
			rs.close();
			st.close();
			return imoveis;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public List<Imovel> getImovelByPrecoMaiorIgual(float precoGet){
		String sql = "select * from imovel where preco >= ?";
		
		try {
			PreparedStatement st = connection.prepareStatement(sql);
			st.setFloat(1, precoGet);
			ArrayList<Imovel> imoveis = new ArrayList<Imovel>();
			ResultSet rs = st.executeQuery();
			
			while(rs.next()){
				int id = rs.getInt("id");
				String tipoimovel = rs.getString("tipoimovel");
				int qtdquartos = rs.getInt("qtdquartos");
				String descricao = rs.getString("descricao");
				float preco = rs.getFloat("preco");
				boolean status = rs.getBoolean("status");
				String estado = rs.getString("estado");
				String cidade = rs.getString("cidade");
				String bairro = rs.getString("bairro");
				String rua = rs.getString("rua");
				String numero = rs.getString("numero");
				String complemento = rs.getString("complemento");			
				int iduser = rs.getInt("iduser");
				
				imoveis.add(new Imovel(id, tipoimovel, qtdquartos, descricao, preco, status, estado, cidade, bairro, rua, numero, complemento,iduser));
			}
			
			rs.close();
			st.close();
			return imoveis;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public List<Imovel> getImovelByPrecoIgual(float precoGet){
		String sql = "select * from imovel where preco = ?";
		
		try {
			PreparedStatement st = connection.prepareStatement(sql);
			st.setFloat(1, precoGet);
			ArrayList<Imovel> imoveis = new ArrayList<Imovel>();
			ResultSet rs = st.executeQuery();
			
			while(rs.next()){
				int id = rs.getInt("id");
				String tipoimovel = rs.getString("tipoimovel");
				int qtdquartos = rs.getInt("qtdquartos");
				String descricao = rs.getString("descricao");
				float preco = rs.getFloat("preco");
				boolean status = rs.getBoolean("status");
				String estado = rs.getString("estado");
				String cidade = rs.getString("cidade");
				String bairro = rs.getString("bairro");
				String rua = rs.getString("rua");
				String numero = rs.getString("numero");
				String complemento = rs.getString("complemento");			
				int iduser = rs.getInt("iduser");
				
				imoveis.add(new Imovel(id, tipoimovel, qtdquartos, descricao, preco, status, estado, cidade, bairro, rua, numero, complemento,iduser));
			}
			
			rs.close();
			st.close();
			return imoveis;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public List<Imovel> getImovelByLocalidadeCidadeBairro(String cidadeGet, String bairroGet){
		String sql = "select * from imovel where UPPER(cidade) LIKE '%' || UPPER(?) || '%' AND UPPER(bairro) LIKE '%' || UPPER(?) || '%'";
		
		try {
			PreparedStatement st = connection.prepareStatement(sql);
			st.setString(1, cidadeGet);
			st.setString(2, bairroGet);
			
			ArrayList<Imovel> imoveis = new ArrayList<Imovel>();
			ResultSet rs = st.executeQuery();
			
			while(rs.next()){
				int id = rs.getInt("id");
				String tipoimovel = rs.getString("tipoimovel");
				int qtdquartos = rs.getInt("qtdquartos");
				String descricao = rs.getString("descricao");
				float preco = rs.getFloat("preco");
				boolean status = rs.getBoolean("status");
				String estado = rs.getString("estado");
				String cidade = rs.getString("cidade");
				String bairro = rs.getString("bairro");
				String rua = rs.getString("rua");
				String numero = rs.getString("numero");
				String complemento = rs.getString("complemento");			
				int iduser = rs.getInt("iduser");
				
				imoveis.add(new Imovel(id, tipoimovel, qtdquartos, descricao, preco, status, estado, cidade, bairro, rua, numero, complemento,iduser));
			}
			
			rs.close();
			st.close();
			return imoveis;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public List<Imovel> getImovelByLocalidadeCidade(String cidadeGet){
		String sql = "select * from imovel where UPPER(cidade) LIKE '%' || UPPER(?) || '%'";
		
		try {
			PreparedStatement st = connection.prepareStatement(sql);
			st.setString(1, cidadeGet);
			
			ArrayList<Imovel> imoveis = new ArrayList<Imovel>();
			ResultSet rs = st.executeQuery();
			
			while(rs.next()){
				int id = rs.getInt("id");
				String tipoimovel = rs.getString("tipoimovel");
				int qtdquartos = rs.getInt("qtdquartos");
				String descricao = rs.getString("descricao");
				float preco = rs.getFloat("preco");
				boolean status = rs.getBoolean("status");
				String estado = rs.getString("estado");
				String cidade = rs.getString("cidade");
				String bairro = rs.getString("bairro");
				String rua = rs.getString("rua");
				String numero = rs.getString("numero");
				String complemento = rs.getString("complemento");			
				int iduser = rs.getInt("iduser");
				
				imoveis.add(new Imovel(id, tipoimovel, qtdquartos, descricao, preco, status, estado, cidade, bairro, rua, numero, complemento,iduser));
			}
			
			rs.close();
			st.close();
			return imoveis;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public List<Imovel> getImovelByLocalidadeBairro(String bairroGet){
		String sql = "select * from imovel where UPPER(bairro) LIKE '%' || UPPER(?) || '%'";
		
		try {
			PreparedStatement st = connection.prepareStatement(sql);
			st.setString(1, bairroGet);
			
			ArrayList<Imovel> imoveis = new ArrayList<Imovel>();
			ResultSet rs = st.executeQuery();
			
			while(rs.next()){
				int id = rs.getInt("id");
				String tipoimovel = rs.getString("tipoimovel");
				int qtdquartos = rs.getInt("qtdquartos");
				String descricao = rs.getString("descricao");
				float preco = rs.getFloat("preco");
				boolean status = rs.getBoolean("status");
				String estado = rs.getString("estado");
				String cidade = rs.getString("cidade");
				String bairro = rs.getString("bairro");
				String rua = rs.getString("rua");
				String numero = rs.getString("numero");
				String complemento = rs.getString("complemento");			
				int iduser = rs.getInt("iduser");
				
				imoveis.add(new Imovel(id, tipoimovel, qtdquartos, descricao, preco, status, estado, cidade, bairro, rua, numero, complemento,iduser));
			}
			
			rs.close();
			st.close();
			return imoveis;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public List<Imovel> getImovelByTipoImovel(String tipoimovelGet){
		String sql = "select * from imovel where tipoimovel = ?";
		
		try {
			PreparedStatement st = connection.prepareStatement(sql);
			st.setString(1, tipoimovelGet);
			ArrayList<Imovel> imoveis = new ArrayList<Imovel>();
			ResultSet rs = st.executeQuery();
			
			while(rs.next()){
				int id = rs.getInt("id");
				String tipoimovel = rs.getString("tipoimovel");
				int qtdquartos = rs.getInt("qtdquartos");
				String descricao = rs.getString("descricao");
				float preco = rs.getFloat("preco");
				boolean status = rs.getBoolean("status");
				String estado = rs.getString("estado");
				String cidade = rs.getString("cidade");
				String bairro = rs.getString("bairro");
				String rua = rs.getString("rua");
				String numero = rs.getString("numero");
				String complemento = rs.getString("complemento");			
				int iduser = rs.getInt("iduser");
				
				imoveis.add(new Imovel(id, tipoimovel, qtdquartos, descricao, preco, status, estado, cidade, bairro, rua, numero, complemento,iduser));
			}
			
			rs.close();
			st.close();
			return imoveis;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public List<Imovel> getImovelByUsuario(int iduserGet){
		String sql = "select * from imovel where iduser = ?";
		
		try {
			PreparedStatement st = connection.prepareStatement(sql);
			st.setInt(1, iduserGet);
			ArrayList<Imovel> imoveis = new ArrayList<Imovel>();
			ResultSet rs = st.executeQuery();
			
			while(rs.next()){
				int id = rs.getInt("id");
				String tipoimovel = rs.getString("tipoimovel");
				int qtdquartos = rs.getInt("qtdquartos");
				String descricao = rs.getString("descricao");
				float preco = rs.getFloat("preco");
				boolean status = rs.getBoolean("status");
				String estado = rs.getString("estado");
				String cidade = rs.getString("cidade");
				String bairro = rs.getString("bairro");
				String rua = rs.getString("rua");
				String numero = rs.getString("numero");
				String complemento = rs.getString("complemento");
				int iduser = rs.getInt("iduser");
				
				imoveis.add(new Imovel(id, tipoimovel, qtdquartos, descricao, preco, status, estado, cidade, bairro, rua, numero, complemento,iduser));
			}
			
			rs.close();
			st.close();
			return imoveis;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
