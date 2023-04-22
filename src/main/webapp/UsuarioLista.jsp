<%@page import="uva.model.Usuario"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<!-- Bootstrap -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
	crossorigin="anonymous">
	
</script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp"
	crossorigin="anonymous">
<!-- CSS -->
<link rel="stylesheet" href="styles.css">
<title>Atividade Avaliativa A1</title>
</head>

<body class="container-fluid row text-light">
	<div class="row pulo text-light" style="padding-top: 10vw"></div>
	<section class="col-lg-2 col-md-0 col-sm-1"></section>
	<main class="col-lg-8 col-md-12 col-sm-12 col-xs-12"
		style="background-color: #1e88e5;">
		
		
		<!-- MENU -->
		<nav class="navbar navbar-expand-xl navbar-dark bg-warning">
			<div class="container-fluid">
				<a class="navbar-brand bg-white" style="padding: 5px;"> <img
					alt="" src="logo_uva.png" width="142" height="40">
				</a>
				<button class="navbar-toggler order-first collapsed bg-primary"
					type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar"
					aria-expanded="false">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="navbar-collapse collapse" id="mynavbar" style="">
					<ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll"
						style="-bs-scroll-height: 100px; font-size: 1.3em;">
						<li class="nav-item"><a
							class="btn btn-lg btn-outline-primary mt-3 me-2"
							href="LojaFC?acao=null" role="button">Home</a></li>
						<li class="nav-item dropdown">
							<a class="btn btn-lg btn-outline-primary dropdown-toggle p-2 mt-3 me-2" role="button"
								data-bs-toggle="dropdown" aria-expanded="false">Produtos</a>
								<ul class="dropdown-menu">								
									<li><a class="dropdown-item" href="LojaFC?acao=listar-usuario">Listar Usu�rios</a></li>
									<li><hr class="dropdown-divider"></li>
									<li><a class="dropdown-item" href="LojaFC?acao=novo-usuario">Novo Usu�rio</a></li>
									<li><a class="dropdown-item" href="#">Alterar Usu�rio</a></li>
									<li><a class="dropdown-item" href="#">Excluir Usu�rio</a></li>															
								</ul>
						</li>
						<li class="nav-item dropdown">
							<a class="btn btn-lg btn-outline-primary dropdown-toggle p-2 mt-3 me-2" role="button"
								data-bs-toggle="dropdown" aria-expanded="false">Usu�rios</a>
								<ul class="dropdown-menu">								
									<li><a class="dropdown-item" href="LojaFC?acao=listar-usuario">Listar Usu�rios</a></li>
									<li><hr class="dropdown-divider"></li>
									<li><a class="dropdown-item" href="LojaFC?acao=novo-usuario">Novo Usu�rio</a></li>
									<li><a class="dropdown-item" href="#">Alterar Usu�rio</a></li>
									<li><a class="dropdown-item" href="#">Excluir Usu�rio</a></li>															
								</ul>
						</li>
						<li class="nav-item dropdown">
							<a class="btn btn-lg btn-outline-primary dropdown-toggle p-2 mt-3 me-2" role="button"
								data-bs-toggle="dropdown" aria-expanded="false">Fornecedores</a>
								<ul class="dropdown-menu">								
									<li><a class="dropdown-item" href="LojaFC?acao=listar-usuario">Listar Usu�rios</a></li>
									<li><hr class="dropdown-divider"></li>
									<li><a class="dropdown-item" href="LojaFC?acao=novo-usuario">Novo Usu�rio</a></li>
									<li><a class="dropdown-item" href="#">Alterar Usu�rio</a></li>
									<li><a class="dropdown-item" href="#">Excluir Usu�rio</a></li>															
								</ul>
						</li>
						<li class="nav-item dropdown">
							<a class="btn btn-lg btn-outline-primary dropdown-toggle p-2 mt-3 me-2" role="button"
								data-bs-toggle="dropdown" aria-expanded="false">Estoque</a>
								<ul class="dropdown-menu">								
									<li><a class="dropdown-item" href="LojaFC?acao=listar-usuario">Listar Usu�rios</a></li>
									<li><hr class="dropdown-divider"></li>
									<li><a class="dropdown-item" href="LojaFC?acao=novo-usuario">Novo Usu�rio</a></li>
									<li><a class="dropdown-item" href="#">Alterar Usu�rio</a></li>
									<li><a class="dropdown-item" href="#">Excluir Usu�rio</a></li>															
								</ul>
						</li>

					</ul>
					<form class="d-flex" style="margin: 0px" action="LojaFC"
						method="post">
						<div class="input-group mb-3" style="margin-top: 16px;">
							<input type="text" class="form-control" placeholder="Procurar">
							<span class="input-group-text" id="basic-addon2"> <input
								type="submit" class="btn btn-sm" type="submit" id="procurar"
								name="acao" value="Procurar">
							</span>
						</div>
					</form>
				</div>
			</div>
		</nav>
		<!-- FIM MENU -->
		
		<!-- CONTEUDO -->
		<header>
			<h1 class="text-center">Lista de Usu�rios</h1>
		</header>
			<table class="table table-striped text-center align-middle"
				style="margin: 0px">
				<thead class="table-primary">
					<tr class="h2">
						<td>ID</td>
						<td>NOME</td>
						<td>TELEFONE</td>
						<td>E-MAIL</td>
						<td>SENHA</td>
				</thead>
				<tbody class="table-warning tabelanome h4">
				<%
					List<Usuario> lista = (List<Usuario>) request.getAttribute("lista");
        			for(Usuario u:lista){
       			%>
	       			<tr class="bg-warning h5 ">
	        			<td><%=u.id%></td>
	        			<td><%=u.nome%></td>
	        			<td><%=u.telefone%></td>
	        			<td><%=u.email%></td>
	        			<td><input class="form-control" type="password" value="<%=u.senha%>"/ disabled="disabled" size="10"></td>
	        			<td class="text-center" >
	        				 <a href="LojaFC?acao=form-alterar-usuario&id=<%=u.id%>" 
	        				 	class ="text-primary btn btn-outline-danger">Alterar</a>
	        				 <a href="LojaFC?acao=excluir-usuario&id=<%=u.id%>"
	        				 class="btn btn-danger">Excluir</a>
	        			</td>
	        		</tr>
        		<% } %>
				</tbody>
			</table>
		


	</main>
	<section class="col-3 col-md-0 col-sm-1"></section>
</body>
</html>