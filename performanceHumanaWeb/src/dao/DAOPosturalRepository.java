package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import connection.SingleConnectionBanco;
import model.ModelPostural;

public class DAOPosturalRepository {
	private Connection connection;
	
	public DAOPosturalRepository() {
		connection = SingleConnectionBanco.getConnection();
	}
	
	
	public void inserirPosturalBanco(ModelPostural postural)throws Exception{
		String sql = "insert into postural (cod_avaliacao,posterior_cabeca_pescoco1,posterior_cabeca_pescoco3,posterior_cabeca_pescoco5,"
				+ "posterior_ombros1,posterior_ombros3,posterior_ombros5,posterior_coluna1,posterior_coluna3,"
				+ "posterior_coluna5,posterior_quadril1,posterior_quadril3,posterior_quadril5,"
				+ "posterior_joelhos1,posterior_joelhos3,posterior_joelhos5,"
				+ "posterior_calcanhares1,posterior_calcanhares3,posterior_calcanhares5,"
				+ "posterior_pes1,posterior_pes3,posterior_pes5,"
				+ "lateral_pescoco_peitoral1,lateral_pescoco_peitoral3,lateral_pescoco_peitoral5,"
				+ "lateral_ombros1,lateral_ombros3,lateral_ombros5,"
				+ "lateral_torax1,lateral_torax3,lateral_torax5,"
				+ "lateral_coluna_toracica_cifose1,lateral_coluna_toracica_cifose3,lateral_coluna_toracica_cifose5,"
				+ "lateral_coluna_lombossacra_lordose1,lateral_coluna_lombossacra_lordose3,lateral_coluna_lombossacra_lordose5,"
				+ "lateral_tronco1,lateral_tronco3,lateral_tronco5,"
				+ "lateral_abdomem1,lateral_abdomem3,lateral_abdomem5,"
				+ "lateral_joelho1,lateral_joelho3,lateral_joelho5,"
				+ "regiao_cabeca_pescoco,regiao_coluna_dorsal_lombar,regiao_abdomen_quadril,"
				+ "regiao_membros_inferiores,indice_correcao_postural,classificacao,observacoes)"
				+ "value(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		
		PreparedStatement preparaSql = connection.prepareStatement(sql);
		preparaSql.setInt(1, postural.getCodAvaliacao());
		preparaSql.setBoolean(2, postural.isVisaoDorsalCabecaPescoco1());
		preparaSql.setBoolean(3, postural.isVisaoDorsalCabecaPescoco3());
		preparaSql.setBoolean(4, postural.isVisaoDorsalCabecaPescoco5());
		preparaSql.setBoolean(5, postural.isVisaoDorsalOmbros1());
		preparaSql.setBoolean(6, postural.isVisaoDorsalOmbros3());
		preparaSql.setBoolean(7, postural.isVisaoDorsalOmbros5());
		preparaSql.setBoolean(8, postural.isVisaoDorsalColuna1());
		preparaSql.setBoolean(9, postural.isVisaoDorsalColuna3());
		preparaSql.setBoolean(10, postural.isVisaoDorsalColuna5());
		preparaSql.setBoolean(11, postural.isVisaoDorsalQuadril1());
		preparaSql.setBoolean(12, postural.isVisaoDorsalQuadril3());
		preparaSql.setBoolean(13, postural.isVisaoDorsalQuadril5());
		preparaSql.setBoolean(14, postural.isVisaoDorsalJoelhos1());
		preparaSql.setBoolean(15, postural.isVisaoDorsalJoelhos3());
		preparaSql.setBoolean(16, postural.isVisaoDorsalJoelhos5());
		preparaSql.setBoolean(17, postural.isVisaoDorsalCalcanhares1());
		preparaSql.setBoolean(18, postural.isVisaoDorsalCalcanhares3());
		preparaSql.setBoolean(19, postural.isVisaoDorsalCalcanhares5());
		preparaSql.setBoolean(20, postural.isVisaoDorsalPes1());
		preparaSql.setBoolean(21, postural.isVisaoDorsalPes3());
		preparaSql.setBoolean(22, postural.isVisaoDorsalPes5());
		preparaSql.setBoolean(23, postural.isVisaoLateralPescocoPeitora1());
		preparaSql.setBoolean(24, postural.isVisaoLateralPescocoPeitora3());
		preparaSql.setBoolean(25, postural.isVisaoLateralPescocoPeitora5());
		preparaSql.setBoolean(26, postural.isVisaoLateralOmbros1());
		preparaSql.setBoolean(27, postural.isVisaoLateralOmbros3());
		preparaSql.setBoolean(28, postural.isVisaoLateralOmbros5());
		preparaSql.setBoolean(29, postural.isVisaoLateralTorax1());
		preparaSql.setBoolean(30, postural.isVisaoLateralTorax3());
		preparaSql.setBoolean(31, postural.isVisaoLateralTorax5());
		preparaSql.setBoolean(32, postural.isVisaoLateralColunaToracicaCifose1());
		preparaSql.setBoolean(33, postural.isVisaoLateralColunaToracicaCifose3());
		preparaSql.setBoolean(34, postural.isVisaoLateralColunaToracicaCifose5());
		preparaSql.setBoolean(35, postural.isVisaoLateralColunaLombossacraLordose1());
		preparaSql.setBoolean(36, postural.isVisaoLateralColunaLombossacraLordose3());
		preparaSql.setBoolean(37, postural.isVisaoLateralColunaLombossacraLordose5());
		preparaSql.setBoolean(38, postural.isVisaoLateralTronco1());
		preparaSql.setBoolean(39, postural.isVisaoLateralTronco3());
		preparaSql.setBoolean(40, postural.isVisaoLateralTronco5());
		preparaSql.setBoolean(41, postural.isVisaoLateralAbdomen1());
		preparaSql.setBoolean(42, postural.isVisaoLateralAbdomen3());
		preparaSql.setBoolean(43, postural.isVisaoLateralAbdomen5());
		preparaSql.setBoolean(44, postural.isVisaoLateralJoelhos1());
		preparaSql.setBoolean(45, postural.isVisaoLateralJoelhos3());
		preparaSql.setBoolean(46, postural.isVisaoLateralJoelhos5());
		preparaSql.setDouble(47, postural.getRegiaoCabecaPescoco());
		preparaSql.setDouble(48, postural.getRegiaoColunaDorsalLombar());
		preparaSql.setDouble(49, postural.getRegiaoAbdomenQuadril());
		preparaSql.setDouble(50, postural.getRegiaoMembrosInferioers());
		preparaSql.setDouble(51, postural.getIndiceCorrecaoPostural());
		preparaSql.setString(52, postural.getClassificacao());
		preparaSql.setString(53, postural.getObservacoes());
		preparaSql.executeUpdate();
		connection.commit();
	}
	
	/**
	 * Pesquisa os dados de postural de uma avaliacao de um cliente
	 * @param codAvaliacao chabe da pesquisa
	 * @return um objeto postural
	 * @throws Exception
	 */
	public ModelPostural pesquisaPostural(int codAvaliacao)throws Exception{
		String sql = "select * from postural where cod_avaliacao = ?";
		PreparedStatement preparaSql = connection.prepareStatement(sql);
		preparaSql.setInt(1, codAvaliacao);
		ResultSet rs = preparaSql.executeQuery();
		ModelPostural postural = new ModelPostural();
		if(rs.next()) {
			postural.setCodAvaliacao(rs.getInt("cod_avaliacao"));
			postural.setVisaoDorsalCabecaPescoco5(rs.getBoolean("posterior_cabeca_pescoco5"));
            postural.setVisaoDorsalCabecaPescoco3(rs.getBoolean("posterior_cabeca_pescoco3"));
            postural.setVisaoDorsalCabecaPescoco1(rs.getBoolean("posterior_cabeca_pescoco1"));
            postural.setVisaoDorsalOmbros5(rs.getBoolean("posterior_ombros5"));
            postural.setVisaoDorsalOmbros3(rs.getBoolean("posterior_ombros3"));
            postural.setVisaoDorsalOmbros1(rs.getBoolean("posterior_ombros1"));
            postural.setVisaoDorsalColuna5(rs.getBoolean("posterior_coluna5"));
            postural.setVisaoDorsalColuna3(rs.getBoolean("posterior_coluna3"));
            postural.setVisaoDorsalColuna1(rs.getBoolean("posterior_coluna1"));
            postural.setVisaoDorsalQuadril5(rs.getBoolean("posterior_quadril5"));
            postural.setVisaoDorsalQuadril3(rs.getBoolean("posterior_quadril3"));
            postural.setVisaoDorsalQuadril1(rs.getBoolean("posterior_quadril1"));
            postural.setVisaoDorsalJoelhos5(rs.getBoolean("posterior_joelhos5"));
            postural.setVisaoDorsalJoelhos3(rs.getBoolean("posterior_joelhos3"));
            postural.setVisaoDorsalJoelhos1(rs.getBoolean("posterior_joelhos1"));
            postural.setVisaoDorsalCalcanhares5(rs.getBoolean("posterior_calcanhares5"));
            postural.setVisaoDorsalCalcanhares3(rs.getBoolean("posterior_calcanhares3"));
            postural.setVisaoDorsalCalcanhares1(rs.getBoolean("posterior_calcanhares1"));
            postural.setVisaoDorsalPes5(rs.getBoolean("posterior_pes5"));
            postural.setVisaoDorsalPes3(rs.getBoolean("posterior_pes3"));
            postural.setVisaoDorsalPes1(rs.getBoolean("posterior_pes1"));
            postural.setVisaoLateralPescocoPeitora5(rs.getBoolean("lateral_pescoco_peitoral5"));
            postural.setVisaoLateralPescocoPeitora3(rs.getBoolean("lateral_pescoco_peitoral3"));
            postural.setVisaoLateralPescocoPeitora1(rs.getBoolean("lateral_pescoco_peitoral1"));
            postural.setVisaoLateralOmbros5(rs.getBoolean("lateral_ombros5"));
            postural.setVisaoLateralOmbros3(rs.getBoolean("lateral_ombros3"));
            postural.setVisaoLateralOmbros1(rs.getBoolean("lateral_ombros1"));
            postural.setVisaoLateralTorax5(rs.getBoolean("lateral_torax5"));
            postural.setVisaoLateralTorax3(rs.getBoolean("lateral_torax3"));
            postural.setVisaoLateralTorax1(rs.getBoolean("lateral_torax1"));
            postural.setVisaoLateralColunaToracicaCifose5(rs.getBoolean("lateral_coluna_toracica_cifose5"));
            postural.setVisaoLateralColunaToracicaCifose3(rs.getBoolean("lateral_coluna_toracica_cifose3"));
            postural.setVisaoLateralColunaToracicaCifose1(rs.getBoolean("lateral_coluna_toracica_cifose1"));
            postural.setVisaoLateralColunaLombossacraLordose5(rs.getBoolean("lateral_coluna_lombossacra_lordose5"));
            postural.setVisaoLateralColunaLombossacraLordose3(rs.getBoolean("lateral_coluna_lombossacra_lordose3"));
            postural.setVisaoLateralColunaLombossacraLordose1(rs.getBoolean("lateral_coluna_lombossacra_lordose1"));
            postural.setVisaoLateralTronco5(rs.getBoolean("lateral_tronco5"));
            postural.setVisaoLateralTronco3(rs.getBoolean("lateral_tronco3"));
            postural.setVisaoLateralTronco1(rs.getBoolean("lateral_tronco1"));
            postural.setVisaoLateralAbdomen5(rs.getBoolean("lateral_abdomem5"));
            postural.setVisaoLateralAbdomen3(rs.getBoolean("lateral_abdomem3"));
            postural.setVisaoLateralAbdomen1(rs.getBoolean("lateral_abdomem1"));
            postural.setVisaoLateralJoelhos5(rs.getBoolean("lateral_joelho5"));
            postural.setVisaoLateralJoelhos3(rs.getBoolean("lateral_joelho3"));
            postural.setVisaoLateralJoelhos1(rs.getBoolean("lateral_joelho1"));
            postural.setRegiaoCabecaPescoco(rs.getDouble("regiao_cabeca_pescoco"));
            postural.setRegiaoColunaDorsalLombar(rs.getDouble("regiao_coluna_dorsal_lombar"));
            postural.setRegiaoAbdomenQuadril(rs.getDouble("regiao_abdomen_quadril"));
            postural.setRegiaoMembrosInferioers(rs.getDouble("regiao_membros_inferiores"));
            postural.setIndiceCorrecaoPostural(rs.getDouble("indice_correcao_postural"));
            postural.setObservacoes(rs.getString("observacoes"));
            postural.setClassificacao(rs.getString("classificacao"));
		}return postural;
	}
	
	public void alterarPostural(ModelPostural postural) throws Exception{
        String sql = "update postural set posterior_cabeca_pescoco5=?, posterior_cabeca_pescoco3=?, posterior_cabeca_pescoco1=?,"
                + "posterior_ombros5=?, posterior_ombros3=?, posterior_ombros1=?, posterior_coluna5=?, posterior_coluna3=?, posterior_coluna1=?,"
                + " posterior_quadril5=?, posterior_quadril3=?, posterior_quadril1=?, posterior_joelhos5=?, posterior_joelhos3=?, posterior_joelhos1=?,"
                + " posterior_calcanhares5=?, posterior_calcanhares3=?, posterior_calcanhares1=?, posterior_pes5=?, posterior_pes3=?,posterior_pes1=?,"
                + " lateral_pescoco_peitoral5=?, lateral_pescoco_peitoral3=?, lateral_pescoco_peitoral1=?, lateral_ombros5=?, lateral_ombros3=?, lateral_ombros1=?,"
                + " lateral_torax5=?, lateral_torax3=?, lateral_torax1=?, lateral_coluna_toracica_cifose5=?, lateral_coluna_toracica_cifose3=?, lateral_coluna_toracica_cifose1=?,"
                + " lateral_coluna_lombossacra_lordose5=?, lateral_coluna_lombossacra_lordose3=?, lateral_coluna_lombossacra_lordose1=?,"
                + " lateral_tronco5=?, lateral_tronco3=?, lateral_tronco1=?, lateral_abdomem5=?, lateral_abdomem3=?, lateral_abdomem1=?,"
                + " lateral_joelho5=?, lateral_joelho3=?, lateral_joelho1=?,regiao_cabeca_pescoco=?,regiao_coluna_dorsal_lombar=?,"
                + "regiao_abdomen_quadril=?,regiao_membros_inferiores=?,indice_correcao_postural=?, classificacao=?, observacoes=? where cod_avaliacao=?";
        
        try {
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setBoolean(1, postural.isVisaoDorsalCabecaPescoco5());
            pst.setBoolean(2, postural.isVisaoDorsalCabecaPescoco3());
            pst.setBoolean(3, postural.isVisaoDorsalCabecaPescoco1());
            pst.setBoolean(4, postural.isVisaoDorsalOmbros5());
            pst.setBoolean(5, postural.isVisaoDorsalOmbros3());
            pst.setBoolean(6, postural.isVisaoDorsalOmbros1());
            pst.setBoolean(7, postural.isVisaoDorsalColuna5());
            pst.setBoolean(8, postural.isVisaoDorsalColuna3());
            pst.setBoolean(9, postural.isVisaoDorsalColuna1());
            pst.setBoolean(10, postural.isVisaoDorsalQuadril5());
            pst.setBoolean(11, postural.isVisaoDorsalQuadril3());
            pst.setBoolean(12, postural.isVisaoDorsalQuadril1());
            pst.setBoolean(13, postural.isVisaoDorsalJoelhos5());
            pst.setBoolean(14, postural.isVisaoDorsalJoelhos3());
            pst.setBoolean(15, postural.isVisaoDorsalJoelhos1());
            pst.setBoolean(16, postural.isVisaoDorsalCalcanhares5());
            pst.setBoolean(17, postural.isVisaoDorsalCalcanhares3());
            pst.setBoolean(18, postural.isVisaoDorsalCalcanhares1());
            pst.setBoolean(19, postural.isVisaoDorsalPes5());
            pst.setBoolean(20, postural.isVisaoDorsalPes3());
            pst.setBoolean(21, postural.isVisaoDorsalPes1());
            pst.setBoolean(22, postural.isVisaoLateralPescocoPeitora5());
            pst.setBoolean(23, postural.isVisaoLateralPescocoPeitora3());
            pst.setBoolean(24, postural.isVisaoLateralPescocoPeitora1());
            pst.setBoolean(25, postural.isVisaoLateralOmbros5());
            pst.setBoolean(26, postural.isVisaoLateralOmbros3());
            pst.setBoolean(27, postural.isVisaoLateralOmbros1());
            pst.setBoolean(28, postural.isVisaoLateralTorax5());
            pst.setBoolean(29, postural.isVisaoLateralTorax3());
            pst.setBoolean(30, postural.isVisaoLateralTorax1());
            pst.setBoolean(31, postural.isVisaoLateralColunaToracicaCifose5());
            pst.setBoolean(32, postural.isVisaoLateralColunaToracicaCifose3());
            pst.setBoolean(33, postural.isVisaoLateralColunaToracicaCifose1());
            pst.setBoolean(34, postural.isVisaoLateralColunaLombossacraLordose5());
            pst.setBoolean(35, postural.isVisaoLateralColunaLombossacraLordose3());
            pst.setBoolean(36, postural.isVisaoLateralColunaLombossacraLordose1());
            pst.setBoolean(37, postural.isVisaoLateralTronco5());
            pst.setBoolean(38, postural.isVisaoLateralTronco3());
            pst.setBoolean(39, postural.isVisaoLateralTronco1());
            pst.setBoolean(40, postural.isVisaoLateralAbdomen5());
            pst.setBoolean(41, postural.isVisaoLateralAbdomen3());
            pst.setBoolean(42, postural.isVisaoLateralAbdomen1());
            pst.setBoolean(43, postural.isVisaoLateralJoelhos5());
            pst.setBoolean(44, postural.isVisaoLateralJoelhos3());
            pst.setBoolean(45, postural.isVisaoLateralJoelhos1());
            pst.setDouble(46, postural.getRegiaoCabecaPescoco());
            pst.setDouble(47, postural.getRegiaoColunaDorsalLombar());
            pst.setDouble(48, postural.getRegiaoAbdomenQuadril());
            pst.setDouble(49, postural.getRegiaoMembrosInferioers());
            pst.setDouble(50, postural.getIndiceCorrecaoPostural());
            pst.setString(51, postural.getClassificacao());
            pst.setString(52, postural.getObservacoes());
            pst.setInt(53, postural.getCodAvaliacao());
            pst.executeUpdate();
            connection.commit();
        } catch (SQLException e) {
            e.printStackTrace();
            connection.rollback();
        }
    }

}
