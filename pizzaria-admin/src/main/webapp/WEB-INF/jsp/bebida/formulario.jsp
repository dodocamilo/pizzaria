<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/header.jsp"/>

<form action="${linkTo[BebidaController].adiciona}" method="post">
	<input type="hidden" name="bebida.id" value="${bebida.id}"/>

	<label for="nome">Nome:</label>
	<input type="text" id="nome" name="bebida.nome" value="${bebida.nome}" class="form-control"/>
	
	<label for="valor">Valor:</label>
	<input type="text" id="valor" name="bebida.valor" value="${bebida.valor}" class="form-control"/>
	
	<label for="tipo">Tipo de bebida:</label>
	<select name="bebida.tipoBebida" id="tipo">  
	    <option value="CERVEJA">Cerveja</option>  
	    <option value="REFRIGERANTE">Refrigerante</option>  
	    <option value="SUCO">Suco</option> 
	</select> 
		
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