<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/header.jsp"/>

<div class="page-header">
	<h1>Categoria de pedido</h1>
</div>
<c:if test="${not empty mensagem}">
    <div class="alert alert-success">${mensagem}</div>
</c:if>
<div class="col-md-6">
	<div class="caption">
		<h3>Pizza</h3>
	</div>
	<a href="${linkTo[PedidoController].escolherPizza()}">
		<img src="<c:url value='/images/pizza.jpg'/>" class="img-thumbnail" 
			style="height: 80%; width: 80%; display: block;" alt="Pizza">
	</a>
</div>
<div class="col-md-6">
	<div class="caption">
		<h3>Bebida</h3>
	</div>
	<a href="${linkTo[PedidoController].escolherBebida()}">
		<img src="<c:url value='/images/bebida.jpg'/>" class="img-thumbnail" 
			style="height: 80%; width: 80%; display: block;" alt="Bebida">
	</a>
</div>
<c:import url="/WEB-INF/jsp/footer.jsp"/>