package br.com.jonathan.pizzaria.dao;

import java.util.List;

import javax.inject.Inject;
import javax.persistence.EntityManager;

import br.com.jonathan.pizzaria.modelo.Bebida;

public class BebidaDao {

	@Inject
	private EntityManager manager;
	
	public void adiciona(Bebida bebida) {
		manager.merge(bebida);
	}

	public List<Bebida> lista() {
		return manager.createQuery("select b from Bebida b", Bebida.class).getResultList();
	}

	public void remove(Integer id) {
		Bebida bebidaEncontrada = buscaPorId(id);
		manager.remove(bebidaEncontrada);
	}

	public Bebida buscaPorId(Integer id) {
		return manager.find(Bebida.class, id);
	}

}
