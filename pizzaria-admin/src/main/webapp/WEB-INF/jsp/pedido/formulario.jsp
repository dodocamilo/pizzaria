<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/header.jsp"/>

<div class="page-header">
	<h1>Formulário de pedido</h1>
</div>

<form action="${linkTo[CarrinhoController].adicionaPizza}" method="post">
	<input type="hidden" name="usuario.id" value="${usuario.id}"/>

	<label for="nome">Nome:</label>
	<input type="text" id="nome" name="usuario.nome" value="${usuario.nome}" class="form-control"/>
	
	<label for="email">E-mail para login:</label>
	<input type="text" id="email" name="usuario.email" value="${usuario.email}" class="form-control"/>
	
	<label for="senha">Senha:</label>
	<input type="password" id="senha" name="usuario.senha" class="form-control"/>
	
	<label for="tipo">Tipo de usuário:</label>
	<select name="usuario.tipoUsuario" id="tipo">  
	    <option value="ADMINISTRADOR">Administrador</option>  
	    <option value="FUNCIONARIO">Funcionario</option>  
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