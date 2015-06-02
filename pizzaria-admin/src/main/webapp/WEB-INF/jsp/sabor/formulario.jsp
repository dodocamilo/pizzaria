<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/header.jsp"/>

<div class="page-header">
	<h1>Formulário de sabor</h1>
</div>
<form action="${linkTo[SaborController].adiciona}" method="post" role="form">
	<input type="hidden" name="sabor.id" value="${sabor.id}"/>

	<div class="form-group">
		<label for="nome">Nome:</label>
		<input type="text" id="nome" name="sabor.nome" value="${sabor.nome}" class="form-control"/>
	</div>
	
	<div class="form-group">
		<label for="descricao">Descrição:</label>
		<input type="text" id="descricao" name="sabor.descricao" value="${sabor.descricao}" class="form-control"/>
	</div>
	
	<button type="submit" class="btn btn-default">Cadastrar</button>
</form>

<c:if test="${not empty errors}">
  <div class="alert alert-danger">
    <c:forEach var="error" items="${errors}">
        ${error.category} - ${error.message}<br />
    </c:forEach>
  </div>
</c:if>

<c:import url="/WEB-INF/jsp/footer.jsp"/>