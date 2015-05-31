<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<title>Pizzaria</title>
	<link href="<c:url value='/css/bootstrap.css'/>" rel="stylesheet"/>
	<link href="<c:url value='/css/site.css'/>" rel="stylesheet"/>
</head>
<body>
	<nav>
		<ul class="nav nav-tabs">
			<li><a href="${linkTo[IndexController].index()}">Home</a></li>
			<li><a href="${linkTo[UsuarioController].lista()}">Usuarios</a></li>
			<li><a href="${linkTo[SaborController].lista()}">Sabores</a></li>
			<li><a href="${linkTo[BebidaController].lista()}">Bebidas</a></li>
			<li><a href="${linkTo[LoginController].desloga()}">Deslogar</a></li>
		</ul>
	</nav>
	<div class="container">
		<main class="col-sm-8">
	