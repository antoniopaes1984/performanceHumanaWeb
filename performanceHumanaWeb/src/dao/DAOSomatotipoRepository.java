package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import connection.SingleConnectionBanco;
import model.ModelSomatotipo;

public class DAOSomatotipoRepository {
	
	private Connection connection;
	
	public DAOSomatotipoRepository() {
		connection = SingleConnectionBanco.getConnection();
	}
	
	public void inserirSomatotipo(int codAvaliacao) throws Exception{
        String sql = "insert into somatotipo (cod_avaliacao) values (?)";
        	
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setInt(1, codAvaliacao);
            pst.executeUpdate();
            connection.commit();
    }
	
	public ModelSomatotipo pesquisaSomatotipo(int codAvaliacao)throws Exception{
        String sql = "select * from somatotipo where cod_avaliacao = ?";
           PreparedStatement pst = connection.prepareStatement(sql);
           pst.setInt(1, codAvaliacao);
           ResultSet rs = pst.executeQuery();
           ModelSomatotipo somatotipo = null;
           if (rs.next()) {
               somatotipo = new ModelSomatotipo();
               somatotipo.setDcTriceps(rs.getDouble("dcTriceps"));
               somatotipo.setDcSubEscapular(rs.getDouble("dcSubEscapular"));
               somatotipo.setDcSupraIliaca(rs.getDouble("dcSupraIliaca"));
               somatotipo.setDcPanturrilha(rs.getDouble("dcPanturrilha"));
               somatotipo.setCircBracoDireitoRelax(rs.getDouble("cirBracoDirRelax"));
               somatotipo.setCircPanturrilha(rs.getDouble("cirPanturrilha"));
               somatotipo.setDiamUmero(rs.getDouble("diametroOsseoUmero"));
               somatotipo.setDiamFemur(rs.getDouble("diametroOsseoFemur"));
               somatotipo.setPeso(rs.getDouble("peso"));
               somatotipo.setAltura(rs.getDouble("altura"));
               somatotipo.setSomatoTipoEndomorfia(rs.getDouble("somatoTipo_endomorfia"));
               somatotipo.setSomatoTipoMesomorfia(rs.getDouble("somatoTipo_mesomorfia"));
               somatotipo.setSomatoTipoEctomorfia(rs.getDouble("somatoTipo_ectomorfia"));
               somatotipo.setClassificacaoSomatotipo(rs.getString("classifacao_somatotipo"));
               somatotipo.setAcaoSomatotipo(rs.getString("acao_somatotipo"));
           }return somatotipo;
      
    }
	
	public void alterarSomatotipo(ModelSomatotipo somatotipo) throws Exception {
        String sql = "update somatotipo set  dcTriceps=?,dcSubEscapular=?,dcSupraIliaca=?,dcPanturrilha=?,"
                + "cirBracoDirRelax=?,cirPanturrilha=?,diametroOsseoUmero=?,diametroOsseoFemur=?, peso=?, altura=?,"
                + "somatoTipo_endomorfia=?, somatoTipo_mesomorfia=?, somatoTipo_ectomorfia=?, classifacao_somatotipo=?,"
                + " acao_somatotipo=? where cod_avaliacao = ?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setDouble(1, somatotipo.getDcTriceps());
            pst.setDouble(2, somatotipo.getDcSubEscapular());
            pst.setDouble(3, somatotipo.getDcSupraIliaca());
            pst.setDouble(4, somatotipo.getDcPanturrilha());
            pst.setDouble(5, somatotipo.getCircBracoDireitoRelax());
            pst.setDouble(6, somatotipo.getCircPanturrilha());
            pst.setDouble(7, somatotipo.getDiamUmero());
            pst.setDouble(8, somatotipo.getDiamFemur());
            pst.setDouble(9, somatotipo.getPeso());
            pst.setDouble(10, somatotipo.getAltura());
            pst.setDouble(11, somatotipo.getSomatoTipoEndomorfia());
            pst.setDouble(12, somatotipo.getSomatoTipoMesomorfia());
            pst.setDouble(13, somatotipo.getSomatoTipoEctomorfia());
            pst.setString(14, somatotipo.getClassificacaoSomatotipo());
            pst.setString(15, somatotipo.getAcaoSomatotipo());
            pst.setInt(16, somatotipo.getCod_avaliacao());
            pst.executeUpdate();
            connection.commit();
       
    }
}
