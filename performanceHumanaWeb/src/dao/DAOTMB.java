package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import connection.SingleConnectionBanco;
import model.ModelTMB;

public class DAOTMB {
	
	private Connection connection;
	
	public DAOTMB() {
		connection = SingleConnectionBanco.getConnection();
	}
	
	public void inserirTmb(int codAvaliacao) throws Exception {
        String sql = "insert into tmb (cod_avaliacao) values(?)";
        
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setInt(1, codAvaliacao);
            pst.executeUpdate();
            connection.commit();
        
    }
	
	public void alterarTmb(ModelTMB modelTmb) throws Exception {
        String sql = "update tmb set protocolo_tmb=?,tmb=? where cod_avaliacao=?";
        
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setString(1, modelTmb.getProtocoloTmb());
            pst.setDouble(2, modelTmb.getTmb());
            pst.setInt(3, modelTmb.getCodAvaliacao());
            pst.executeUpdate();
            connection.commit();
    }
	
	public ModelTMB pesquisarTmb(int codAvaliacao) throws Exception {
        String sql = "select * from tmb where cod_avaliacao = ?";
        
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setInt(1, codAvaliacao);
            ResultSet rs = pst.executeQuery();
            ModelTMB taxaMetabolicaBasal = null;
            if (rs.next()) {
              taxaMetabolicaBasal = new ModelTMB();
              taxaMetabolicaBasal.setCodAvaliacao(rs.getInt("cod_avaliacao"));
              taxaMetabolicaBasal.setProtocoloTmb(rs.getString("protocolo_tmb"));
              taxaMetabolicaBasal.setTmb(rs.getDouble("tmb"));
            }return taxaMetabolicaBasal;
        
    }

}
