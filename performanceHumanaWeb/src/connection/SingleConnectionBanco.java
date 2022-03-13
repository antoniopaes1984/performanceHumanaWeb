package connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class SingleConnectionBanco {
	private static String banco = "jdbc:mysql://localhost:3306/sistemaweb?useTimezone=true&serverTimezone=UTC";
	private static String user = "root";
	private static String senha = "ToNi2005R@F@";
	private static Connection connection = null;
	
	public static Connection getConnection() {
		return connection;
	}
	
	static {
		conectar();
	}
	
	public SingleConnectionBanco() {
		conectar();
	}
	
	private static void conectar() {
		try {
			if(connection == null) {
				Class.forName("com.mysql.cj.jdbc.Driver");//Carrega o Driver de conexão do banco
				connection = DriverManager.getConnection(banco, user, senha);
				connection.setAutoCommit(false);//Para não efetuar alterações no banco sem o nosso comando
				
				
				
			}
		}catch(Exception e) {
			e.printStackTrace();//Mostra qualquer erro no momento do conectar
			
		}
	}
	
}
