package br.com.jonathan.pizzaria.seguranca;

import javax.inject.Inject;

import br.com.caelum.vraptor.Accepts;
import br.com.caelum.vraptor.AroundCall;
import br.com.caelum.vraptor.Intercepts;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.controller.ControllerMethod;
import br.com.caelum.vraptor.interceptor.SimpleInterceptorStack;
import br.com.jonathan.pizzaria.controller.LoginController;

@Intercepts
public class AutorizadorInterceptor {

	@Inject private UsuarioLogado usuarioLogado;
	@Inject private Result result;
	@Inject private ControllerMethod controllerMethod;
	
	@AroundCall
	public void intercept(SimpleInterceptorStack stack) {
		if (usuarioLogado.isLogado()) {
			stack.next();
		} else {
			result.redirectTo(LoginController.class).formulario();
		}
	}
	
	@Accepts
	public boolean accepts() {
		return !controllerMethod.containsAnnotation(Open.class);
	}
}
