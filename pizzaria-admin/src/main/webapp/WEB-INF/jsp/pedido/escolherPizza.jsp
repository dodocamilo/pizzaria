<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/header.jsp"/>

<div class="page-header">
	<h1>Pizza</h1>
</div>

<form action="${linkTo[CarrinhoController].adicionaPizza}" method="post" role="form">
	<input type="hidden" name="pedido.id" value="${pedido.id}"/>

	<div class="form-group">
		<label for="tamanho">Sabores:</label>
		<c:forEach items="${sabores}" var="sabor" varStatus="s">
			<div class="checkbox">
			  <label><input type="checkbox" name="pizza.sabores[${s.index}].id"
			  	value="${sabor.id}">${sabor.nome} </label>
		  	</div>
		</c:forEach>
	</div>
	
	<div class="form-group">
		<label for="tamanho">Tamanho:</label>
		<select name="pizza.tamanhoPizza" id="tamanho" class="form-control">  
		    <option value="PEQUENA">Pequena</option>  
		    <option value="MEDIA">Media</option>  
		    <option value="GRANDE">Grande</option>  
		</select> 
	</div>
	
	<div class="form-group">
		<label for="observacao">Obeservação:</label>
		<textarea class="form-control" rows="3" id="observacao" name="pizza.observacao">${pizza.observacao}</textarea>
	</div>
	
	<div class="form-group">
		<label for="quantidade">Quantidade:</label>
		<select name="pizza.quantidade" id="quantidade" class="form-control">  
		    <option value="1">1</option>  
		    <option value="2">2</option>  
		    <option value="3">3</option>  
		    <option value="1">4</option>  
		    <option value="2">5</option>  
		    <option value="3">6</option>
		    <option value="1">7</option>  
		    <option value="2">8</option>  
		    <option value="3">9</option>
		    <option value="3">10</option>
		</select> 
	</div>
	
	<button type="submit" class="btn btn-default">Adicionar</button>
</form>

<c:if test="${not empty errors}">
  <div class="alert alert-danger">
    <c:forEach var="error" items="${errors}">
        ${error.category} - ${error.message}<br />
    </c:forEach>
  </div>
</c:if>

<c:import url="/WEB-INF/jsp/footer.jsp"/>