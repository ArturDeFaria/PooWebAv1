package uva.servelets;

import java.io.IOException;
import jakarta.servlet.Servlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import uva.dao.FornecedorDAO;
import uva.dao.ProdutoDAO;
import uva.dao.UsuarioDAO;
import uva.model.Fornecedor;
import uva.model.Produto;
import uva.model.Usuario;


/**
 * Servlet implementation class LojaFC
 */
public class LojaFC extends HttpServlet {
	private static final long serialVersionUID = 1L;



	//USUARIO DAO
	private UsuarioDAO userDAO= new UsuarioDAO();
	private Usuario getUser(HttpServletRequest request) {
		Usuario u = new Usuario();
		u.id = Integer.parseInt(request.getParameter("id"));
		u.email = request.getParameter("email");		
		u.nome = request.getParameter("nome");
		u.senha = request.getParameter("senha");		
		u.telefone = request.getParameter("telefone");
		return u;
	}
	
	//PRODUTO DAO
	private ProdutoDAO prodDAO = new ProdutoDAO();
	private Produto getProd(HttpServletRequest request) {
		Produto p = new Produto();
		p.id = Integer.parseInt(request.getParameter("id"));
		p.nome = request.getParameter("nome");
		p.descricao = request.getParameter("descricao");
		p.preco = Double.parseDouble(request.getParameter("preco"));
		return p;
	}
	
	//FORNECEDOR DAO
	private FornecedorDAO fornecedorDAO = new FornecedorDAO();
	private Fornecedor getFornecedor(HttpServletRequest request) {
		Fornecedor f = new Fornecedor();
		f.id = Integer.parseInt(request.getParameter("id"));
		f.nome = request.getParameter("nome");
		f.cnpj = request.getParameter("cnpj");
		f.email = request.getParameter("email");
		f.telefone = request.getParameter("telefone");
		return f;
	}
	
	

	/**
	 * Default constructor.
	 */
	public LojaFC() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String acao = request.getParameter("acao");
		String paginaDestino="index.jsp";
		if (acao == null)
			acao = "index";
		switch (acao) {
		//AÇÕES DE USUARIO
		case "listar-usuario":
			request.setAttribute("lista", userDAO.obterTodos());
			paginaDestino="UsuarioLista.jsp";
			break;
		case "novo-usuario":
			paginaDestino="UsuarioDado.jsp";
			break;
		case "incluir-usuario":
			userDAO.create(getUser(request));
			request.setAttribute("lista", userDAO.obterTodos());
			paginaDestino="UsuarioLista.jsp";
			break;
		case "form-alterar-usuario":
			request.setAttribute("dados",
					userDAO.obter(Integer.parseInt(
							request.getParameter("id"))));
			paginaDestino="UsuarioDado.jsp";
			break;
		case "alterar-usuario":
			userDAO.update(getUser(request));
			request.setAttribute("lista", userDAO.obterTodos());
			paginaDestino="UsuarioLista.jsp";
			break;
		case "excluir-usuario":
			userDAO.remove(Integer.parseInt(
					request.getParameter("id")));
			request.setAttribute("lista", userDAO.obterTodos());
			paginaDestino="UsuarioLista.jsp";
			break;
		
		//AÇÕES DE PRODUTO
		case "listar-produto":
			request.setAttribute("lista", prodDAO.obterTodos());
			paginaDestino="ProdutoLista.jsp";
			break;
		case "novo-produto":
			paginaDestino="ProdutoDado.jsp";
			break;
		case "incluir-produto":
			prodDAO.create(getProd(request));
			request.setAttribute("lista", prodDAO.obterTodos());
			paginaDestino="ProdutoLista.jsp";
			break;
		case "form-alterar-produto":
			request.setAttribute("dados",
					prodDAO.obter(Integer.parseInt(
							request.getParameter("id"))));
			paginaDestino="ProdutoDado.jsp";
			break;
		case "alterar-produto":
			prodDAO.update(getProd(request));
			request.setAttribute("lista", prodDAO.obterTodos());
			paginaDestino="ProdutoLista.jsp";
			break;
		case "excluir-produto":
			prodDAO.remove(Integer.parseInt(
					request.getParameter("id")));
			request.setAttribute("lista", prodDAO.obterTodos());
			paginaDestino="ProdutoLista.jsp";
			break;
		
		//AÇÕES DE FORNECEDOR
		case "listar-fornecedor":
			request.setAttribute("lista", fornecedorDAO.obterTodos());
			paginaDestino="FornecedorLista.jsp";
			break;
		case "novo-fornecedor":
			paginaDestino="FornecedorDado.jsp";
			break;
		case "incluir-fornecedor":
			fornecedorDAO.create(getFornecedor(request));
			request.setAttribute("lista", fornecedorDAO.obterTodos());
			paginaDestino="FornecedorLista.jsp";
			break;
		case "form-alterar-fornecedor":
			request.setAttribute("dados",
					fornecedorDAO.obter(Integer.parseInt(
							request.getParameter("id"))));
			paginaDestino="FornecedorDado.jsp";
			break;
		case "alterar-fornecedor":
			fornecedorDAO.update(getFornecedor(request));
			request.setAttribute("lista", fornecedorDAO.obterTodos());
			paginaDestino="FornecedorLista.jsp";
			break;
		case "excluir-fornecedor":
			fornecedorDAO.remove(Integer.parseInt(
					request.getParameter("id")));
			request.setAttribute("lista", fornecedorDAO.obterTodos());
			paginaDestino="FornecedorLista.jsp";
			break;
		
		
		
		
		
		
		
		default:
			paginaDestino="index.jsp";
			break;
			
		
		
		//
		
		
		}
		
		request.getRequestDispatcher(paginaDestino)
				.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
