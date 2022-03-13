package servletLogin;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DAOAvaliacaoRepository;
import dao.DAOClienteRepository;
import model.ModelAvaliacao;
import model.ModelCliente;
import model.ModelLogin;

/**
 * Servlet implementation class ServletCliente
 */
@WebServlet("/ServletCliente")
public class ServletCliente extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 DAOClienteRepository daoCliente = new DAOClienteRepository();
	 ModelCliente cliente = new ModelCliente();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletCliente() {
        super();
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String acao = request.getParameter("acao");
		ModelLogin login = new ModelLogin();
		int codUsuario = (int) request.getSession().getAttribute("usuario");
		if(acao.equals("listarclientes")){
			try {
			DAOClienteRepository daoCliente = new DAOClienteRepository();
				RequestDispatcher redirecionar = request.getRequestDispatcher("principal/clientescadastrados.jsp");
				request.setAttribute("listaDeClientes", daoCliente.listaClientes((codUsuario)));
				redirecionar.forward(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if(acao.equals("editar")) {
			String nome = request.getParameter("user");
			cliente = daoCliente.pesquisaCliente(nome);
			RequestDispatcher redirecionar = request.getRequestDispatcher("principal/editarcliente.jsp");
			request.setAttribute("cliente", cliente);
			redirecionar.forward(request, response);
			
		}else if(acao.equals("entrarnasavaliacoesdocliente")) {
			try {
			String codcliente = request.getParameter("codcliente");
			int codCliente = Integer.parseInt(codcliente);
			DAOAvaliacaoRepository daoAvaliacao = new DAOAvaliacaoRepository();
				request.setAttribute("avaliacao", daoAvaliacao.listaAvaliacoesDeUmCliente(codCliente));
				request.setAttribute("codCliente", codCliente);
				request.setAttribute("codUsuario", daoAvaliacao);
				RequestDispatcher redireciona = request.getRequestDispatcher("principal/avaliacoesdocliente.jsp");
				redireciona.forward(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}
		//RequestDispatcher redirecionar = request.getRequestDispatcher("principal/clientescadastrados.jsp");
		//request.setAttribute("msg", "entrou na tela de cadastro de clientes");
		//redirecionar.forward(request, response);
				
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			request.setCharacterEncoding("UTF-8");
			String verificaNovo = request.getParameter("txtVerificanovo");
			int codUsuario = (Integer) request.getSession().getAttribute("usuario");
			String nome = request.getParameter("txtNome");
			String dataNascimento = request.getParameter("txtDataNascimento");
			String sexo = request.getParameter("txtSexo");
			String fone = request.getParameter("txtFone");
			String email = request.getParameter("txtEmail");

			if (verificaNovo.equals("novo")) {
				if (daoCliente.pesquisaCliente(nome) == null) {
					cliente.setCodUsuario((codUsuario));
					cliente.setNome(nome);
					cliente.setDataNascimento(dataNascimento);
					cliente.setSexo(sexo);
					cliente.setTelefone(fone);
					cliente.setEmail(email);
					daoCliente.inserirCliente(cliente);
					cliente = daoCliente.pesquisaCliente(nome);
					request.setAttribute("cliente", cliente);
					RequestDispatcher redirecionar = request.getRequestDispatcher("principal/clientescadastrados.jsp");

					request.setAttribute("listaDeClientes", daoCliente.listaClientes(cliente.getCodUsuario()));
					// request.setAttribute("msgSalvoSucesso", "Cliente salvo com sucesso");
					redirecionar.forward(request, response);
				} else {
					
					RequestDispatcher redirecionar = request.getRequestDispatcher("principal/novocliente.jsp");
					request.setAttribute("msg", "Já existe um cliente cadastrado com esse nome.");
					cliente.setNome(nome);
					cliente.setDataNascimento(dataNascimento);
					cliente.setSexo(sexo);
					cliente.setTelefone(fone);
					cliente.setEmail(email);
					request.setAttribute("cliente", cliente);
					redirecionar.forward(request, response);
				}
			} else {
				String codCliente = request.getParameter("txtCodCliente");
				cliente.setNome(nome);
				cliente.setDataNascimento(dataNascimento);
				cliente.setSexo(sexo);
				cliente.setTelefone(fone);
				cliente.setEmail(email);
				cliente.setCodCliente(Integer.parseInt(codCliente));
				ModelCliente clienteVerificadoBanco = new ModelCliente();
				clienteVerificadoBanco = daoCliente.pesquisaCliente(nome);
				if (clienteVerificadoBanco != null) {
					if (cliente.getCodCliente() == clienteVerificadoBanco.getCodCliente()) {
						daoCliente.alterarCliente(cliente);
						cliente = daoCliente.pesquisaCliente(cliente.getCodCliente());
						request.setAttribute("cliente", cliente);
						RequestDispatcher redirecionar = request
								.getRequestDispatcher("principal/clientescadastrados.jsp");
						request.setAttribute("listaDeClientes", daoCliente.listaClientes((codUsuario)));
						request.setAttribute("msg", "Cliente alterado com sucesso");
						redirecionar.forward(request, response);
					} else {
						request.setAttribute("msg", "Já existe um cliente cadastrado com esse nome");
						RequestDispatcher redirecionar = request.getRequestDispatcher("principal/editarcliente.jsp");
						cliente.setNome(nome);
						cliente.setDataNascimento(dataNascimento);
						cliente.setSexo(sexo);
						cliente.setTelefone(fone);
						cliente.setEmail(email);
						request.setAttribute("cliente", cliente);
						redirecionar.forward(request, response);
					}
				} else if (clienteVerificadoBanco == null) {
					daoCliente.alterarCliente(cliente);
					cliente = daoCliente.pesquisaCliente(cliente.getCodCliente());
					RequestDispatcher redirecionar = request.getRequestDispatcher("principal/clientescadastrados.jsp");
					request.setAttribute("listaDeClientes", daoCliente.listaClientes((codUsuario)));
					// request.setAttribute("msg", "Cliente alterado com sucesso");
					redirecionar.forward(request, response);
				}

			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
			
			
		}
		
		
		
		
		
	

}
