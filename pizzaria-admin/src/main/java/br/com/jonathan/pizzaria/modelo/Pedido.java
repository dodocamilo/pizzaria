package br.com.jonathan.pizzaria.modelo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Pedido implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	@OneToMany(cascade = CascadeType.ALL)
	private List<Pizza> pizzas = new ArrayList<Pizza>();
	
	@OneToMany(cascade = CascadeType.ALL)
	private Set<ItemBebida> bebidas = new HashSet<ItemBebida>();
	
	@ManyToOne
	private Usuario realizadorPedido;
	
	@ManyToOne
	private Mesa mesa;
	
	@Enumerated(EnumType.STRING)
	private StatusPedido statusPedido;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public List<Pizza> getPizzas() {
		return pizzas;
	}

	public void setPizzas(List<Pizza> pizzas) {
		this.pizzas = pizzas;
	}

	public Set<ItemBebida> getBebidas() {
		return bebidas;
	}

	public void setBebidas(Set<ItemBebida> bebidas) {
		this.bebidas = bebidas;
	}

	public Usuario getRealizadorPedido() {
		return realizadorPedido;
	}

	public void setRealizadorPedido(Usuario realizadorPedido) {
		this.realizadorPedido = realizadorPedido;
	}

	public Mesa getMesa() {
		return mesa;
	}

	public void setMesa(Mesa mesa) {
		this.mesa = mesa;
	}

	public StatusPedido getStatusPedido() {
		return statusPedido;
	}

	public void setStatusPedido(StatusPedido statusPedido) {
		this.statusPedido = statusPedido;
	}

	public void adicionarItemBebida(ItemBebida itemBebida) {
		this.bebidas.add(itemBebida);
	}

	public void adicionarPizza(Pizza pizza) {
		this.pizzas.add(pizza);
	}
	
	public int getTotalDeItens() {
		return pizzas.size() + bebidas.size();
	}
	
}
