package br.com.jonathan.pizzaria.controller;

import java.util.List;

import javax.inject.Inject;
import javax.validation.Valid;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.Validator;
import br.com.jonathan.pizzaria.dao.BebidaDao;
import br.com.jonathan.pizzaria.modelo.Bebida;

@Controller
public class BebidaController {

	@Inject private Result result;
	@Inject private Validator validator;
	@Inject private BebidaDao bebidaDao;

	public void formulario() {}
	
	public void adiciona(@Valid Bebida bebida) {
		validator.onErrorUsePageOf(this).formulario();
		bebidaDao.adiciona(bebida);
		result.include("mensagem", "Bebida inserida com sucesso!");
		result.redirectTo(this).lista();
	}

	public List<Bebida> lista() {
		return bebidaDao.lista();
	}
	
	public void remove(Integer id) {
		bebidaDao.remove(id);
		result.include("mensagem", "Bebida removida com sucesso!");
		result.redirectTo(this).lista();
	}
	
	public void edita(Integer id) {
		Bebida bebidaEncontrada = bebidaDao.buscaPorId(id);
		result.include(bebidaEncontrada);
		result.of(this).formulario();
	}
}
