package br.com.jonathan.pizzaria.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Result;
import br.com.jonathan.pizzaria.dao.SaborDao;

@Controller
public class PedidoController {

	@Inject Carrinho carrinho;
	@Inject Result result;
	@Inject SaborDao saborDao;
	
	public void categoria() {}
	
	public void escolherPizza() {
		result.include("sabores", saborDao.lista());
	}
	
	public void escolherBebida() {}
	
}
