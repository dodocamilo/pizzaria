<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Pizzaria</title>
	<link href="<c:url value='/css/bootstrap.min.css'/>" rel="stylesheet"/>
	<link href="<c:url value='/css/site.css'/>" rel="stylesheet"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  	<script src="<c:url value='/js/bootstrap.min.js'/>"></script>
</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container">
			<div class="navbar-header">
	          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
	            <span class="sr-only">Toggle navigation</span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	          </button>
	          <a class="navbar-brand" href="${linkTo[IndexController].index()}">Pizzaria</a>
	        </div>
	        <div id="navbar" class="collapse navbar-collapse">
	          <ul class="nav navbar-nav">
	            <li><a href="${linkTo[UsuarioController].lista()}">Usuarios</a></li>
	            <li><a href="${linkTo[SaborController].lista()}">Sabores</a></li>
	            <li><a href="${linkTo[BebidaController].lista()}">Bebidas</a></li>
	            <li><a href="${linkTo[PedidoController].categoria()}">Pedido</a></li>
	          </ul>
	          <ul class="nav navbar-nav navbar-right">
	          	<c:if test="${empty carrinho or carrinho.totalDeItens eq 0}">
	          		<li><a href="${linkTo[CarrinhoController].lista()}">Carrinho <span class="badge">0</span></a></li>
	          	</c:if>
	          	<c:if test="${carrinho.totalDeItens > 0}">
	          		<li><a href="${linkTo[CarrinhoController].lista()}">
	          			Carrinho <span class="badge">${carrinho.totalDeItens}</span>
	          		</a></li>
	          	</c:if>
	            <li><a href="${linkTo[LoginController].desloga()}">Deslogar</a></li>
	          </ul>
	        </div>
		</div>
	</nav>
	<div class="container">
