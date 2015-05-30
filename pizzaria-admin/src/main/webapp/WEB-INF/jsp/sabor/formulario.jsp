<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/header.jsp"/>

<form action="${linkTo[SaborController].adiciona}" method="post">
	<input type="hidden" name="sabor.id" value="${sabor.id}"/>

	<label for="nome">Nome:</label>
	<input type="text" id="nome" name="sabor.nome" value="${sabor.nome}" class="form-control"/>
	
	<label for="descricao">Descrição:</label>
	<input type="text" id="descricao" name="sabor.descricao" value="${sabor.descricao}" class="form-control"/>
	
	<input type="submit" value="Cadastrar"/>
</form>

<c:if test="${not empty errors}">
  <div class="alert alert-danger">
    <c:forEach var="error" items="${errors}">
        ${error.category} - ${error.message}<br />
    </c:forEach>
  </div>
</c:if>

<c:import url="/WEB-INF/jsp/footer.jsp"/>