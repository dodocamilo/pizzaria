package br.com.jonathan.pizzaria.dao;

import java.util.List;

import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

import br.com.jonathan.pizzaria.modelo.Usuario;

public class UsuarioDao {

	@Inject
	private EntityManager manager;

	public void adiciona(Usuario usuario) {
		manager.merge(usuario);
	}

	public List<Usuario> lista() {
		TypedQuery<Usuario> query = manager.createQuery(
				"select u from Usuario u", Usuario.class);
		return query.getResultList();
	}

	public Usuario buscaPorId(Integer id) {
		return manager.find(Usuario.class, id);
	}

	public void remove(Integer id) {
		Usuario usuario = buscaPorId(id);
		this.manager.remove(usuario);
	}

	public Usuario busca(String email, String senha) {
		TypedQuery<Usuario> query = this.manager
				.createQuery("select u from Usuario u where u.email = :email and u.senha = :senha",
						Usuario.class);
		query.setParameter("email", email);
		query.setParameter("senha", senha);
		
		try {
			return query.getSingleResult();
		} catch (NoResultException e) {
			return null;
		}
	}

}
