package br.com.gimovel.model;

public class Imovel {

	private Long id;
	private String tipoImovel;
	private String descricao;
	private float valor;
	private String status;
	
	public Imovel() {

	}
	
	public Imovel(String tipoImovel, String descricao, float valor, String status) {
		this.tipoImovel = tipoImovel;
		this.descricao = descricao;
		this.valor = valor;
		this.status = status;
	}

	public Imovel(Long id, String tipoImovel, String descricao, float valor, String status) {
		this.id = id;
		this.tipoImovel = tipoImovel;
		this.descricao = descricao;
		this.valor = valor;
		this.status = status;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTipoImovel() {
		return tipoImovel;
	}

	public void setTipoImovel(String tipoImovel) {
		this.tipoImovel = tipoImovel;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public float getValor() {
		return valor;
	}

	public void setValor(float valor) {
		this.valor = valor;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
}
