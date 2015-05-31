<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/header.jsp"/>
	<h1>Listagem de sabores</h1>
	<a href="<c:url value='/bebida/formulario'/>">
	    Adicionar mais bebidas!
	</a>
	<table class="table table-stripped table-hover table-bordered">
		<thead>
			<tr>
				<th>Nome</th>
				<th>Valor</th>
				<th>Tipo</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${bebidaList}" var="bebida">
			<tr>
				<td>${bebida.nome}</td>
				<td>${bebida.valor}</td>
				<td>${bebida.tipoBebida}</td>
				<td>
				  <a href="<c:url value='/bebida/remove?id=${bebida.id}'/>">Remover</a>
				</td>
				<td>
				  <a href="<c:url value='/bebida/edita?id=${bebida.id}'/>">Editar</a>
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