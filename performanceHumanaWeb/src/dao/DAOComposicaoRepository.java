package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import connection.SingleConnectionBanco;
import model.ModelMedidas;

public class DAOComposicaoRepository {
	private Connection connection;
	
	public DAOComposicaoRepository() {
		connection = SingleConnectionBanco.getConnection();
	}

	public void inserirMedidasBancoDadosBasico(int codAvalicao) throws Exception{
		
		String sql = "insert into medidas (cod_avaliacao) value (?)";
			PreparedStatement preparaSql = connection.prepareStatement(sql);
			preparaSql.setInt(1, codAvalicao);
			preparaSql.executeUpdate();
			connection.commit();
    }
	
	public ModelMedidas pesquisarMedidasPeloCodAvaliacao(int codAvaliacao) throws Exception {
        String sql = "select cod_avaliacao,formula_usada,dc_tricepsAmostra1, dc_tricepsAmostra2,dc_tricepsAmostra3,"
              + " dc_triceps, dc_biceps_amostra1, dc_biceps_amostra2, dc_biceps_amostra3, dc_biceps,"
              + "dc_subescapular_amostra1, dc_subescapular_amostra2, dc_subescapular_amostra3, dc_subescapular,"
              + "dc_peitora_amostra1, dc_peitora_amostra2, dc_peitora_amostra3, dc_peitoral,"
              + "dc_axilar_amostra1, dc_axilar_amostra2, dc_axilar_amostra3, dc_axilarMedia,"
              + "dc_supiliaca_amostra1, dc_supiliaca_amostra2, dc_supiliaca_amostra3, dc_supraIliaca,"
              + "dc_abdomem_amostra1, dc_abdomem_amostra2, dc_abdomem_amostra3, dc_abdomen,"
              + "dc_coxa_Pollock_Medial_amostra1, dc_coxa_Pollock_Medial_amostra2, dc_coxa_Pollock_Medial_amostra3, dc_Coxa_Pollock_Medial,"
              + "dc_Coxa_Guedes_Prox_amostra1, dc_Coxa_Guedes_Prox_amostra2, dc_Coxa_Guedes_Prox_amostra3, dc_Coxa_Guedes_Prox,"
              + "dc_panturrilha_amostra1, dc_panturrilha_amostra2, dc_panturrilha_amostra3, dc_panturrilha,"
              + "soma_dobras,cir_cintura,cir_abdomen,cir_iliaco,"
              + "cir_quadril,peso,altura,diametro_osseo_punho,diametro_osseo_femur,diametro_osseo_umero,bioimpedancia,"
              + "percen_gordura_atual,percen_gordura_alvo from medidas where cod_avaliacao = ?";
        
        ModelMedidas medidas = null;
       
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setInt(1, codAvaliacao);
            ResultSet rs = pst.executeQuery();
            
            if (rs.next()) {
                medidas = new ModelMedidas();
                medidas.setCodAvaliacao(rs.getInt("cod_avaliacao"));
                medidas.setFormula_usada(rs.getString("formula_usada"));
                medidas.setAmostra1DcTriceps(rs.getDouble("dc_tricepsAmostra1"));
                medidas.setAmostra2DcTriceps(rs.getDouble("dc_tricepsAmostra2"));
                medidas.setAmostra3DcTriceps(rs.getDouble("dc_tricepsAmostra3"));
                medidas.setDcTriceps(rs.getDouble("dc_triceps"));
                
                medidas.setAmostra1DcBiceps(rs.getDouble("dc_biceps_amostra1"));
                medidas.setAmostra2DcBiceps(rs.getDouble("dc_biceps_amostra2"));
                medidas.setAmostra3DcBiceps(rs.getDouble("dc_biceps_amostra3"));
                medidas.setDcBiceps(rs.getDouble("dc_biceps"));
                
                medidas.setAmostra1DcSubescapular(rs.getDouble("dc_subescapular_amostra1"));
                medidas.setAmostra2DcSubescapular(rs.getDouble("dc_subescapular_amostra2"));
                medidas.setAmostra3DcSubescapular(rs.getDouble("dc_subescapular_amostra3"));
                medidas.setDcSubescapular(rs.getDouble("dc_subescapular"));
                
                
                medidas.setAmostra1DcPeitoral(rs.getDouble("dc_peitora_amostra1"));
                medidas.setAmostra2DcPeitoral(rs.getDouble("dc_peitora_amostra2"));
                medidas.setAmostra3DcPeitoral(rs.getDouble("dc_peitora_amostra3"));
                medidas.setDcPeitoral(rs.getDouble("dc_peitoral"));
                
                medidas.setAmostra1DcAxilarMedia(rs.getDouble("dc_axilar_amostra1"));
                medidas.setAmostra2DcAxilarMedia(rs.getDouble("dc_axilar_amostra2"));
                medidas.setAmostra3DcAxilarMedia(rs.getDouble("dc_axilar_amostra3"));
                medidas.setDcAxilarMedia(rs.getDouble("dc_axilarMedia"));
                
                medidas.setAmostra1DcSupraIliaca(rs.getDouble("dc_supiliaca_amostra1"));
                medidas.setAmostra2DcSupraIliaca(rs.getDouble("dc_supiliaca_amostra2"));
                medidas.setAmostra3DcSupraIliaca(rs.getDouble("dc_supiliaca_amostra3"));
                medidas.setDcSupraIliaca(rs.getDouble("dc_supraIliaca"));
                
                medidas.setAmostra1DcAbdomen(rs.getDouble("dc_abdomem_amostra1"));
                medidas.setAmostra2DcAbdomen(rs.getDouble("dc_abdomem_amostra2"));
                medidas.setAmostra3DcAbdomen(rs.getDouble("dc_abdomem_amostra3"));
                medidas.setDcAbdomen(rs.getDouble("dc_abdomen"));
                
                medidas.setAmostra1DcCoxaPollockMedial(rs.getDouble("dc_coxa_Pollock_Medial_amostra1"));
                medidas.setAmostra2DcCoxaPollockMedial(rs.getDouble("dc_coxa_Pollock_Medial_amostra2"));
                medidas.setAmostra3DcCoxaPollockMedial(rs.getDouble("dc_coxa_Pollock_Medial_amostra3"));
                medidas.setDcCoxaPollockMedial(rs.getDouble("dc_Coxa_Pollock_Medial"));
                
                medidas.setAmostra1DcCoxaGuedesProx(rs.getDouble("dc_Coxa_Guedes_Prox_amostra1"));
                medidas.setAmostra2DcCoxaGuedesProx(rs.getDouble("dc_Coxa_Guedes_Prox_amostra2"));
                medidas.setAmostra3DcCoxaGuedesProx(rs.getDouble("dc_Coxa_Guedes_Prox_amostra3"));
                medidas.setDcCoxaGuedesProx(rs.getDouble("dc_Coxa_Guedes_Prox"));
                
                medidas.setAmostra1DcPanturrurrilha(rs.getDouble("dc_panturrilha_amostra1"));
                medidas.setAmostra2DcPanturrurrilha(rs.getDouble("dc_panturrilha_amostra2"));
                medidas.setAmostra3DcPanturrurrilha(rs.getDouble("dc_panturrilha_amostra3"));
                medidas.setDcPanturrilha(rs.getDouble("dc_panturrilha"));
                
                medidas.setSomaDobras(rs.getDouble("soma_dobras"));
                
                medidas.setCirCintura(rs.getDouble("cir_cintura"));
                medidas.setCirAbdomen(rs.getDouble("cir_abdomen"));
                medidas.setCirIliaco(rs.getDouble("cir_iliaco"));
                medidas.setCirQuadril(rs.getDouble("cir_quadril"));
                
                medidas.setPeso(rs.getDouble("peso"));
                medidas.setAltura(rs.getDouble("altura"));
                medidas.setDiametroOsseoPunho(rs.getDouble("diametro_osseo_punho"));
                medidas.setDiametroOsseoFemur(rs.getDouble("diametro_osseo_femur"));
                medidas.setDiametroOsseoUmero(rs.getDouble("diametro_osseo_umero"));
                medidas.setBioimpedancia(rs.getDouble("bioimpedancia"));
                medidas.setPercentualGorduraAtual(rs.getDouble("percen_gordura_atual"));
                medidas.setPercentualGorduraAlvo(rs.getDouble("percen_gordura_alvo"));
            } 
            	return medidas;
    }
	
	/**
	 * Altera os dados de um cliente no banco de dados usando o codAvaliação como chave da alteração
	 * @param medidas objeto a ser salvo
	 * @throws Exception
	 */
	public void alterarMedidasNoBanco(ModelMedidas medidas) throws Exception{
      String sql = "update  medidas set formula_usada=?,dc_tricepsAmostra1=?, dc_tricepsAmostra2=?,dc_tricepsAmostra3=?,"
              + " dc_triceps=?, dc_biceps_amostra1=?, dc_biceps_amostra2=?, dc_biceps_amostra3=?, dc_biceps=?,"
              + "dc_subescapular_amostra1=?, dc_subescapular_amostra2=?, dc_subescapular_amostra3=?, dc_subescapular=?,"
              + "dc_peitora_amostra1=?, dc_peitora_amostra2=?, dc_peitora_amostra3=?, dc_peitoral=?,"
              + "dc_axilar_amostra1=?, dc_axilar_amostra2=?, dc_axilar_amostra3=?, dc_axilarMedia=?,"
              + "dc_supiliaca_amostra1=?, dc_supiliaca_amostra2=?, dc_supiliaca_amostra3=?, dc_supraIliaca=?,"
              + "dc_abdomem_amostra1=?, dc_abdomem_amostra2=?, dc_abdomem_amostra3=?, dc_abdomen=?,"
              + "dc_coxa_Pollock_Medial_amostra1=?, dc_coxa_Pollock_Medial_amostra2=?, dc_coxa_Pollock_Medial_amostra3=?, dc_Coxa_Pollock_Medial=?,"
              + "dc_Coxa_Guedes_Prox_amostra1=?, dc_Coxa_Guedes_Prox_amostra2=?, dc_Coxa_Guedes_Prox_amostra3=?, dc_Coxa_Guedes_Prox=?,"
              + "dc_panturrilha_amostra1=?, dc_panturrilha_amostra2=?, dc_panturrilha_amostra3=?, dc_panturrilha=?,"
              + "soma_dobras=?,cir_cintura=?,cir_abdomen=?,cir_iliaco=?,"
              + "cir_quadril=?,peso=?,altura=?,diametro_osseo_punho=?,diametro_osseo_femur=?,diametro_osseo_umero=?,bioimpedancia=?, "
              + "percen_gordura_atual=?, percen_gordura_alvo=?  where cod_avaliacao=? " ;
        
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setString(1, medidas.getFormula_usada());
            pst.setDouble(2, medidas.getAmostra1DcTriceps());
            pst.setDouble(3, medidas.getAmostra2DcTriceps());
            pst.setDouble(4, medidas.getAmostra3DcTriceps());
            pst.setDouble(5, medidas.getDcTriceps());
            pst.setDouble(6, medidas.getAmostra1DcBiceps());
            pst.setDouble(7, medidas.getAmostra2DcBiceps());
            pst.setDouble(8, medidas.getAmostra3DcBiceps());
            pst.setDouble(9, medidas.getDcBiceps());
            pst.setDouble(10, medidas.getAmostra1DcSubescapular());
            pst.setDouble(11, medidas.getAmostra2DcSubescapular());
            pst.setDouble(12, medidas.getAmostra3DcSubescapular());
            pst.setDouble(13, medidas.getDcSubescapular());
            pst.setDouble(14, medidas.getAmostra1DcPeitoral());
            pst.setDouble(15, medidas.getAmostra2DcPeitoral());
            pst.setDouble(16, medidas.getAmostra3DcPeitoral());
            pst.setDouble(17, medidas.getDcPeitoral());
            pst.setDouble(18, medidas.getAmostra1DcAxilarMedia());
            pst.setDouble(19, medidas.getAmostra2DcAxilarMedia());
            pst.setDouble(20, medidas.getAmostra3DcAxilarMedia());
            pst.setDouble(21, medidas.getDcAxilarMedia());
            pst.setDouble(22, medidas.getAmostra1DcSupraIliaca());
            pst.setDouble(23, medidas.getAmostra2DcSupraIliaca());
            pst.setDouble(24, medidas.getAmostra3DcSupraIliaca());
            pst.setDouble(25, medidas.getDcSupraIliaca());
            pst.setDouble(26, medidas.getAmostra1DcAbdomen());
            pst.setDouble(27, medidas.getAmostra2DcAbdomen());
            pst.setDouble(28, medidas.getAmostra3DcAbdomen());
            pst.setDouble(29, medidas.getDcAbdomen());
            pst.setDouble(30, medidas.getAmostra1DcCoxaPollockMedial());
            pst.setDouble(31, medidas.getAmostra2DcCoxaPollockMedial());
            pst.setDouble(32, medidas.getAmostra3DcCoxaPollockMedial());
            pst.setDouble(33, medidas.getDcCoxaPollockMedial());
            pst.setDouble(34, medidas.getAmostra1DcCoxaGuedesProx());
            pst.setDouble(35, medidas.getAmostra2DcCoxaGuedesProx());
            pst.setDouble(36, medidas.getAmostra3DcCoxaGuedesProx());
            pst.setDouble(37, medidas.getDcCoxaGuedesProx());
            pst.setDouble(38, medidas.getAmostra1DcPanturrurrilha());
            pst.setDouble(39, medidas.getAmostra2DcPanturrurrilha());
            pst.setDouble(40, medidas.getAmostra3DcPanturrurrilha());
            pst.setDouble(41, medidas.getDcPanturrilha());
            pst.setDouble(42, medidas.getSomaDobras());
            pst.setDouble(43, medidas.getCirCintura());
            pst.setDouble(44, medidas.getCirAbdomen());
            pst.setDouble(45, medidas.getCirIliaco());
            pst.setDouble(46, medidas.getCirQuadril());
            pst.setDouble(47, medidas.getPeso());
            pst.setDouble(48, medidas.getAltura());
            pst.setDouble(49, medidas.getDiametroOsseoPunho());
            pst.setDouble(50, medidas.getDiametroOsseoFemur());
            pst.setDouble(51, medidas.getDiametroOsseoUmero());
            pst.setDouble(52, medidas.getBioimpedancia());
            pst.setDouble(53, medidas.getPercentualGorduraAtual());
            pst.setDouble(54, medidas.getPercentualGorduraAlvo());
            pst.setInt(55, medidas.getCodAvaliacao());
            pst.executeUpdate();
            connection.commit();
        
    }
	
	public void alterarPeso(Double peso, int codAvaliacao) throws Exception {
        String sql = "update medidas set peso=? where cod_avaliacao=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setDouble(1, peso);
            pst.setInt(2, codAvaliacao);
            pst.executeUpdate();
            connection.commit();
        
    }
    
    
        
}
