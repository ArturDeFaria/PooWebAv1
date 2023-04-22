package uva.servelets;

import java.io.IOException;
import jakarta.servlet.Servlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import uva.dao.UsuarioDAO;
import uva.model.Usuario;


/**
 * Servlet implementation class LojaFC
 */
public class LojaFC extends HttpServlet {
	private static final long serialVersionUID = 1L;

//	private ProdutoDAO produtoDao = new ProdutoDAO();
//
//	private Produtos getProduto(HttpServletRequest request) {
//		Produtos p = new Produtos();
//		p.id = Integer.parseInt(request.getParameter("id"));
//		p.categorias_id = Integer.parseInt(request.getParameter("categorias_id"));
//		p.fornecedores_pessoa_id = Integer.parseInt(request.getParameter("fornecedor_id"));
//		p.nome = request.getParameter("nome");
//		p.descricao = request.getParameter("descricao");
//		p.preco = Double.parseDouble(request.getParameter("preco"));
//		return p;
//	}

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
