package br.com.jonathan.pizzaria.modelo;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Pizza {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@OneToMany(cascade = CascadeType.ALL)
	private List<Sabor> sabores;

	@Enumerated(EnumType.STRING)
	private TamanhoPizza tamanhoPizza;

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

}
