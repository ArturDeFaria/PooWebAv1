<%@page import="java.util.List"%>
<%@page import="uva.dao.ProdutoDAO"%>
<%@page import="uva.model.Estoque"%>
<%@page import="uva.model.Produto"%>
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
	Estoque e = (Estoque) request.getAttribute("dados");
	ProdutoDAO pdao =new ProdutoDAO();
	String acao="incluir-estoque";
	String id="0", select="",option="",input="",botao="", quantidade="", loja="";
	if (e!=null){
		Produto p = pdao.obter(e.produto_id);
		acao		="alterar-estoque";
		id			= String.format("%d", e.id);
		select		= "disabled";
		option		= String.format("<option selected>%s</option>", p.nome);
		input		= String.format("<input type='hidden' name='produto_id' value='%d'/>",p.id);
		quantidade 	= String.format("value='%d'",e.quantidade);
		loja 		= String.format("value='%s'",e.loja);
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
								data-bs-toggle="dropdown" aria-expanded="false">Usu�rios</a>
								<ul class="dropdown-menu">								
									<li><a class="dropdown-item" href="LojaFC?acao=novo-usuario">Novo Usu�rio</a></li>
									<li><hr class="dropdown-divider"></li>
									<li><a class="dropdown-item" href="LojaFC?acao=listar-usuario">Listar Usu�rios</a></li>
									<li><a class="dropdown-item" href="LojaFC?acao=listar-usuario">Alterar Usu�rio</a></li>
									<li><a class="dropdown-item" href="LojaFC?acao=listar-usuario">Excluir Usu�rio</a></li>															
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
						<input type="hidden" name="acao" value="procurar"/>
						<div class="input-group mb-3" style="margin-top: 16px;">
							<input type="text" class="form-control" placeholder="Procurar" name="nome">
							<span class="input-group-text" id="basic-addon2"> <input
								type="submit" class="btn btn-sm" type="submit"
								 value="procurar">
							</span>
						</div>
					</form>
				</div>
			</div>
		</nav>
		<!-- FIM MENU -->
	
		<header>
			<h1 class="text-center">Dados do Estoque</h1>
		</header>
		
		<!-- CONTEUDO DO FORMULARIO -->
		<form action="LojaFC" method="post" class="form">
        	<input type="hidden" name="acao" value='<%=acao%>'/>
        	<input type="hidden" name="id" value='<%=id%>'/>
        	<%=input %>
			<div class="row mb-2">
				<div class="col-sm-6">
                   	<div class="form-group">
						<select name="produto_id" class="form-select" <%=select%> >
							<option selected>Selecione o produto</option>
				<%
					List<Produto> lista = (List<Produto>) request.getAttribute("lista");
        			if (lista!=null)
					for(Produto p:lista){
       			%>
							<option value='<%=p.id%>'><%=p.nome%></option>
				<%	} %>
							<%=option%>
						</select>
					</div>
				</div>
				<div class="col">
					<input type="number" class="form-control m-0" placeholder="Quantidade" name="quantidade" <%=quantidade%>>
				</div>
			</div>
			<div class="row mb-2">
				<div class="col">
					<input type="text" class="form-control m-0" placeholder="Loja" name="loja" <%=loja%>>
				</div>			
			</div>
			<div class="row m-3">
				<input type="submit" class="btn btn-warning text-light btn-lg" id="enviar" name="enviar" <%=botao%> value="Cadastrar">			
			</div>
		</form>
	</main>
	<section class="col-3 col-md-0 col-sm-1"></section>
</body>
</html>