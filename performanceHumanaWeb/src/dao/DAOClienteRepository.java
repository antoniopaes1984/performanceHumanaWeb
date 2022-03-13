package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import connection.SingleConnectionBanco;
import model.ModelCliente;
import model.ModelLogin;

public class DAOClienteRepository {
	
	private Connection connection;
	
	public DAOClienteRepository() {
		connection = SingleConnectionBanco.getConnection();
	}
	
	/**
	 * Salva os dados do cliente no bancp de dados
	 * @param modelCliente objeto a ser salvo
	 */
	public void inserirCliente(ModelCliente modelCliente){
		String sql = "insert into cliente(cod_usuario,nome,data_nascimento,sexo,telefone,email) value (?,?,?,?,?,?)";
		
		PreparedStatement pst;
		try {
			pst = connection.prepareStatement(sql);
			pst.setInt(1, modelCliente.getCodUsuario());
			pst.setString(2, modelCliente.getNome());
			pst.setString(3, modelCliente.getDataNascimento());
			pst.setString(4, modelCliente.getSexo()); 
			pst.setString(5, modelCliente.getTelefone()); 
			pst.setString(6, modelCliente.getEmail());
			pst.execute();
			connection.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			try {
				connection.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
		
	}
	
	public void alterarCliente(ModelCliente modelCliente)throws Exception{
		String sql = "UPDATE cliente set nome=?, data_nascimento=?, sexo=?,  telefone=?,  email=? where cod_cliente=?";
		PreparedStatement preparaSql = connection.prepareStatement(sql);
		preparaSql.setString(1, modelCliente.getNome());
		preparaSql.setString(2, modelCliente.getDataNascimento());
		preparaSql.setString(3, modelCliente.getSexo());
		preparaSql.setString(4, modelCliente.getTelefone());
		preparaSql.setString(5, modelCliente.getEmail());
		preparaSql.setInt(6, modelCliente.getCodCliente());
		preparaSql.executeUpdate();
		connection.commit();
	}
	
	/**
	 * Pesquisa o cliente usando o nome como chave da pesquisa
	 * @param nome chave da pesquisa
	 * @return objeto Modal cliente
	 */
	public ModelCliente pesquisaCliente(String nome) {
		String sql = "select * from cliente where nome=?";
		ModelCliente cliente = null;
		try {
			PreparedStatement pst = connection.prepareStatement(sql);
			pst.setString(1, nome);
			ResultSet rs = pst.executeQuery();
			
			while(rs.next()) {
				cliente = new ModelCliente();
				cliente.setCodUsuario(rs.getInt("cod_usuario"));
				cliente.setCodCliente(rs.getInt("cod_cliente"));
				cliente.setNome(rs.getString("nome"));
				cliente.setDataNascimento(rs.getString("data_nascimento"));
				cliente.setSexo(rs.getString("sexo"));
				cliente.setTelefone(rs.getString("telefone"));
				cliente.setEmail(rs.getString("email"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cliente;
	}
	
	/**
	 * Pesquisa o cliente no banco de dados usando o codCliente 
	 * @param codCliente chave da pesquisa
	 * @return objeto com os dados de um cliente
	 */
	public ModelCliente pesquisaCliente(int codCliente) {
		String sql = "select * from cliente where cod_cliente=?";
		ModelCliente cliente = null;
		try {
			PreparedStatement pst = connection.prepareStatement(sql);
			pst.setInt(1, codCliente);
			ResultSet rs = pst.executeQuery();
			
			while(rs.next()) {
				cliente = new ModelCliente();
				cliente.setCodCliente(rs.getInt("cod_cliente"));
				cliente.setNome(rs.getString("nome"));
				cliente.setDataNascimento(rs.getString("data_nascimento"));
				cliente.setSexo(rs.getString("sexo"));
				cliente.setTelefone(rs.getString("telefone"));
				cliente.setEmail(rs.getString("email"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cliente;
	}
	
	
	
	
	
	/**
	 * Lista todos os nomes dos cliente do banco de dados
	 * @return uma lista de clientes
	 * @throws Exception
	 */
	public List<ModelCliente>listaClientes(int codUsuario)throws Exception{
		
		List<ModelCliente> retorno = new ArrayList<ModelCliente>();
		String sql = "select cod_cliente,cod_usuario,nome from cliente  where cod_usuario=? ORDER by (nome)";
		PreparedStatement pst = connection.prepareStatement(sql);
		pst.setInt(1, codUsuario);
		ResultSet rs = pst.executeQuery();
		
		while(rs.next()) {
			ModelCliente cliente = new ModelCliente();
			cliente.setCodUsuario(rs.getInt("cod_usuario"));
			cliente.setCodCliente(rs.getInt("cod_cliente"));
			cliente.setNome(rs.getString("nome"));
			retorno.add(cliente);
		}
		return retorno;
		
	}
	
	public void excluirCliente(int codCliente)throws Exception{
		String sql = "delete  from cliente where cod_cliente = ?";
		PreparedStatement preparaSql = connection.prepareStatement(sql);
		preparaSql.setInt(1, codCliente);
		preparaSql.executeUpdate();
		connection.commit();
	}
	
	
}
