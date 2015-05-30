package br.com.jonathan.pizzaria.controller;

import java.util.List;

import javax.inject.Inject;
import javax.validation.Valid;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.Validator;
import br.com.jonathan.pizzaria.dao.UsuarioDao;
import br.com.jonathan.pizzaria.modelo.Usuario;

@Controller
public class UsuarioController {

	@Inject private UsuarioDao usuarioDao;
	@Inject private Validator validator;
	@Inject private Result result;
	
	@Get
	public void formulario() {}
	
	@Post
	public void adiciona(@Valid Usuario usuario) {
		validator.onErrorUsePageOf(this).formulario();
		usuarioDao.adiciona(usuario);
		result.include("mensagem", "Usuário cadastrado com sucesso!");
		result.redirectTo(this).lista();
	}
	
	public List<Usuario> lista() {
		return usuarioDao.lista();
	}
	
	public void remove(Integer id) {
		usuarioDao.remove(id);
		result.include("mensagem", "Usuário removido com sucesso!");
		result.redirectTo(this).lista();
	}
	
	public void edita(Integer id) {
		Usuario usuarioEncontrado = usuarioDao.buscaPorId(id);
		result.include(usuarioEncontrado);
		result.of(this).formulario();
	}
}
