<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/header.jsp"/>
	<div class="page-header">
		<h1>Carrinho</h1>
    </div>
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
	
	<c:if test="${not empty mensagem}">
	    <div class="alert alert-success">${mensagem}</div>
	</c:if>
</body>
</html>