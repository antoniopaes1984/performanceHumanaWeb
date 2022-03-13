package servletLogin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DAOLoginRepository;
import model.ModelLogin;


@WebServlet(urlPatterns = {"/principal/ServletLogin","/ServletLogin" })
public class ServletLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DAOLoginRepository daoLoginRepository = new DAOLoginRepository();
       
    
    public ServletLogin() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String acao = request.getParameter("acao");
		if(acao != null && !acao.isEmpty() && acao.equals("logout")) {
			request.getSession().invalidate();
			RequestDispatcher redirecionar = request.getRequestDispatcher("index.jsp");
			redirecionar.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String email = request.getParameter("txtEmail");
		String senha = request.getParameter("txtSenha");
		String url = request.getParameter("url");
		
		try {
		
		if(email != null   && !email.isEmpty() && senha != null & !senha.isEmpty()) {
			ModelLogin login = new ModelLogin();
			login.setEmailUsuario(email);
			login.setSenha(senha);
			
				if(daoLoginRepository.validarAutenticacao(login)) {
					login = daoLoginRepository.pesquisaUsuario(login.getEmailUsuario());
					request.getSession().setAttribute("usuario", login.getCod_usuario());
					request.getSession().setAttribute("usuarioNome", login.getNomeUsuario());
					if(url == null || url.equals("null")) {
						url = "principal/inicial.jsp";
						RequestDispatcher redirecionar = request.getRequestDispatcher(url);
						request.setAttribute("msg", "Entrou");
						redirecionar.forward(request, response);
					}
					
				}else {
					RequestDispatcher redirecionar = request.getRequestDispatcher("/index.jsp");
					request.setAttribute("msg", "informe login e senha corretamente");
					redirecionar.forward(request, response);
				}
				
			
		}else {
			RequestDispatcher redirecionar = request.getRequestDispatcher("/index.jsp");
			request.setAttribute("msg", "login e/ou senha foram digitados incorretamente");
			redirecionar.forward(request, response);
		}
		
	} catch (Exception e) {
		RequestDispatcher redirecionar = request.getRequestDispatcher("erro.jsp");
		redirecionar.forward(request, response);
		e.printStackTrace();
	}
	
	}

}
