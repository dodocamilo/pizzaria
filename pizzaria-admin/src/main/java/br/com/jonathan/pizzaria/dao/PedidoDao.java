package br.com.jonathan.pizzaria.dao;

import javax.inject.Inject;
import javax.persistence.EntityManager;

import br.com.jonathan.pizzaria.modelo.Pedido;

public class PedidoDao {

	@Inject
	private EntityManager manager;
	
	public void adiciona(Pedido pedido) {
		manager.merge(pedido);
	}
}
