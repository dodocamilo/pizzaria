package br.com.jonathan.pizzaria.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Result;
import br.com.jonathan.pizzaria.modelo.Pizza;

@Controller
public class PedidoController {

	@Inject Carrinho carrinho;
	@Inject Result result;
	
	public void categoria() {}
	
	public void escolherPizza() {}
	
	public void escolherBebida() {}
	
	public void formulario() {}
	
	public void adicionaPizza(Pizza pizza) {
		carrinho.adicionarPizza(pizza);
	}
}
