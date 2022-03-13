package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import connection.SingleConnectionBanco;
import model.ModelNeuromuscular;

public class DAONeuromuscularRepository {
	
	private Connection connection;
	
	public DAONeuromuscularRepository() {
		connection = SingleConnectionBanco.getConnection();
	}
	
	
	public void inserirAvaliacaoNeuroMuscularBasica(int codAvaliacao) throws Exception{
        String sql = "insert into avaliacaoneuromuscular (cod_avaliacao) values (?)";
        
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setInt(1, codAvaliacao);
            pst.executeUpdate();
        
    };

    
    public ModelNeuromuscular pesquisaAvaliacaoNeuromuscularCodAvaliacao(int codAvaliacao)throws Exception {
        String sql = "select * from avaliacaoneuromuscular where cod_avaliacao = ?";
        
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setInt(1, codAvaliacao);
            ModelNeuromuscular neuromuscular = null;
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
             neuromuscular = new ModelNeuromuscular();
             neuromuscular.setCodAvaliacao(rs.getInt("cod_avaliacao"));
             neuromuscular.setNumRepetAbdominal(rs.getInt("num_repet_abdominal"));
             neuromuscular.setClassificacaoAbdominal(rs.getString("classificacao_abdominal"));
             neuromuscular.setNumRepetBraquioPeitoral(rs.getInt("num_repet_braquio_peitoral"));
             neuromuscular.setClassificacaoBraquioPeitoral(rs.getString("classificacao_braquio_peitoral"));
             neuromuscular.setAmpliSentarAlcancarComBanco(rs.getInt("ampli_sentar_alcancar_com_banco"));
             neuromuscular.setClassifSentarAlcancarComBanco(rs.getString("classif_sentar_alcancar_com_banco"));
             neuromuscular.setAmpliSentarAlcancarSemBanco(rs.getInt("ampli_sentar_alcancar_sem_banco"));
             neuromuscular.setClassifSentarAlcancarSemBanco(rs.getString("classif_sentar_alcancar_sem_banco"));
             neuromuscular.setPeso(rs.getDouble("peso"));
             neuromuscular.setCargaMaxSupino(rs.getDouble("carga_max_supino"));
             neuromuscular.setCargaMaxRoscaDir(rs.getDouble("carga_max_rosca_dir"));
             neuromuscular.setCargaMaxPuxadaFrente(rs.getDouble("carga_max_puxada_frente"));
             neuromuscular.setCargaMaxLegPress(rs.getDouble("carga_max_leg_press"));
             neuromuscular.setCargaMaxExtensaoJoelho(rs.getDouble("carga_max_extensao_joelho"));
             neuromuscular.setCargaMaxFlexaoJoelho(rs.getDouble("carga_max_flexao_joelho"));
             neuromuscular.setClassificacaoForcaRelativa(rs.getString("classificacao_forca_relativa"));
             neuromuscular.setTrmNomeExer1(rs.getString("trm_nome_exer1"));
             neuromuscular.setTrmPesoLevantadoExer1(rs.getInt("trm_peso_levantado_exer1"));
             neuromuscular.setTrmRepetiExer1(rs.getInt("trm_repeti_exer1"));
             neuromuscular.setTrm1RMExer1(rs.getDouble("trm_1RM_exer1"));
             
             neuromuscular.setTrmNomeExer2(rs.getString("trm_nome_exer2"));
             neuromuscular.setTrmPesoLevantadoExer2(rs.getInt("trm_peso_levantado_exer2"));
             neuromuscular.setTrmRepetiExer2(rs.getInt("trm_repeti_exer2"));
             neuromuscular.setTrm1RMExer2(rs.getDouble("trm_1RM_exer2"));
             
             neuromuscular.setTrmNomeExer3(rs.getString("trm_nome_exer3"));
             neuromuscular.setTrmPesoLevantadoExer3(rs.getInt("trm_peso_levantado_exer3"));
             neuromuscular.setTrmRepetiExer3(rs.getInt("trm_repeti_exer3"));
             neuromuscular.setTrm1RMExer3(rs.getDouble("trm_1RM_exer3"));
             
             neuromuscular.setTrmNomeExer4(rs.getString("trm_nome_exer4"));
             neuromuscular.setTrmPesoLevantadoExer4(rs.getInt("trm_peso_levantado_exer4"));
             neuromuscular.setTrmRepetiExer4(rs.getInt("trm_repeti_exer4"));
             neuromuscular.setTrm1RMExer4(rs.getDouble("trm_1RM_exer4"));
             
            }return neuromuscular;
       
    }

    
    public void alterarAvaliacaoNeuromuscular(ModelNeuromuscular neuromuscular) throws Exception {
        String sql = "update avaliacaoneuromuscular set  num_repet_abdominal=?,"
                + "classificacao_abdominal=?, num_repet_braquio_peitoral=?, classificacao_braquio_peitoral=?,"
                + "ampli_sentar_alcancar_com_banco=?,classif_sentar_alcancar_com_banco=?,ampli_sentar_alcancar_sem_banco=?,"
                + "classif_sentar_alcancar_sem_banco=?, peso=?,carga_max_supino=?,carga_max_rosca_dir=?,carga_max_puxada_frente=?,"
                + "carga_max_leg_press=?,carga_max_extensao_joelho=?,carga_max_flexao_joelho=?,classificacao_forca_relativa=?,"
                + "trm_nome_exer1=?,trm_peso_levantado_exer1=?,trm_repeti_exer1=?,trm_1RM_exer1=?,trm_nome_exer2=?,trm_peso_levantado_exer2=?,"
                + "trm_repeti_exer2=?,trm_1RM_exer2=?,trm_nome_exer3=?,trm_peso_levantado_exer3=?,trm_repeti_exer3=?,"
                + "trm_1RM_exer3=?,trm_nome_exer4=?,trm_peso_levantado_exer4=?,trm_repeti_exer4=?,trm_1RM_exer4=? where cod_avaliacao=?";

        PreparedStatement pst = connection.prepareStatement(sql);
            pst.setInt(1, neuromuscular.getNumRepetAbdominal());
            pst.setString(2, neuromuscular.getClassificacaoAbdominal());
            pst.setInt(3, neuromuscular.getNumRepetBraquioPeitoral());
            pst.setString(4, neuromuscular.getClassificacaoBraquioPeitoral());
            pst.setInt(5, neuromuscular.getAmpliSentarAlcancarComBanco());
            pst.setString(6, neuromuscular.getClassifSentarAlcancarComBanco());
            pst.setInt(7, neuromuscular.getAmpliSentarAlcancarSemBanco());
            pst.setString(8, neuromuscular.getClassifSentarAlcancarSemBanco());
            pst.setDouble(9, neuromuscular.getPeso());
            pst.setDouble(10, neuromuscular.getCargaMaxSupino());
            pst.setDouble(11, neuromuscular.getCargaMaxRoscaDir());
            pst.setDouble(12, neuromuscular.getCargaMaxPuxadaFrente());
            pst.setDouble(13, neuromuscular.getCargaMaxLegPress());
            pst.setDouble(14, neuromuscular.getCargaMaxExtensaoJoelho());
            pst.setDouble(15, neuromuscular.getCargaMaxFlexaoJoelho());
            pst.setString(16, neuromuscular.getClassificacaoForcaRelativa());
            pst.setString(17, neuromuscular.getTrmNomeExer1());
            pst.setInt(18, neuromuscular.getTrmPesoLevantadoExer1());
            pst.setInt(19, neuromuscular.getTrmRepetiExer1());
            pst.setDouble(20, neuromuscular.getTrm1RMExer1());
            
            pst.setString(21, neuromuscular.getTrmNomeExer2());
            pst.setInt(22, neuromuscular.getTrmPesoLevantadoExer2());
            pst.setInt(23, neuromuscular.getTrmRepetiExer2());
            pst.setDouble(24, neuromuscular.getTrm1RMExer2());
            
            pst.setString(25, neuromuscular.getTrmNomeExer3());
            pst.setInt(26, neuromuscular.getTrmPesoLevantadoExer3());
            pst.setInt(27, neuromuscular.getTrmRepetiExer3());
            pst.setDouble(28, neuromuscular.getTrm1RMExer3());
            
            pst.setString(29, neuromuscular.getTrmNomeExer4());
            pst.setInt(30, neuromuscular.getTrmPesoLevantadoExer4());
            pst.setInt(31, neuromuscular.getTrmRepetiExer4());
            pst.setDouble(32, neuromuscular.getTrm1RMExer4());
            pst.setInt(33, neuromuscular.getCodAvaliacao());
            pst.executeUpdate();
        
    }
	
	
	

}
