package br.com.jonathan.pizzaria.modelo;

import java.math.BigDecimal;

public enum TamanhoPizza {

	PEQUENA(18.00), MEDIA(20.00), GRANDE(23.00);
	
	private TamanhoPizza(double valor) {
		this.valor = new BigDecimal(valor);
	}
	
	private BigDecimal valor;
	
	public BigDecimal getValor() {
		return valor;
	}
}
