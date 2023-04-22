<%@page import="uva.model.Usuario"%>
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
<!-- JSP -->
<%
	Usuario u = (Usuario) request.getAttribute("dados");
	String acao="incluir-usuario";
	String id="0",botao="", nome="", telefone="", email="";
	if (u!=null){
		acao		="alterar-usuario";
		id			= String.format("%d", u.id);
		nome 		= String.format("value='%s'",u.nome);
		telefone 	= String.format("value='%s'",u.telefone);
		email 		= String.format("value='%s'",u.email);
		botao		= "value='Alterar'";
	}	
%>	
<!-- FIM-JSP -->
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
						<!-- HOME -->
						<li class="nav-item"><a
							class="btn btn-lg btn-outline-primary mt-3 me-2"
							href="LojaFC?acao=null" role="button">Home</a></li>
						<!-- PRODUTOS -->
						<li class="nav-item dropdown">
							<a class="btn btn-lg btn-outline-primary dropdown-toggle p-2 mt-3 me-2" role="button"
								data-bs-toggle="dropdown" aria-expanded="false">Produtos</a>
								<ul class="dropdown-menu">								
									<li><a class="dropdown-item" href="LojaFC?acao=novo-produto">Novo Produto</a></li>
									<li><hr class="dropdown-divider"></li>
									<li><a class="dropdown-item" href="LojaFC?acao=listar-produto">Listar Produtos</a></li>
									<li><a class="dropdown-item" href="LojaFC?acao=listar-produto">Alterar Produto</a></li>
									<li><a class="dropdown-item" href="LojaFC?acao=listar-produto">Excluir Produto</a></li>															
								</ul>
						</li>
						<!-- USUARIOS -->
						<li class="nav-item dropdown">
							<a class="btn btn-lg btn-outline-primary dropdown-toggle p-2 mt-3 me-2" role="button"
								data-bs-toggle="dropdown" aria-expanded="false">Usuários</a>
								<ul class="dropdown-menu">								
									<li><a class="dropdown-item" href="LojaFC?acao=novo-usuario">Novo Usuário</a></li>
									<li><hr class="dropdown-divider"></li>
									<li><a class="dropdown-item" href="LojaFC?acao=listar-usuario">Listar Usuários</a></li>
									<li><a class="dropdown-item" href="LojaFC?acao=listar-usuario">Alterar Usuário</a></li>
									<li><a class="dropdown-item" href="LojaFC?acao=listar-usuario">Excluir Usuário</a></li>															
								</ul>
						</li>
						<!-- FORNECEDORES -->
						<li class="nav-item dropdown">
							<a class="btn btn-lg btn-outline-primary dropdown-toggle p-2 mt-3 me-2" role="button"
								data-bs-toggle="dropdown" aria-expanded="false">Fornecedores</a>
								<ul class="dropdown-menu">								
									<li><a class="dropdown-item" href="LojaFC?acao=novo-fornecedor">Novo Fornecedor</a></li>
									<li><hr class="dropdown-divider"></li>
									<li><a class="dropdown-item" href="LojaFC?acao=listar-fornecedor">Listar Fornecedores</a></li>
									<li><a class="dropdown-item" href="LojaFC?acao=listar-fornecedor">Alterar Fornecedor</a></li>
									<li><a class="dropdown-item" href="LojaFC?acao=listar-fornecedor">Excluir Fornecedor</a></li>															
								</ul>
						</li>
						<!-- ESTOQUE -->
						<li class="nav-item dropdown">
							<a class="btn btn-lg btn-outline-primary dropdown-toggle p-2 mt-3 me-2" role="button"
								data-bs-toggle="dropdown" aria-expanded="false">Estoque</a>
								<ul class="dropdown-menu">								
									<li><a class="dropdown-item" href="LojaFC?acao=listar-estoque">Listar Estoque</a></li>
									<li><hr class="dropdown-divider"></li>
									<li><a class="dropdown-item" href="LojaFC?acao=novo-estoque">Nova Entrada</a></li>
									<li><a class="dropdown-item" href="LojaFC?acao=listar-estoque">Alterar Estoque</a></li>
									<li><a class="dropdown-item" href="LojaFC?acao=listar-estoque">Excluir Entrada</a></li>															
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
			<h1 class="text-center">Dados dos Usuários</h1>
		</header>
		
		<!-- CONTEUDO DO FORMULARIO -->
		<form action="LojaFC" method="post" class="form">
        	<input type="hidden" name="acao" value='<%=acao%>'/>
        	<input type="hidden" name="id" value='<%=id%>'/>
			<div class="row mb-2">
				<div class="col">
					<input type="text" class="form-control m-0" placeholder="Nome" name="nome" <%=nome%>>
				</div>
				<div class="col">
					<input type="text" class="form-control m-0" placeholder="Telefone" name="telefone" <%=telefone%>>
				</div>
				
			</div>
			<div class="row mb-2">
				<div class="col">
					<input type="text" class="form-control m-0" placeholder="seuemail@exemplo.com" name="email" <%=email%>>
				</div>
				<div class="col">
					<input type="password" class="form-control" placeholder="Digite a Senha" aria-label="Senha" name="senha">
				</div>			
			</div>
			<div class="row m-3">
				<input type="submit" class="btn btn-warning text-light btn-lg" id="enviar" name="enviar" <%=botao%> value="Cadastrar">			
			</div>
		</form>
		<!-- FIM DO CONTEUDO -->

	</main>
	<section class="col-3 col-md-0 col-sm-1"></section>
</body>
</html>