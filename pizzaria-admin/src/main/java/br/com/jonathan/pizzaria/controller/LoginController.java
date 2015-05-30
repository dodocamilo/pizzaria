package br.com.jonathan.pizzaria.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.SimpleMessage;
import br.com.caelum.vraptor.validator.Validator;
import br.com.jonathan.pizzaria.dao.UsuarioDao;
import br.com.jonathan.pizzaria.modelo.Usuario;
import br.com.jonathan.pizzaria.seguranca.Open;
import br.com.jonathan.pizzaria.seguranca.UsuarioLogado;

@Controller
public class LoginController {

	@Inject private UsuarioDao usuarioDao;
	@Inject private UsuarioLogado usuarioLogado;
	@Inject private Result result;
	@Inject private Validator validator;
	
	@Open
	public void formulario() {}
	
	@Open
	public void autentica(String email, String senha) {
		Usuario usuario = usuarioDao.busca(email, senha);
		if (usuario != null) {
			usuarioLogado.fazLogin(usuario);
			result.redirectTo(UsuarioController.class).lista();
		} else {
			validator.add(new SimpleMessage("login_invalido", 
					"Login ou senha incorretos"));
			validator.onErrorRedirectTo(this).formulario();
		}
	}
	
	@Open
	public void desloga() {
		this.usuarioLogado.desloga();
		this.result.redirectTo(this).formulario();
	}
}
