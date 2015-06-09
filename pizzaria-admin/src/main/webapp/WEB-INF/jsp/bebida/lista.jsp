<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/header.jsp"/>

	<div class="page-header">
		<h1>Listagem de sabores</h1>
	</div>
	<a href="<c:url value='/bebida/formulario'/>">
	    Adicionar mais bebidas!
	</a>
	<table class="table table-striped table-hover table-bordered">
		<thead>
			<tr>
				<th>Nome</th>
				<th>Valor</th>
				<th>Tipo</th>
				<th>Remover</th>
				<th>Editar</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${bebidaList}" var="bebida">
			<tr>
				<td>${bebida.nome}</td>
				<td>${bebida.valor}</td>
				<td>${bebida.tipoBebida}</td>
				<td>
				  <a href="<c:url value='/bebida/remove?id=${bebida.id}'/>">
				  	<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
				  </a>
				</td>
				<td>
				  <a href="<c:url value='/bebida/edita?id=${bebida.id}'/>">
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