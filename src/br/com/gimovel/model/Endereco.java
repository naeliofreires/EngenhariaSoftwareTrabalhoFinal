package br.com.gimovel.model;

public class Endereco {

	private Long id;
	private String estado;
	private String cidade;
	private String rua;
	private String numero;
	private String complemento;
	
	public Endereco() {
		// TODO Auto-generated constructor stub
	}

	public Endereco(String estado, String cidade, String rua, String numero, String complemento) {
		this.estado = estado;
		this.cidade = cidade;
		this.rua = rua;
		this.numero = numero;
		this.complemento = complemento;
	}

	public Endereco(Long id, String estado, String cidade, String rua, String numero, String complemento) {
		this.id = id;
		this.estado = estado;
		this.cidade = cidade;
		this.rua = rua;
		this.numero = numero;
		this.complemento = complemento;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
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
	
}
