package br.com.jonathan.pizzaria.modelo;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Mesa {

	@Id
	private Integer numero;

	public Integer getNumero() {
		return numero;
	}

	public void setNumero(Integer numero) {
		this.numero = numero;
	}

}
