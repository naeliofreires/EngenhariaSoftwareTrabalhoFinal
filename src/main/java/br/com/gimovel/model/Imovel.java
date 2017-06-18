package br.com.gimovel.model;

public class Imovel {

	private int id;
	private String tipoimovel;
	private int qtdquartos;
	private String descricao;
	private float preco;
	private boolean status;

	//endereco
	private String estado;
	private String cidade;
	private String bairro;
	private String rua;
	private String numero;
	private String complemento;
	
	private int iduser;
	
	public Imovel() { }

	public Imovel(int id, String tipoimovel, int qtdquartos, String descricao, float preco, boolean status,
			String estado, String cidade, String bairro, String rua, String numero, String complemento) {
		this.id = id;
		this.tipoimovel = tipoimovel;
		this.qtdquartos = qtdquartos;
		this.descricao = descricao;
		this.preco = preco;
		this.status = status;
		this.estado = estado;
		this.cidade = cidade;
		this.bairro = bairro;
		this.rua = rua;
		this.numero = numero;
		this.complemento = complemento;
	}

	public Imovel(String tipoimovel, int qtdquartos, String descricao, float preco, String estado,
			String cidade, String bairro, String rua, String numero, String complemento) {
		this.tipoimovel = tipoimovel;
		this.qtdquartos = qtdquartos;
		this.descricao = descricao;
		this.preco = preco;
		this.estado = estado;
		this.cidade = cidade;
		this.bairro = bairro;
		this.rua = rua;
		this.numero = numero;
		this.complemento = complemento;
	}
	
	public Imovel(String tipoimovel, int qtdquartos, String descricao, float preco, boolean status, String estado,
			String cidade, String bairro, String rua, String numero, String complemento, int iduser) {
		this.tipoimovel = tipoimovel;
		this.qtdquartos = qtdquartos;
		this.descricao = descricao;
		this.preco = preco;
		this.status = status;
		this.estado = estado;
		this.cidade = cidade;
		this.bairro = bairro;
		this.rua = rua;
		this.numero = numero;
		this.complemento = complemento;
		this.iduser = iduser;
	}
	
	public Imovel(int id, String tipoimovel, int qtdquartos, String descricao, float preco, boolean status,
			String estado, String cidade, String bairro, String rua, String numero, String complemento, int iduser) {
		this.id = id;
		this.tipoimovel = tipoimovel;
		this.qtdquartos = qtdquartos;
		this.descricao = descricao;
		this.preco = preco;
		this.status = status;
		this.estado = estado;
		this.cidade = cidade;
		this.bairro = bairro;
		this.rua = rua;
		this.numero = numero;
		this.complemento = complemento;
		this.iduser = iduser;
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTipoImovel() {
		return tipoimovel;
	}

	public void setTipoImovel(String tipoImovel) {
		this.tipoimovel = tipoImovel;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public float getPreco() {
		return preco;
	}

	public void setPreco(float valor) {
		this.preco = valor;
	}

	public boolean getStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}
	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public String getRua() {
		return rua;
	}

	public void setRua(String rua) {
		this.rua = rua;
	}

	public String getNumero() {
		return numero;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}

	public String getComplemento() {
		return complemento;
	}

	public void setComplemento(String complemento) {
		this.complemento = complemento;
	}

	public int getQtdquartos() {
		return qtdquartos;
	}

	public void setQtdquartos(int qtdquartos) {
		this.qtdquartos = qtdquartos;
	}

	public String getBairro() {
		return bairro;
	}

	public void setBairro(String bairro) {
		this.bairro = bairro;
	}

	public int getIduser() {
		return iduser;
	}

	public void setIduser(int iduser) {
		this.iduser = iduser;
	}
	
}
