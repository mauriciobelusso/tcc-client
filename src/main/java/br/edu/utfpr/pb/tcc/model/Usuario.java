package br.edu.utfpr.pb.tcc.model;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;

public class Usuario implements Serializable {

	private static final long serialVersionUID = 1L;
	private Long id;
	private String nome;
	private String username;
	private String password;
	private Set<Permissao> permissoes;
	private Date lastPasswordReset;

	public Usuario(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}

	public Usuario() {
		super();
	}

	public String getPassword() {
		return this.password;
	}

	public String getUsername() {
		return this.username;
	}

	public Usuario(Long id, String nome, String username, String password, Set<Permissao> permissoes,
			Date lastPasswordReset) {
		super();
		this.id = id;
		this.nome = nome;
		this.username = username;
		this.password = password;
		this.permissoes = permissoes;
		this.lastPasswordReset = lastPasswordReset;
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

	public Set<Permissao> getPermissoes() {
		return permissoes;
	}

	public void setPermissoes(Set<Permissao> permissoes) {
		this.permissoes = permissoes;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setLastPasswordReset(Date lastPasswordReset) {
		this.lastPasswordReset = lastPasswordReset;
	}	

	public Date getLastPasswordReset() {
		return lastPasswordReset;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Usuario other = (Usuario) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}
}
