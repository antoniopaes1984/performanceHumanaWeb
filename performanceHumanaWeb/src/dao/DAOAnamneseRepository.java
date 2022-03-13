package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import connection.SingleConnectionBanco;
import model.ModelAnamnese;

public class DAOAnamneseRepository {
	private Connection connection;
	
	public DAOAnamneseRepository() {
		connection = SingleConnectionBanco.getConnection();
	}
	/**
	 * Insere os dados iniciais da anamnese ao criar uma avaliação
	 * @param anamnese objeto a ser salvo 
	 * @throws Exception
	 */
	public void inserirAnamneseBanco(ModelAnamnese anamnese)throws Exception{
		String sql = "insert into anamnese (cod_avaliacao,atvfis_atual,atvfis_pretendida,objetivo,"
				+ " fumante, observacoes, hist_med_pessoal,hist_med_familiar,dor_lesao,pressao_arterial,"
				+ "classificacao_pressao_arterial, oximetria, classificacao_oximetria, fc_repouso, fc_Max,"
				+ "fc_Res, disponibilidade, situacao,glicemia,resulta_glicemia,triglicerideo,"
				+ "resulta_triglicerideo,colesterol_total,resulta_colesterol,hdl, resulta_hdl, ldl,"
				+ "resulta_ldl, vldl, resulta_vldl) value (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement preparaSql = connection.prepareStatement(sql);
			preparaSql.setInt(1, anamnese.getCodAvaliacao());
			preparaSql.setString(2, anamnese.getAtividadeFisicaAtual());
			preparaSql.setString(3, anamnese.getAtividadeFisicaPretendida());
			preparaSql.setString(4, anamnese.getObjetivo());
			preparaSql.setString(5, anamnese.getFumante());
			preparaSql.setString(6, anamnese.getObservacoes());
			preparaSql.setString(7, anamnese.getHistoricoMedicoPessoal());
			preparaSql.setString(8, anamnese.getHistoricoMedicoFamiliar());
			preparaSql.setString(9, anamnese.getDorLesao());
			preparaSql.setString(10, anamnese.getPressaoArterial());
			preparaSql.setString(11, anamnese.getClassificacaoPressaoArterial());
			preparaSql.setString(12, anamnese.getOximetria());
			preparaSql.setString(13, anamnese.getClassificacaoOximetria());
			preparaSql.setString(14, anamnese.getFrequenciaCardiacaRepouso());
			preparaSql.setDouble(15, anamnese.getFrequenciaCardiacaMax());
			preparaSql.setDouble(16, anamnese.getFrequenciaCardiacaReserva());
			preparaSql.setString(17, anamnese.getDisponibilidade());
			preparaSql.setString(18, anamnese.getSituacao());
			preparaSql.setInt(19, anamnese.getGlicemia());
			preparaSql.setString(20, anamnese.getResultaGlicemia());
			preparaSql.setInt(21, anamnese.getTriglicerideo());
			preparaSql.setString(22, anamnese.getResulta_triglicerideo());
			preparaSql.setInt(23, anamnese.getColesterolTotal());
			preparaSql.setString(24, anamnese.getResulta_colesterol());
			preparaSql.setInt(25, anamnese.getHdl());
			preparaSql.setString(26, anamnese.getResulta_hdl());
			preparaSql.setInt(27, anamnese.getLdl());
			preparaSql.setString(28, anamnese.getResulta_ldl());
			preparaSql.setInt(29, anamnese.getVldl());
			preparaSql.setString(30, anamnese.getResulta_vldl());
			preparaSql.executeUpdate();
			connection.commit();
	}
	
	
	public void alterarAnamnese(ModelAnamnese anamnese)throws Exception{
		String sql = "update anamnese set atvfis_atual=?,atvfis_pretendida=?,objetivo=?,"
				+  "fumante=?, observacoes=?, hist_med_pessoal=?,hist_med_familiar=?,dor_lesao=?,pressao_arterial=?,"
				+ "classificacao_pressao_arterial=?, oximetria=?, classificacao_oximetria=?, fc_repouso=?, fc_Max=?,"
				+ "fc_Res=?, disponibilidade=?, situacao=?,glicemia=?,resulta_glicemia=?,triglicerideo=?,"
				+ "resulta_triglicerideo=?,colesterol_total=?,resulta_colesterol=?,hdl=?, resulta_hdl=?, ldl=?,"
				+ "resulta_ldl=?, vldl=?, resulta_vldl=? where cod_avaliacao = ?";
		PreparedStatement preparaSql = connection.prepareStatement(sql);
		preparaSql.setString(1, anamnese.getAtividadeFisicaAtual());
		preparaSql.setString(2, anamnese.getAtividadeFisicaPretendida());
		preparaSql.setString(3, anamnese.getObjetivo());
		preparaSql.setString(4, anamnese.getFumante());
		preparaSql.setString(5, anamnese.getObservacoes());
		preparaSql.setString(6, anamnese.getHistoricoMedicoPessoal());
		preparaSql.setString(7, anamnese.getHistoricoMedicoFamiliar());
		preparaSql.setString(8, anamnese.getDorLesao());
		preparaSql.setString(9, anamnese.getPressaoArterial());
		preparaSql.setString(10, anamnese.getClassificacaoPressaoArterial());
		preparaSql.setString(11, anamnese.getOximetria());
		preparaSql.setString(12, anamnese.getClassificacaoOximetria());
		preparaSql.setString(13, anamnese.getFrequenciaCardiacaRepouso());
		preparaSql.setDouble(14, anamnese.getFrequenciaCardiacaMax());
		preparaSql.setDouble(15, anamnese.getFrequenciaCardiacaReserva());
		preparaSql.setString(16, anamnese.getDisponibilidade());
		preparaSql.setString(17, anamnese.getSituacao());
		preparaSql.setInt(18, anamnese.getGlicemia());
		preparaSql.setString(19, anamnese.getResultaGlicemia());
		preparaSql.setInt(20, anamnese.getTriglicerideo());
		preparaSql.setString(21, anamnese.getResulta_triglicerideo());
		preparaSql.setInt(22, anamnese.getColesterolTotal());
		preparaSql.setString(23, anamnese.getResulta_colesterol());
		preparaSql.setInt(24, anamnese.getHdl());
		preparaSql.setString(25, anamnese.getResulta_hdl());
		preparaSql.setInt(26, anamnese.getLdl());
		preparaSql.setString(27, anamnese.getResulta_ldl());
		preparaSql.setInt(28, anamnese.getVldl());
		preparaSql.setString(29, anamnese.getResulta_vldl());
		preparaSql.setInt(30, anamnese.getCodAvaliacao());
		preparaSql.executeUpdate();
		connection.commit();
		
	}
	
	
	
	
	
	/**
	 * Pesquisa a anamnese de um cliente no banco de dados
	 * @param codAvaliacao chave da pesquisa
	 * @return objeto ModelAnamnese
	 * @throws Exception
	 */
	public ModelAnamnese pesquisaAnamnese(int codAvaliacao)throws Exception{
		String sql = "select * from anamnese where cod_avaliacao = ?";
		PreparedStatement preparaSql = connection.prepareStatement(sql);
		preparaSql.setInt(1, codAvaliacao);
		ResultSet rs = preparaSql.executeQuery();
		ModelAnamnese anamnese = new ModelAnamnese();
		if(rs.next()) {
			anamnese.setCodAvaliacao(rs.getInt("cod_avaliacao"));
			anamnese.setAtividadeFisicaAtual(rs.getString("atvfis_atual"));
			anamnese.setAtividadeFisicaPretendida(rs.getString("atvfis_pretendida"));
			anamnese.setObjetivo(rs.getString("objetivo"));
			anamnese.setFumante(rs.getString("fumante"));
			anamnese.setObservacoes(rs.getString("observacoes"));
			anamnese.setHistoricoMedicoPessoal(rs.getString("hist_med_pessoal"));
			anamnese.setHistoricoMedicoFamiliar(rs.getString("hist_med_familiar"));
			anamnese.setDorLesao(rs.getString("dor_lesao"));
			anamnese.setPressaoArterial(rs.getString("pressao_arterial"));
			anamnese.setClassificacaoPressaoArterial(rs.getString("classificacao_pressao_arterial"));
			anamnese.setOximetria(rs.getString("oximetria"));
			anamnese.setClassificacaoOximetria(rs.getString("classificacao_oximetria"));
			anamnese.setFrequenciaCardiacaRepouso(rs.getString("fc_repouso"));
			anamnese.setFrequenciaCardiacaMax(rs.getDouble("fc_Max"));
			anamnese.setFrequenciaCardiacaReserva(rs.getDouble("fc_Res"));
			anamnese.setDisponibilidade(rs.getString("disponibilidade"));
			anamnese.setSituacao(rs.getString("situacao"));
			anamnese.setGlicemia(rs.getInt("glicemia"));
			anamnese.setResultaGlicemia(rs.getString("resulta_glicemia"));
			anamnese.setTriglicerideo(rs.getInt("triglicerideo"));
			anamnese.setResulta_triglicerideo(rs.getString("resulta_triglicerideo"));
			anamnese.setColesterolTotal(rs.getInt("colesterol_total"));
			anamnese.setResulta_colesterol(rs.getString("resulta_colesterol"));
			anamnese.setHdl(rs.getInt("hdl"));
			anamnese.setResulta_hdl(rs.getString("resulta_hdl"));
			anamnese.setLdl(rs.getInt("ldl"));
			anamnese.setResulta_ldl(rs.getString("resulta_ldl"));
			anamnese.setVldl(rs.getInt("vldl"));
			anamnese.setResulta_vldl(rs.getString("resulta_vldl")); 
		}
		return anamnese;
	}
}
