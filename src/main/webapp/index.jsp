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
									<li><a class="dropdown-item" href="LojaFC?acao=listar-usuario">Listar Usuários</a></li>
									<li><hr class="dropdown-divider"></li>
									<li><a class="dropdown-item" href="LojaFC?acao=novo-usuario">Novo Usuário</a></li>
									<li><a class="dropdown-item" href="#">Alterar Usuário</a></li>
									<li><a class="dropdown-item" href="#">Excluir Usuário</a></li>															
								</ul>
						</li>
						<li class="nav-item dropdown">
							<a class="btn btn-lg btn-outline-primary dropdown-toggle p-2 mt-3 me-2" role="button"
								data-bs-toggle="dropdown" aria-expanded="false">Usuários</a>
								<ul class="dropdown-menu">								
									<li><a class="dropdown-item" href="LojaFC?acao=listar-usuario">Listar Usuários</a></li>
									<li><hr class="dropdown-divider"></li>
									<li><a class="dropdown-item" href="LojaFC?acao=novo-usuario">Novo Usuário</a></li>
									<li><a class="dropdown-item" href="#">Alterar Usuário</a></li>
									<li><a class="dropdown-item" href="#">Excluir Usuário</a></li>															
								</ul>
						</li>
						<li class="nav-item dropdown">
							<a class="btn btn-lg btn-outline-primary dropdown-toggle p-2 mt-3 me-2" role="button"
								data-bs-toggle="dropdown" aria-expanded="false">Fornecedores</a>
								<ul class="dropdown-menu">								
									<li><a class="dropdown-item" href="LojaFC?acao=listar-usuario">Listar Usuários</a></li>
									<li><hr class="dropdown-divider"></li>
									<li><a class="dropdown-item" href="LojaFC?acao=novo-usuario">Novo Usuário</a></li>
									<li><a class="dropdown-item" href="#">Alterar Usuário</a></li>
									<li><a class="dropdown-item" href="#">Excluir Usuário</a></li>															
								</ul>
						</li>
						<li class="nav-item dropdown">
							<a class="btn btn-lg btn-outline-primary dropdown-toggle p-2 mt-3 me-2" role="button"
								data-bs-toggle="dropdown" aria-expanded="false">Estoque</a>
								<ul class="dropdown-menu">								
									<li><a class="dropdown-item" href="LojaFC?acao=listar-usuario">Listar Usuários</a></li>
									<li><hr class="dropdown-divider"></li>
									<li><a class="dropdown-item" href="LojaFC?acao=novo-usuario">Novo Usuário</a></li>
									<li><a class="dropdown-item" href="#">Alterar Usuário</a></li>
									<li><a class="dropdown-item" href="#">Excluir Usuário</a></li>															
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
		
		<header>
			<h1 class="text-center">Atividade Avaliativa A1</h1>
		</header>
		<!-- CONTEUDO -->
		<table class="table table-striped text-center align-middle"
				style="margin: 0px">
				<thead class="table-primary">
					<tr class="h2">
						<td>POO II - App Web</td>
						<td colspan="2">
				</thead>
				<tbody class="table-warning tabelanome h3">
					<tr>
						<td>Artur de Faria</td>
						<td>1200103025</td>
					</tr>
					<tr>
						<td>Breno Matos</td>
						<td>1210102032</td>
					</tr>
					<tr>
						<td>Júlia Oliveira</td>
						<td></td>
					</tr>
					<tr>
						<td>Leandro Alves Santos</td>
						<td>1200200950</td>
					</tr>
					<tr>
						<td>Wellington Junior Rodrigues da Silva</td> 
						<td>1200101333</td>
					</tr>
				</tbody>
			</table>

	</main>
	<section class="col-3 col-md-0 col-sm-1"></section>
</body>
</html>