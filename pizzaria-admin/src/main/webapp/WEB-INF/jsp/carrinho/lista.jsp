<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/header.jsp"/>
	<div class="page-header">
		<h1>Carrinho</h1>
    </div>
    <h3>Pizzas</h3>
	<table class="table table-stripped table-hover table-bordered">
		<thead>
			<tr>
				<th>Sabor</th>
				<th>Tamanho</th>
				<th>Observação</th>
				<th>Remover</th>
				<th>Editar</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${pizzas}" var="pizza">
			<tr>
				<td>
				<c:forEach items="${pizza.sabores}" var="sabor" varStatus="s">
					<c:if test="${s.index == 0}">${sabor.nome}</c:if>
					<c:if test="${s.index > 0}">, ${sabor.nome}</c:if>
				</c:forEach>
				</td>
				<td>${pizza.tamanhoPizza}</td>
				<td>${pizza.observacao}</td>
				<td>
				  <a href="<c:url value='/pedido/removePizza?id=${sabor.id}'/>">Remover</a>
				</td>
				<td>
				  <a href="<c:url value='/pedido/editaPizza?id=${sabor.id}'/>">Editar</a>
				</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<h3>Bebidas</h3>
	<table class="table table-striped table-hover table-bordered">
		<thead>
			<tr>
				<th>Nome</th>
				<th>Tipo</th>
				<th>Valor</th>
				<th>Quantidade</th>
				<th>Remover</th>
				<th>Editar</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${itensBebida}" var="itemBebida">
			<tr>
				<td>${itemBebida.bebida.nome}</td>
				<td>${itemBebida.bebida.tipoBebida}</td>
				<td>${itemBebida.bebida.valor}</td>
				<td>${itemBebida.quantidade}</td>
				<td>
				  <a href="<c:url value='/bebida/remove?id=${itemBebida.bebida.id}'/>">
				  	<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
				  </a>
				</td>
				<td>
				  <a href="<c:url value='/bebida/edita?id=${itemBebida.bebida.id}'/>">
				  	<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
				  </a>
				</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	
	
	<c:if test="${not empty mensagem}">
	    <div class="alert alert-success">${mensagem}</div>
	</c:if>
</body>
</html>