<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/header.jsp"/>

<div class="page-header">
	<h1>Formulário de usuário</h1>
</div>

<form action="${linkTo[UsuarioController].adiciona}" method="post" role="form">
	<input type="hidden" name="usuario.id" value="${usuario.id}"/>

	<div class="form-group">
		<label for="nome">Nome:</label>
		<input type="text" id="nome" name="usuario.nome" value="${usuario.nome}" class="form-control"/>
	</div>
	
	<div class="form-group">
		<label for="email">E-mail para login:</label>
		<input type="text" id="email" name="usuario.email" value="${usuario.email}" class="form-control"/>
	</div>
	
	<div class="form-group">
		<label for="senha">Senha:</label>
		<input type="password" id="senha" name="usuario.senha" class="form-control"/>
	</div>
	
	<div class="form-group">
		<label for="tipo">Tipo de usuário:</label>
		<select name="usuario.tipoUsuario" id="tipo" class="form-control">  
		    <option value="ADMINISTRADOR">Administrador</option>  
		    <option value="FUNCIONARIO">Funcionario</option>  
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