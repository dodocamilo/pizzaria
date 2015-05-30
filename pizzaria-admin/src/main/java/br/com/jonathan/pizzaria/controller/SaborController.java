package br.com.jonathan.pizzaria.controller;

import java.util.List;

import javax.inject.Inject;
import javax.validation.Valid;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.Validator;
import br.com.jonathan.pizzaria.dao.SaborDao;
import br.com.jonathan.pizzaria.modelo.Sabor;

@Controller
public class SaborController {

	@Inject private Result result;
	@Inject private Validator validator;
	@Inject private SaborDao saborDao;
	
	public void formulario() {}
	
	public void adiciona(@Valid Sabor sabor) {
		validator.onErrorUsePageOf(this).formulario();
		saborDao.adiciona(sabor);
		result.include("mensagem", "Sabor cadastrado com sucesso!");
		result.redirectTo(this).lista();
	}
	
	public List<Sabor> lista() {
		return saborDao.lista();
	}
	
	public void remove(Integer id) {
		saborDao.remove(id);
		result.include("mensagem", "Sabor removido com sucesso!");
		result.redirectTo(this).lista();
	}
	
	public void edita(Integer id) {
		Sabor saborEncontrado = saborDao.buscaPorId(id);
		result.include(saborEncontrado);
		result.of(this).formulario();
	}
}
