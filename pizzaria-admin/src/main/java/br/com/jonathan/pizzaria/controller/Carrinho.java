package br.com.jonathan.pizzaria.controller;

import javax.enterprise.context.SessionScoped;

import br.com.jonathan.pizzaria.modelo.ItemBebida;
import br.com.jonathan.pizzaria.modelo.Mesa;
import br.com.jonathan.pizzaria.modelo.Pedido;
import br.com.jonathan.pizzaria.modelo.Pizza;

import java.io.Serializable;

@SessionScoped
public class Carrinho implements Serializable {

	private Mesa mesa;
	private Pedido pedido;
	
	public void setMesa(Mesa mesa) {
		this.mesa = mesa;
	}
	
	public void adicionarPizza(Pizza pizza) {
		pedido.adicionarPizza(pizza);
	}
	
	public void adicionarItemBebida(ItemBebida itemBebida) {
		pedido.adicionarItemBebida(itemBebida);
	}
}
