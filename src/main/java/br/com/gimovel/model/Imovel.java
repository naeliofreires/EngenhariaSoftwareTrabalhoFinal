package br.com.gimovel.model;

public class Imovel {

	private int id;
	private String tipoimovel;
	private int qtdquartos;
	private int qtdsuites;
	private int area;
	private String descricao;
	private float preco;
	private boolean status = true;

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
			String estado, String cidade, String bairro, String rua, String numero, String complemento, int area, int suite) {
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
		this.area = area;
		this.qtdsuites = suite;
	}

	public Imovel(String tipoimovel, int qtdquartos, String descricao, float preco, String estado,
			String cidade, String bairro, String rua, String numero, String complemento, int suite, int area) {
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
		this.area = area;
		this.qtdsuites = suite;
	}
	
	public Imovel(String tipoimovel, int qtdquartos, String descricao, float preco, boolean status, String estado,
			String cidade, String bairro, String rua, String numero, String complemento, int iduser, int suite, int area) {
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
		this.area = area;
		this.qtdsuites = suite;
	}
	
	public Imovel(int id, String tipoimovel, int qtdquartos, String descricao, float preco, boolean status,
			String estado, String cidade, String bairro, String rua, String numero, String complemento, int iduser, int suite, int area) {
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
		this.area = area;
		this.qtdsuites = suite;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTipoimovel() {
		return tipoimovel;
	}

	public void setTipoimovel(String tipoimovel) {
		this.tipoimovel = tipoimovel;
	}

	public int getQtdquartos() {
		return qtdquartos;
	}

	public void setQtdquartos(int qtdquartos) {
		this.qtdquartos = qtdquartos;
	}

	public int getQtdsuites() {
		return qtdsuites;
	}

	public void setQtdsuites(int qtdsuites) {
		this.qtdsuites = qtdsuites;
	}

	public int getArea() {
		return area;
	}

	public void setArea(int area) {
		this.area = area;
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

	public void setPreco(float preco) {
		this.preco = preco;
	}

	public boolean isStatus() {
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

	public String getBairro() {
		return bairro;
	}

	public void setBairro(String bairro) {
		this.bairro = bairro;
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

	public int getIduser() {
		return iduser;
	}

	public void setIduser(int iduser) {
		this.iduser = iduser;
	}
	
}
