package br.com.jonathan.pizzaria.dao;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.persistence.EntityManager;

import br.com.jonathan.pizzaria.modelo.Sabor;

public class SaborDao {
	
	@Inject
	private EntityManager manager;

	public void adiciona(Sabor sabor) {
		manager.merge(sabor);
	}

	public List<Sabor> lista() {
		return manager.createQuery("select s from Sabor s", Sabor.class).getResultList();
	}

	public Sabor buscaPorId(Integer id) {
		return manager.find(Sabor.class, id);
	}
	
	public void remove(Integer id) {
		Sabor saborEncontrado = buscaPorId(id);
		manager.remove(saborEncontrado);
	}
	
	public List<Sabor> recarrega(List<Sabor> sabores) {
		List<Sabor> saboresRecarregados = new ArrayList<Sabor>();
		for (Sabor sabor : sabores) {
			sabor = buscaPorId(sabor.getId());
			saboresRecarregados.add(sabor);
		}
		return saboresRecarregados;
	}

}
