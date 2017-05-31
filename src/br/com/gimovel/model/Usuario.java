package br.com.gimovel.model;

import java.util.Calendar;

public class Usuario {

	private Long id;
	private String nome;
	private String email;
	private String senha;
	private String cpf;
	private Calendar dataNascimento;
	private boolean isAdmin = false;
	
	public Usuario() {	}
	
	public Usuario(Long id, String nome, String email, String senha, String cpf, Calendar dataNascimento, boolean isAdmin) {
		this.id = id;
		this.nome = nome;
		this.email = email;
		this.senha = senha;
		this.cpf = cpf;
		this.dataNascimento = dataNascimento;
		this.isAdmin = isAdmin;
	}

	public Usuario(String nome, String email, String senha, String cpf, Calendar dataNascimento) {
		this.nome = nome;
		this.email = email;
		this.senha = senha;
		this.cpf = cpf;
		this.dataNascimento = dataNascimento;
	}



	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}


	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public Calendar getDataNascimento() {
		return dataNascimento;
	}

	public void setDataNascimento(Calendar dataNascimento) {
		this.dataNascimento = dataNascimento;
	}

	public boolean isAdmin() {
		return isAdmin;
	}

	public void setAdmin(boolean isAdmin) {
		this.isAdmin = isAdmin;
	}
	
}
