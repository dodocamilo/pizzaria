package br.com.jonathan.pizzaria.modelo;

import java.io.Serializable;
import java.math.BigDecimal;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.DecimalMin;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Bebida implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	@NotEmpty
	private String nome;
	
	@DecimalMin("0.00")
	private BigDecimal valor;
	
	@Enumerated(EnumType.STRING)
	private TipoBebida tipoBebida;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public BigDecimal getValor() {
		return valor;
	}

	public void setValor(BigDecimal valor) {
		this.valor = valor;
	}

	public TipoBebida getTipoBebida() {
		return tipoBebida;
	}

	public void setTipoBebida(TipoBebida tipoBebida) {
		this.tipoBebida = tipoBebida;
	}
	
}
