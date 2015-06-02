package br.com.jonathan.pizzaria.modelo;

import java.math.BigDecimal;

public enum TamanhoPizza {

	PEQUENA(18.0), MEDIA(20.0), GRANDE(23.0);
	
	private TamanhoPizza(double valor) {
		this.valor = new BigDecimal(valor);
	}
	
	private BigDecimal valor;
	
	public BigDecimal getValor() {
		return valor;
	}
}
