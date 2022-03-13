package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import connection.SingleConnectionBanco;
import model.ModelLogin;

public class DAOLoginRepository {
	
	private Connection connection;
	
	public DAOLoginRepository() {
		connection = SingleConnectionBanco.getConnection();
	}
	
	public boolean validarAutenticacao(ModelLogin modelLogin) throws Exception {
		String sql = "select * from usuario where email_usuario = ? and senha = ?";
		
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setString(1, modelLogin.getEmailUsuario());
			statement.setString(2, modelLogin.getSenha());
			
			ResultSet resultSet = statement.executeQuery();
			
			if(resultSet.next()) {
				return true; //Autênticado
			}
			return false;
	}
	
	/**
	 * Seleciona os dados do usuario a partir do email passado
	 * @param email chave da pesquisa
	 * @return Objeto com os dados do usuario do banco de dados
	 * @throws Exception
	 */
	public ModelLogin pesquisaUsuario(String email)throws Exception{
		String sql = "select cod_usuario, nome_usuario, email_usuario from usuario where email_usuario = ?";
		PreparedStatement preparaSql = connection.prepareStatement(sql);
		preparaSql.setString(1, email);
		ModelLogin usuario = null;
		ResultSet rs = preparaSql.executeQuery();
		if(rs.next()) {
			usuario = new ModelLogin();
			usuario.setCod_usuario(rs.getInt("cod_usuario"));
			usuario.setNomeUsuario(rs.getString("nome_usuario"));
			usuario.setEmailUsuario(rs.getString("email_usuario"));
		}return usuario;
	}
	
	public ModelLogin pesquisaUsuarioPeloNome(String nome)throws Exception{
		String sql = "select cod_usuario, nome_usuario, email_usuario from usuario where nome_usuario = ?";
		PreparedStatement preparaSql = connection.prepareStatement(sql);
		preparaSql.setString(1, nome);
		ModelLogin usuario = null;
		ResultSet rs = preparaSql.executeQuery();
		if(rs.next()) {
			usuario = new ModelLogin();
			usuario.setCod_usuario(rs.getInt("cod_usuario"));
			usuario.setNomeUsuario(rs.getString("nome_usuario"));
			usuario.setEmailUsuario(rs.getString("email_usuario"));
		}return usuario;
	}

}
