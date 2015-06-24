package br.com.jonathan.pizzaria.controller;

import java.util.List;

import javax.inject.Inject;
import javax.validation.Valid;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.Validator;
import br.com.jonathan.pizzaria.dao.SaborDao;
import br.com.jonathan.pizzaria.modelo.ItemBebida;
import br.com.jonathan.pizzaria.modelo.Pizza;
import br.com.jonathan.pizzaria.modelo.Sabor;

@Controller
public class CarrinhoController {

	@Inject private Carrinho carrinho;
	@Inject private Result result;
	@Inject private SaborDao saborDao;
	@Inject private Validator validator;
	
	public void adicionaPizza(@Valid Pizza pizza) {
		validator.onErrorRedirectTo(PedidoController.class).escolherPizza();
		List<Sabor> sabores = saborDao.recarrega(pizza.getSabores());
		pizza.setSabores(sabores);
		carrinho.adicionarPizza(pizza);
		result.include("mensagem", "Pizza incluída com sucesso!");
		result.redirectTo(PedidoController.class).categoria();
	}
	
	public void adicionaBebida(@Valid ItemBebida itemBebida) {
		validator.onErrorRedirectTo(BebidaController.class).lista();
		carrinho.adicionarItemBebida(itemBebida);
		result.include("mensagem", "Bebida incluída com sucesso!");
		result.redirectTo(BebidaController.class).lista();
	}
	
	public void removePizza() {
		
	}
	
	public void editaPizza() {
		
	}
	
	public void lista() {
		result.include("pizzas", carrinho.getPizzas());
		result.include("itensBebida", carrinho.getItensBebida());
	}
	
	public int getTotalDeItens() {
		return carrinho.getTotalDeItens();
	}
}
