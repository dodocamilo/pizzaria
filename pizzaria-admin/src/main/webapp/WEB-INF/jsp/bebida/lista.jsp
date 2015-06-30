<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  

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
				<th>Tipo</th>
				<th>Valor</th>
				<th>Adicionar ao pedido</th>
				<th>Remover</th>
				<th>Editar</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${bebidaList}" var="bebida">
			<tr>
				<td>${bebida.nome}</td>
				<td>${bebida.tipoBebida}</td>
				<td><fmt:formatNumber value="${bebida.valor}" minFractionDigits="2" type="currency"/></td>
				<td>
					<form action="${linkTo[CarrinhoController].adicionaBebida}" method="post" role="form">
						<input type="hidden" name="itemBebida.bebida.id" value="${bebida.id}" />
						<input type="hidden" name="itemBebida.bebida.nome" value="${bebida.nome}" />
						<input type="hidden" name="itemBebida.bebida.tipoBebida" value="${bebida.tipoBebida}" />
						<input type="hidden" name="itemBebida.bebida.valor" 
							value="<fmt:formatNumber value="${bebida.valor}" minFractionDigits="2"/>" />
						<input type="text" class="qtde" name="itemBebida.quantidade" value="1"/>
						<button class="btn btn-default" type="submit">Adicionar ao pedido</button>
					</form>
				</td>
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
	
	<c:if test="${not empty errors}">
	  <div class="alert alert-danger">
	    <c:forEach var="error" items="${errors}">
	        ${error.category} - ${error.message}<br />
	    </c:forEach>
	  </div>
	</c:if>
	
	<c:if test="${not empty mensagem}">
	    <div class="alert alert-success">${mensagem}</div>
	</c:if>
</body>
</html>