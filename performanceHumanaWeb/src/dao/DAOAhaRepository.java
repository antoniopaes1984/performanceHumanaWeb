package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import connection.SingleConnectionBanco;
import model.ModelAha;

public class DAOAhaRepository {
	private Connection connection;

	public DAOAhaRepository() {
		connection = SingleConnectionBanco.getConnection();
	}

	public void insereAhaBanco(ModelAha aha) throws Exception {
		String sql = "insert into aha (cod_avaliacao,hist_perg1,hist_perg2,hist_perg3,hist_perg4,hist_perg5,hist_perg6,hist_perg7,hist_perg8,hist_perg9,hist_perg10,saude_perg1,saude_perg2,saude_perg3,saude_perg4,saude_perg5,saude_perg6,saude_perg7,saude_perg8,sinto_perg1,sinto_perg2,sinto_perg3,sinto_perg4,sinto_perg5,sinto_perg6,cardio_perg1,cardio_perg2,cardio_perg3,cardio_perg4,cardio_perg5,cardio_perg6,cardio_perg7,situacao) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement preparaSql = connection.prepareStatement(sql);
		preparaSql.setInt(1, aha.getCodAvaliacao());
		preparaSql.setBoolean(2, aha.isHistPerg1());
		preparaSql.setBoolean(3, aha.isHistPerg2());
		preparaSql.setBoolean(4, aha.isHistPerg3());
		preparaSql.setBoolean(5, aha.isHistPerg4());
		preparaSql.setBoolean(6, aha.isHistPerg5());
		preparaSql.setBoolean(7, aha.isHistPerg6());
		preparaSql.setBoolean(8, aha.isHistPerg7());
		preparaSql.setBoolean(9, aha.isHistPerg8());
		preparaSql.setBoolean(10, aha.isHistPerg9());
		preparaSql.setBoolean(11, aha.isHistPerg10());
		preparaSql.setBoolean(12, aha.isSaudePerg1());
		preparaSql.setBoolean(13, aha.isSaudePerg2());
		preparaSql.setBoolean(14, aha.isSaudePerg3());
		preparaSql.setBoolean(15, aha.isSaudePerg4());
		preparaSql.setBoolean(16, aha.isSaudePerg5());
		preparaSql.setBoolean(17, aha.isSaudePerg6());
		preparaSql.setBoolean(18, aha.isSaudePerg7());
		preparaSql.setBoolean(19, aha.isSaudePerg8());
		preparaSql.setBoolean(20, aha.isSintoPerg1());
		preparaSql.setBoolean(21, aha.isSintoPerg2());
		preparaSql.setBoolean(22, aha.isSintoPerg3());
		preparaSql.setBoolean(23, aha.isSintoPerg4());
		preparaSql.setBoolean(24, aha.isSintoPerg5());
		preparaSql.setBoolean(25, aha.isSintoPerg6());
		preparaSql.setBoolean(26, aha.isCardioPerg1());
		preparaSql.setBoolean(27, aha.isCardioPerg2());
		preparaSql.setBoolean(28, aha.isCardioPerg3());
		preparaSql.setBoolean(29, aha.isCardioPerg4());
		preparaSql.setBoolean(30, aha.isCardioPerg5());
		preparaSql.setBoolean(31, aha.isCardioPerg6());
		preparaSql.setBoolean(32, aha.isCardioPerg7());
		preparaSql.setString(33, aha.getSituacao());
		preparaSql.executeUpdate();
		connection.commit();
	}
	
	public void alterarAhaBanco(ModelAha aha)throws Exception{
		String sql = "update aha set hist_perg1=?, hist_perg2=?, hist_perg3=?, hist_perg4=?, hist_perg5=?, hist_perg6=?, hist_perg7=?,"
				+ "hist_perg8=?, hist_perg9=?, hist_perg10=?, saude_perg1=?, saude_perg2=?, saude_perg3=?, saude_perg4=?, saude_perg5=?,"
				+ "saude_perg6=?, saude_perg7=?, saude_perg8=?, sinto_perg1=?, sinto_perg2=?, sinto_perg3=?, sinto_perg4=?, sinto_perg5=?,"
				+ "sinto_perg6=?, cardio_perg1=?, cardio_perg2=?, cardio_perg3=?, cardio_perg4=?, cardio_perg5=?, cardio_perg6=?, cardio_perg7=?,"
				+ "situacao=? where cod_avaliacao = ?";
		PreparedStatement preparaSql = connection.prepareStatement(sql);
		preparaSql.setBoolean(1, aha.isHistPerg1());
		preparaSql.setBoolean(2, aha.isHistPerg2());
		preparaSql.setBoolean(3, aha.isHistPerg3());
		preparaSql.setBoolean(4, aha.isHistPerg4());
		preparaSql.setBoolean(5, aha.isHistPerg5());
		preparaSql.setBoolean(6, aha.isHistPerg6());
		preparaSql.setBoolean(7, aha.isHistPerg7());
		preparaSql.setBoolean(8, aha.isHistPerg8());
		preparaSql.setBoolean(9, aha.isHistPerg9());
		preparaSql.setBoolean(10, aha.isHistPerg10());
		
		preparaSql.setBoolean(11, aha.isSaudePerg1());
		preparaSql.setBoolean(12, aha.isSaudePerg2());
		preparaSql.setBoolean(13, aha.isSaudePerg3());
		preparaSql.setBoolean(14, aha.isSaudePerg4());
		preparaSql.setBoolean(15, aha.isSaudePerg5());
		preparaSql.setBoolean(16, aha.isSaudePerg6());
		preparaSql.setBoolean(17, aha.isSaudePerg7());
		preparaSql.setBoolean(18, aha.isSaudePerg8());
		
		preparaSql.setBoolean(19, aha.isSintoPerg1());
		preparaSql.setBoolean(20, aha.isSintoPerg2());
		preparaSql.setBoolean(21, aha.isSintoPerg3());
		preparaSql.setBoolean(22, aha.isSintoPerg4());
		preparaSql.setBoolean(23, aha.isSintoPerg5());
		preparaSql.setBoolean(24, aha.isSintoPerg6());
		
		preparaSql.setBoolean(25, aha.isCardioPerg1());
		preparaSql.setBoolean(26, aha.isCardioPerg2());
		preparaSql.setBoolean(27, aha.isCardioPerg3());
		preparaSql.setBoolean(28, aha.isCardioPerg4());
		preparaSql.setBoolean(29, aha.isCardioPerg5());
		preparaSql.setBoolean(30, aha.isCardioPerg6());
		preparaSql.setBoolean(31, aha.isCardioPerg7());
		
		preparaSql.setString(32, aha.getSituacao());
		preparaSql.setInt(33, aha.getCodAvaliacao());
		preparaSql.executeUpdate();
		connection.commit();
	}
	
	/**
	 * Pesquisa os dado de aha de um cliente no bancop de dados
	 * @param codAvaliacao chave da pesquisa
	 * @return objeto aha
	 * @throws Exception
	 */
	public ModelAha pesquisaAhaPeloCodAvaliacao(int codAvaliacao)throws Exception{
		String sql = "select * from aha where cod_avaliacao = ?";
		PreparedStatement preparaSql = connection.prepareStatement(sql);
		preparaSql.setInt(1, codAvaliacao);
		ModelAha aha = new ModelAha();
		ResultSet rs = preparaSql.executeQuery();
		if(rs.next()) {
			aha.setCodAvaliacao(rs.getInt("cod_avaliacao"));
			
			aha.setHistPerg1(rs.getBoolean("hist_perg1"));
			aha.setHistPerg2(rs.getBoolean("hist_perg2"));
			aha.setHistPerg3(rs.getBoolean("hist_perg3"));
			aha.setHistPerg4(rs.getBoolean("hist_perg4"));
			aha.setHistPerg5(rs.getBoolean("hist_perg5"));
			aha.setHistPerg6(rs.getBoolean("hist_perg6"));
			aha.setHistPerg7(rs.getBoolean("hist_perg7"));
			aha.setHistPerg8(rs.getBoolean("hist_perg8"));
			aha.setHistPerg9(rs.getBoolean("hist_perg9"));
			aha.setHistPerg10(rs.getBoolean("hist_perg10"));
			
			aha.setSaudePerg1(rs.getBoolean("saude_perg1"));
			aha.setSaudePerg2(rs.getBoolean("saude_perg2"));
			aha.setSaudePerg3(rs.getBoolean("saude_perg3"));
			aha.setSaudePerg4(rs.getBoolean("saude_perg4"));
			aha.setSaudePerg5(rs.getBoolean("saude_perg5"));
			aha.setSaudePerg6(rs.getBoolean("saude_perg6"));
			aha.setSaudePerg7(rs.getBoolean("saude_perg7"));
			aha.setSaudePerg8(rs.getBoolean("saude_perg8"));
			
			aha.setSintoPerg1(rs.getBoolean("sinto_perg1"));
			aha.setSintoPerg2(rs.getBoolean("sinto_perg2"));
			aha.setSintoPerg3(rs.getBoolean("sinto_perg3"));
			aha.setSintoPerg4(rs.getBoolean("sinto_perg4"));
			aha.setSintoPerg5(rs.getBoolean("sinto_perg5"));
			aha.setSintoPerg6(rs.getBoolean("sinto_perg6"));
			
			aha.setCardioPerg1(rs.getBoolean("cardio_perg1"));
			aha.setCardioPerg2(rs.getBoolean("cardio_perg2"));
			aha.setCardioPerg3(rs.getBoolean("cardio_perg3"));
			aha.setCardioPerg4(rs.getBoolean("cardio_perg4"));
			aha.setCardioPerg5(rs.getBoolean("cardio_perg5"));
			aha.setCardioPerg6(rs.getBoolean("cardio_perg6"));
			aha.setCardioPerg7(rs.getBoolean("cardio_perg7"));
			
			aha.setSituacao(rs.getString("situacao"));
		}return aha;
	}
}
