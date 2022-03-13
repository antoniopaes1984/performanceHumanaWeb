package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import connection.SingleConnectionBanco;
import model.ModelAvaliador;

public class DaoAvaliadorRepository {
	private Connection connection;
	
	public DaoAvaliadorRepository() {
		connection = SingleConnectionBanco.getConnection();
	}
	
	/**
	 * Pesquisa os dados do avaliador no banco de dados utilizando o cod_usuario como chave da pesquisa
	 * @param cod_usuario chave da pesquisa
	 * @return um objeto ModelAvaliaodor
	 * @throws Exception
	 */
	public ModelAvaliador pesquisaAvaliador(int cod_usuario) throws Exception{
		String sql = "select * from avaliador where cod_usuario = ?";
		PreparedStatement preparaSql = connection.prepareStatement(sql);
		preparaSql.setInt(1, cod_usuario);
		ResultSet rs = preparaSql.executeQuery();
		ModelAvaliador avaliador = new ModelAvaliador();
		if(rs.next()) {
			avaliador.setCodAvaliador(rs.getInt("cod_avaliador"));
			avaliador.setCodUsuario(rs.getInt("cod_usuario"));
			avaliador.setCref(rs.getString("cref"));
			avaliador.setDiasParaReavaliação(rs.getInt("dias_reavaliacao"));
			avaliador.setEspecializacao(rs.getString("especializacao"));
			avaliador.setFacebook(rs.getString("facebook"));
			avaliador.setInstagram(rs.getString("instagram"));
			avaliador.setNomeAvaliador(rs.getString("nome_avaliador"));
			avaliador.setSite(rs.getString("site"));
			avaliador.setTelefoneAvaliador(rs.getString("telefone_avaliador"));
		}return avaliador;
	}
	
	public void alteraAvaliador(ModelAvaliador avaliador)throws Exception{
		String sql = "update avaliador set cref=?,dias_reavaliacao=?,especializacao=?,facebook=?,instagram=?,"
				+ "site=?,telefone_avaliador=? where cod_usuario= ?";
		PreparedStatement preparaSql = connection.prepareStatement(sql);
		preparaSql.setString(1, avaliador.getCref());
		preparaSql.setInt(2, avaliador.getDiasParaReavaliação());
		preparaSql.setString(3, avaliador.getEspecializacao());
		preparaSql.setString(4, avaliador.getFacebook());
		preparaSql.setString(5, avaliador.getInstagram());
		preparaSql.setString(6, avaliador.getSite());
		preparaSql.setString(7, avaliador.getTelefoneAvaliador());
		preparaSql.setInt(8, avaliador.getCodUsuario());
		preparaSql.executeUpdate();
		connection.commit();
	}
}
