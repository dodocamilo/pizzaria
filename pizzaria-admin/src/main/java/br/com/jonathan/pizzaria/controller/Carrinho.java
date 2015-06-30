package br.com.jonathan.pizzaria.controller;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import javax.enterprise.context.SessionScoped;
import javax.inject.Named;

import br.com.jonathan.pizzaria.modelo.ItemBebida;
import br.com.jonathan.pizzaria.modelo.Mesa;
import br.com.jonathan.pizzaria.modelo.Pedido;
import br.com.jonathan.pizzaria.modelo.Pizza;

@SessionScoped
@Named
public class Carrinho implements Serializable {

	private Pedido pedido = new Pedido();

	public void setMesa(Mesa mesa) {
		this.pedido.setMesa(mesa);
	}

	public Pedido getPedido() {
		return pedido;
	}

	public void adicionarPizza(Pizza pizza) {
		pedido.adicionarPizza(pizza);
	}

	public void adicionarItemBebida(ItemBebida itemBebida) {
		pedido.adicionarItemBebida(itemBebida);
	}

	public List<Pizza> getPizzas() {
		return pedido.getPizzas();
	}

	public List<ItemBebida> getItensBebida() {
		return new ArrayList<ItemBebida>(pedido.getBebidas());
	}

	public int getTotalDeItens() {
		return pedido.getTotalDeItens();
	}

	public BigDecimal getValorTotal() {
		return new BigDecimal(0);
	}
}
