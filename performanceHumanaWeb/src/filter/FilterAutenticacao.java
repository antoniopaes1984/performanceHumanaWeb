package filter;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import connection.SingleConnectionBanco;
import model.ModelLogin;


@WebFilter(urlPatterns = {"/principal/*"})/* Intercepta todas as requisi??es que vinherem do projeto*/
public class FilterAutenticacao implements Filter {

	public static Connection connection;
    
    public FilterAutenticacao() {
        // TODO Auto-generated constructor stub
    }

	//Encerra os processos quando o servidor ? parado
	public void destroy() {
		try {
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	//Intecerpeta as requisi??es e as respostas no sistema
	//tudo que fizer no sistema passa por aqui. ex: valida??o de autentica??o, dar commit e rolback no banco, validar e fazer redirecionamento
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		try {
			HttpServletRequest req = (HttpServletRequest) request;
			HttpSession session = req.getSession();
			
			
			String usuarioLogado = String.valueOf(session.getAttribute("usuario"));
			String urlParaAutenticar = req.getServletPath();/*URLesta sendo acessado*/
			/* Validar se sess?o esta logada*/
			if(usuarioLogado == null  && !urlParaAutenticar.equalsIgnoreCase("/principal/servletLogin")) {
				//leva o acesso para a URl que foi tentando acessar sem esta logado.
				RequestDispatcher redireciona = request.getRequestDispatcher("/index.jsp?url=" + urlParaAutenticar);
				request.setAttribute("msg", "Por favor realize o Login");
				redireciona.forward(request, response);
				return;// para a execu??o e redireciona para o login
			}else {
				chain.doFilter(request, response);
			}
			connection.commit();//Deu tudo certo, comita as altera??es no banco de dados
		}catch(Exception e) {
			e.printStackTrace();
			RequestDispatcher redirecionar = request.getRequestDispatcher("/principal/erro.jsp");
			request.setAttribute("msg", e.getMessage());
			redirecionar.forward(request, response);
			try {
				connection.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
		
		
	}

	//Inicia os processos ou recursos quando o servidor sobe o projeto
	//Iniciar a conex?o com o banco
	public void init(FilterConfig fConfig) throws ServletException {
		connection = SingleConnectionBanco.getConnection();
	}

}
