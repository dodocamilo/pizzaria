package br.com.jonathan.pizzaria.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Result;
import br.com.jonathan.pizzaria.modelo.Pizza;

@Controller
public class CarrinhoController {

	@Inject private Carrinho carrinho;
	@Inject private Result result;
	
	public void adicionaPizza(Pizza pizza) {
		carrinho.adicionarPizza(pizza);
	}
}
