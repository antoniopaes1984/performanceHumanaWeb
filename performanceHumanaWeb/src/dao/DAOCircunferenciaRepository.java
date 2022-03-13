package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import connection.SingleConnectionBanco;
import model.ModelCircunferencia;

public class DAOCircunferenciaRepository {
	
	private Connection connection;
	
	public DAOCircunferenciaRepository() {
		connection = SingleConnectionBanco.getConnection();
	}
	
	public void inserirCircunferenciaBanco(int codAvaliacao)throws Exception{
        String sql = "insert into circunferencia (cod_avaliacao) values (?)";
        
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setInt(1, codAvaliacao);
            pst.executeUpdate();
            connection.commit();
        
    }
	
	 public void alterarCircunferenciaPeloCodAvaliacao (ModelCircunferencia circunferencia) throws Exception {
	      String sql = "update  circunferencia set cir_ombro=?,cir_torax=?,"
	              + "cir_braco_dir_relax=?,cir_braco_esq_relax=?,cir_braco_dir_cont=?,cir_braco_esq_cont=?,cir_antebraco_dir=?,"
	              + "cir_antebraco_esq=?,cir_cintura=?,cir_abdomen=?,cir_iliaco=?,"
	              + "cir_quadril=?,cir_coxa_prox_dir=?,cir_coxa_prox_esq=?,"
	              + "cir_coxa_media_dir=?,cir_coxa_media_esq=?,cir_coxa_distal_dir=?,"
	              + "cir_coxa_distal_esq=?,cir_panturrilha_dir=?,cir_panturrilha_esq=?,"
	              + "relacao_cintura_quadril=?,class_rel_cin_qua=?,relacao_cir_cintura=?,"
	              + "class_rel_cir_cintura=?, relacao_cintura_estatura=?,class_rel_cint_est=?,"
	              + "indice_conicidade=?,class_ind_conicidade=? where cod_avaliacao=? " ;
	        
	            PreparedStatement pst = connection.prepareStatement(sql);
	            pst.setDouble(1, circunferencia.getCirOmbro());
	            pst.setDouble(2, circunferencia.getCirTorax());
	            pst.setDouble(3, circunferencia.getCirBracoDirRelax());
	            pst.setDouble(4, circunferencia.getCirBracoEsqRelax());
	            pst.setDouble(5, circunferencia.getCirBracoDirCont());
	            pst.setDouble(6, circunferencia.getCirBracoEsqCont());
	            pst.setDouble(7, circunferencia.getCirAntebracoDir());
	            pst.setDouble(8, circunferencia.getCirAntebracoEsq());
	            pst.setDouble(9, circunferencia.getCirCintura());
	            pst.setDouble(10, circunferencia.getCirAbdomen());
	            pst.setDouble(11, circunferencia.getCirIliaco());
	            pst.setDouble(12, circunferencia.getCirQuadril());
	            pst.setDouble(13, circunferencia.getCirCoxaProxDir());
	            pst.setDouble(14, circunferencia.getCirCoxaProxEsq());
	            pst.setDouble(15, circunferencia.getCirCoxaMediaDir());
	            pst.setDouble(16, circunferencia.getCirCoxaMediaEsq());
	            pst.setDouble(17, circunferencia.getCirCoxaDistalDir());
	            pst.setDouble(18, circunferencia.getCirCoxaDistalEsq());
	            pst.setDouble(19, circunferencia.getCirPanturrilhaDir());
	            pst.setDouble(20, circunferencia.getCirPanturrilhaEsq());
	            pst.setDouble(21, circunferencia.getRelacaoCinturaQuadril());
	            pst.setString(22, circunferencia.getClassRelacaoCinturaQuadril());
	            pst.setDouble(23, circunferencia.getRelacaoCirCintura());
	            pst.setString(24, circunferencia.getClassRelacaoCirCintura());
	            pst.setDouble(25, circunferencia.getRelacaoCinturaEstatura());
	            pst.setString(26, circunferencia.getClassRelacaoCinturaEstatura());
	            pst.setDouble(27, circunferencia.getIndiceConicidade());
	            pst.setString(28, circunferencia.getClassIndiceConicidade());
	            pst.setInt(29, circunferencia.getCodAvaliacao());
	            pst.executeUpdate();
	            connection.commit();
	    }
	 
	 public ModelCircunferencia pesquisarCircunferenciaPeloCodAvaliacao(int codAvaliacao) throws Exception {
	        String sql = "select cod_avaliacao,cir_ombro,cir_torax,"
	              + "cir_braco_dir_relax,cir_braco_esq_relax,cir_braco_dir_cont,cir_braco_esq_cont,cir_antebraco_dir,"
	              + "cir_antebraco_esq,cir_cintura,cir_abdomen,cir_iliaco,"
	              + "cir_quadril,cir_coxa_prox_dir,cir_coxa_prox_esq,"
	              + "cir_coxa_media_dir,cir_coxa_media_esq,cir_coxa_distal_dir"
	              + ",cir_coxa_distal_esq,cir_panturrilha_dir,cir_panturrilha_esq,"
	              + "relacao_cintura_quadril,class_rel_cin_qua,relacao_cir_cintura,"
	              + "class_rel_cir_cintura, relacao_cintura_estatura,class_rel_cint_est,"
	              + "indice_conicidade,class_ind_conicidade"
	              + " from circunferencia where cod_avaliacao = ?";
	        
	            PreparedStatement pst = connection.prepareStatement(sql);
	            pst.setInt(1, codAvaliacao);
	            ResultSet rs = pst.executeQuery();
	            ModelCircunferencia circunferencia = null;
	            if (rs.next()) {
	                circunferencia = new ModelCircunferencia();
	                circunferencia.setCodAvaliacao(rs.getInt("cod_avaliacao"));
	                circunferencia.setCirOmbro(rs.getDouble("cir_ombro"));
	                circunferencia.setCirTorax(rs.getDouble("cir_torax"));
	                circunferencia.setCirBracoDirRelax(rs.getDouble("cir_braco_dir_relax"));
	                circunferencia.setCirBracoEsqRelax(rs.getDouble("cir_braco_esq_relax"));
	                circunferencia.setCirBracoDirCont(rs.getDouble("cir_braco_dir_cont"));
	                circunferencia.setCirBracoEsqCont(rs.getDouble("cir_braco_esq_cont"));
	                circunferencia.setCirAntebracoDir(rs.getDouble("cir_antebraco_dir"));
	                circunferencia.setCirAntebracoEsq(rs.getDouble("cir_antebraco_esq"));
	                circunferencia.setCirCintura(rs.getDouble("cir_cintura"));
	                circunferencia.setCirAbdomen(rs.getDouble("cir_abdomen"));
	                circunferencia.setCirIliaco(rs.getDouble("cir_iliaco"));
	                circunferencia.setCirQuadril(rs.getDouble("cir_quadril"));
	                circunferencia.setCirCoxaProxDir(rs.getDouble("cir_coxa_prox_dir"));
	                circunferencia.setCirCoxaProxEsq(rs.getDouble("cir_coxa_prox_esq"));
	                circunferencia.setCirCoxaMediaDir(rs.getDouble("cir_coxa_media_dir"));
	                circunferencia.setCirCoxaMediaEsq(rs.getDouble("cir_coxa_media_esq"));
	                circunferencia.setCirCoxaDistalDir(rs.getDouble("cir_coxa_distal_dir"));
	                circunferencia.setCirCoxaDistalEsq(rs.getDouble("cir_coxa_distal_esq"));
	                circunferencia.setCirPanturrilhaDir(rs.getDouble("cir_panturrilha_dir"));
	                circunferencia.setCirPanturrilhaEsq(rs.getDouble("cir_panturrilha_esq"));
	                circunferencia.setRelacaoCinturaQuadril(rs.getDouble("relacao_cintura_quadril"));
	                circunferencia.setClassRelacaoCinturaQuadril(rs.getString("class_rel_cin_qua"));
	                circunferencia.setRelacaoCirCintura(rs.getDouble("relacao_cir_cintura"));
	                circunferencia.setClassRelacaoCirCintura(rs.getString("class_rel_cir_cintura"));
	                circunferencia.setRelacaoCinturaEstatura(rs.getDouble("relacao_cintura_estatura"));
	                circunferencia.setClassRelacaoCinturaEstatura(rs.getString("class_rel_cint_est"));
	                circunferencia.setIndiceConicidade(rs.getDouble("indice_conicidade"));
	                circunferencia.setClassIndiceConicidade(rs.getString("class_ind_conicidade"));
	            } return circunferencia;
	       
	    }

}
