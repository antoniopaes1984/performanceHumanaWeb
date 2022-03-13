package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import connection.SingleConnectionBanco;
import model.ModelAvaliacao;

public class DAOAvaliacaoRepository {
	private Connection connection;
	
	public DAOAvaliacaoRepository() {
		connection = SingleConnectionBanco.getConnection();
	}
	
	public List<ModelAvaliacao> listaAvaliacoesDeUmCliente(int codCliente)throws Exception{
		List<ModelAvaliacao> retorno = new ArrayList<ModelAvaliacao>();
		String sql = "select cod_cliente,nome_cliente,data_avaliacao,cod_avaliacao from avaliacao where cod_cliente=?";
		PreparedStatement preparaSql = connection.prepareStatement(sql);
		preparaSql.setInt(1, codCliente);
		ResultSet rs = preparaSql.executeQuery();
		while(rs.next()) {
			ModelAvaliacao avaliacao = new ModelAvaliacao();
			avaliacao.setCodCliente(rs.getInt("cod_cliente"));
			avaliacao.setNomeCliente(rs.getString("nome_cliente"));
			avaliacao.setDataAvaliacao(rs.getString("data_avaliacao"));
			avaliacao.setCodAvaliacao(rs.getInt("cod_avaliacao"));
			avaliacao.setNomeCliente(rs.getString("nome_cliente"));
			retorno.add(avaliacao);
		}return retorno;
	}
	
	public void novaAvaliacao(ModelAvaliacao avaliacao)throws Exception{
		String sql = "insert into avaliacao (cod_cliente,cod_usuario,data_avaliacao,data_reavaliacao,"
				+ "idade_cliente,nome_cliente) value (?,?,?,?,?,?)";
		PreparedStatement preparaSql = connection.prepareStatement(sql);
		preparaSql.setInt(1, avaliacao.getCodCliente());
		preparaSql.setInt(2, avaliacao.getCodUsuario());
		preparaSql.setString(3, avaliacao.getDataAvaliacao());
		preparaSql.setString(4, avaliacao.getDataReavaliacao());
		preparaSql.setInt(5, avaliacao.getIdadeCliente());
		preparaSql.setString(6, avaliacao.getNomeCliente());
		preparaSql.executeUpdate();
	}
	
	public ModelAvaliacao pesquisaAvaliacao(int codCliente, String dataAvaliacao)throws Exception{
		String sql = "select * from avaliacao where cod_cliente = ? and data_avaliacao=?";
		PreparedStatement preparaSql = connection.prepareStatement(sql);
		preparaSql.setInt(1, codCliente);
		preparaSql.setString(2, dataAvaliacao);
		ResultSet rs = preparaSql.executeQuery();
		ModelAvaliacao avaliacao = null;
		if(rs.next()) {
			avaliacao = new ModelAvaliacao();
			avaliacao.setCodAvaliacao(rs.getInt("cod_avaliacao"));
			avaliacao.setNomeCliente(rs.getString("nome_cliente"));
		} return avaliacao;
		
	}
	
	public ModelAvaliacao pesquisaAvaliacaoPeloCodAvaliacao(int codAvaliacao)throws Exception{
		String sql = "select * from avaliacao where cod_avaliacao=?";
		PreparedStatement preparaSql = connection.prepareStatement(sql);
		preparaSql.setInt(1, codAvaliacao);
		ResultSet rs = preparaSql.executeQuery();
		ModelAvaliacao avaliacao = null;
		if(rs.next()) {
			avaliacao = new ModelAvaliacao();
			avaliacao.setCodAvaliacao(rs.getInt("cod_avaliacao"));
			avaliacao.setNomeCliente(rs.getString("nome_cliente"));
			avaliacao.setIdadeCliente(rs.getInt("idade_cliente"));
			avaliacao.setCodCliente(rs.getInt("cod_cliente"));
		} return avaliacao;
	}

	

}
