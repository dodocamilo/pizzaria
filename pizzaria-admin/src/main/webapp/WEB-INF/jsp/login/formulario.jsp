<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/header-login.jsp"/>

<form action="${linkTo[LoginController].autentica(null, null)}" method="post" class="form-signin">
	
	<h2 class="form-signin-heading">Autentique-se</h2>
	<label for="email" class="sr-only">E-mail:</label>
	<input type="email" id="email" name="email" value="${usuario.email}" class="form-control" 
		placeholder="Endereço de E-mail" required autofocus/>
	
	<label for="senha" class="sr-only">Senha:</label>
	<input type="password" id="senha" name="senha" class="form-control"
		placeholder="Senha" required/>
	
	<button class="btn btn-lg btn-primary btn-block" type="submit">Autenticar</button>
</form>
<c:if test="${not empty errors}">
  <div class="alert alert-danger">
    <c:forEach var="error" items="${errors}">
        ${error.category} - ${error.message}<br />
    </c:forEach>
  </div>
</c:if>

<c:import url="/WEB-INF/jsp/footer-login.jsp"/>