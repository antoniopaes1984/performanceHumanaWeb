package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import connection.SingleConnectionBanco;
import model.ModelParq;

public class DAOParqRepository {
	private Connection connection;
	
	public DAOParqRepository() {
		connection = SingleConnectionBanco.getConnection();
	}
	
	/**
	 * Insere os dados do Parq no banco de dados
	 * @param parq objeto a ser salvo
	 * @throws Exception
	 */
	public void inserirParqBanco(ModelParq parq)throws Exception{
		String sql ="insert into parq (cod_avaliacao, pergunta_1 ,pergunta_2,pergunta_3,pergunta_4,pergunta_5,"
				+ "pergunta_6,pergunta_7, situacao) value (?,?,?,?,?,?,?,?,?)";
		PreparedStatement preparaSql = connection.prepareStatement(sql);
		preparaSql.setInt(1, parq.getCodAvaliacao());
		preparaSql.setString(2, parq.getPergunta1());
		preparaSql.setString(3, parq.getPergunta2());
		preparaSql.setString(4, parq.getPergunta3());
		preparaSql.setString(5, parq.getPergunta4());
		preparaSql.setString(6, parq.getPergunta5());
		preparaSql.setString(7, parq.getPergunta6());
		preparaSql.setString(8, parq.getPergunta7());
		preparaSql.setString(9, parq.getSituacao());
		preparaSql.executeUpdate();
		connection.commit();
	}
	
	/**
	 * Pesquisa os dados do Parq de um cliente 
	 * @param codAvaliacao chave da pesquisa
	 * @return um objeto com os dados do parq 
	 * @throws Exception
	 */
	public ModelParq pesquisaParqDeUmCliente(int codAvaliacao)throws Exception{
		String sql = "select * from parq where cod_avaliacao = ?";
		PreparedStatement preparaSql = connection.prepareStatement(sql);
		preparaSql.setInt(1	, codAvaliacao);
		ResultSet rs = preparaSql.executeQuery();
		ModelParq parq = new ModelParq();
		if(rs.next()) {
			parq.setCodAvaliacao(rs.getInt("cod_avaliacao"));
			parq.setPergunta1(rs.getString("pergunta_1"));
			parq.setPergunta2(rs.getString("pergunta_2"));
			parq.setPergunta3(rs.getString("pergunta_3"));
			parq.setPergunta4(rs.getString("pergunta_4"));
			parq.setPergunta5(rs.getString("pergunta_5"));
			parq.setPergunta6(rs.getString("pergunta_6"));
			parq.setPergunta7(rs.getString("pergunta_7"));
			parq.setSituacao(rs.getString("situacao"));
		}return parq;
	}
	
	/**
	 * Altera os dados do parq de um cliente
	 * @param modelParq objeto com as alterações
	 * @throws Exception
	 */
	public void alterarParqDeUmCliente(ModelParq modelParq)throws Exception{
		String sql = "update parq set pergunta_1 = ?,pergunta_2 = ?, pergunta_3 = ?, pergunta_4 = ?, pergunta_5 = ?, "
				+ "pergunta_6 = ?, pergunta_7 = ?, situacao = ? where cod_avaliacao = ?";
		PreparedStatement preparaSql = connection.prepareStatement(sql);
		preparaSql.setString(1, modelParq.getPergunta1());
		preparaSql.setString(2, modelParq.getPergunta2());
		preparaSql.setString(3, modelParq.getPergunta3());
		preparaSql.setString(4, modelParq.getPergunta4());
		preparaSql.setString(5, modelParq.getPergunta5());
		preparaSql.setString(6, modelParq.getPergunta6());
		preparaSql.setString(7, modelParq.getPergunta7());
		preparaSql.setString(8, modelParq.getSituacao());
		preparaSql.setInt(9, modelParq.getCodAvaliacao());
		preparaSql.executeUpdate();
		connection.commit();
	}

}
