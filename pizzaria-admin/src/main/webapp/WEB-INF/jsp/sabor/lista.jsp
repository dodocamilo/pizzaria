<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/header.jsp"/>
	<h1>Listagem de sabores</h1>
	<a href="<c:url value='/sabor/formulario'/>">
	    Adicionar mais sabores!
	</a>
	<table class="table table-stripped table-hover table-bordered">
		<thead>
			<tr>
				<th>Nome</th>
				<th>Descrição</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${saborList}" var="sabor">
			<tr>
				<td>${sabor.nome}</td>
				<td>${sabor.descricao}</td>
				<td>
				  <a href="<c:url value='/sabor/remove?id=${sabor.id}'/>">Remover</a>
				</td>
				<td>
				  <a href="<c:url value='/sabor/edita?id=${sabor.id}'/>">Editar</a>
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