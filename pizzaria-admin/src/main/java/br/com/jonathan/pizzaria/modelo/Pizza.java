package br.com.jonathan.pizzaria.modelo;

import java.math.BigDecimal;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Pizza {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@NotEmpty
	@OneToMany(cascade = CascadeType.ALL)
	private List<Sabor> sabores;

	@Enumerated(EnumType.STRING)
	private TamanhoPizza tamanhoPizza;
	
	private String observacao;
	
	private Integer quantidade;
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public List<Sabor> getSabores() {
		return sabores;
	}

	public void setSabores(List<Sabor> sabores) {
		this.sabores = sabores;
	}

	public TamanhoPizza getTamanhoPizza() {
		return tamanhoPizza;
	}

	public void setTamanhoPizza(TamanhoPizza tamanhoPizza) {
		this.tamanhoPizza = tamanhoPizza;
	}

	public String getObservacao() {
		return observacao;
	}

	public void setObservacao(String observacao) {
		this.observacao = observacao;
	}

	public Integer getQuantidade() {
		return quantidade;
	}

	public void setQuantidade(Integer quantidade) {
		this.quantidade = quantidade;
	}

	public BigDecimal getValor() {
		return tamanhoPizza.getValor().multiply(new BigDecimal(quantidade));
	}

}
