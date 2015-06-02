<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/header.jsp"/>

<div class="page-header">
	<h1>Formulário de bebida</h1>
</div>

<form action="${linkTo[BebidaController].adiciona}" method="post" role="form">
	<input type="hidden" name="bebida.id" value="${bebida.id}"/>

	<div class="form-group">
		<label for="nome">Nome:</label>
		<input type="text" id="nome" name="bebida.nome" value="${bebida.nome}" class="form-control"/>
	</div>
	
	<div class="form-group">
		<label for="valor">Valor:</label>
		<input type="text" id="valor" name="bebida.valor" value="${bebida.valor}" class="form-control"/>
	</div>
	
	<div class="form-group">
		<label for="tipo">Tipo de bebida:</label>
		<select name="bebida.tipoBebida" id="tipo" class="form-control">  
		    <option value="CERVEJA">Cerveja</option>  
		    <option value="REFRIGERANTE">Refrigerante</option>  
		    <option value="SUCO">Suco</option> 
		</select> 
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