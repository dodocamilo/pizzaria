<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/header.jsp"/>
	<h1>Listagem de usuários</h1>
	<a href="<c:url value='/usuario/formulario'/>">
	    Adicionar mais usuários!
	</a>
	<table class="table table-stripped table-hover table-bordered">
		<thead>
			<tr>
				<th>Nome</th>
				<th>E-mail</th>
				<th>Tipo</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${usuarioList}" var="usuario">
			<tr>
				<td>${usuario.nome}</td>
				<td>${usuario.email}</td>
				<td>${usuario.tipoUsuario}</td>
				<td>
				  <a href="<c:url value='/usuario/remove?id=${usuario.id}'/>">Remover</a>
				</td>
				<td>
				  <a href="<c:url value='/usuario/edita?id=${usuario.id}'/>">Editar</a>
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