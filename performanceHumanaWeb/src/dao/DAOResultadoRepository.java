package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import connection.SingleConnectionBanco;
import model.ModelResultado;

public class DAOResultadoRepository {
	
	
	private Connection connection;
	
	public DAOResultadoRepository() {
		connection = SingleConnectionBanco.getConnection();
	}

	public void insereDaoResultadoBasico(int codAvaliacao) throws Exception{
        String sql = "insert into resultado (cod_avaliacao) values(?)";
        PreparedStatement pst = connection.prepareStatement(sql);
        pst.setInt(1, codAvaliacao);
        pst.executeUpdate();
        connection.commit();
    }
	
	public void alteraDaoResultado(ModelResultado resultado)throws Exception{
        String sql = "update resultado set peso=?,peso_alvo=?,altura=?,idade=?,"
                + "imc=?,classificacao_imc=?,percentual_gordura=?,class_percen_gordura=?,percentual_gordura_alvo=?,massa_gordura_alvo=?,percentual_gordura_ideal_min=?, percentual_gordura_ideal_max=?,massa_gordura=?,massa_ossea=?,massa_residual=?,"
                + "massa_magra=?,percentual_massa_magra=?,massa_muscular=?,"
                + "percentual_massa_muscular=?,peso_excesso=?,diferenca_peso=?,"
                + "peso_ideal_minimo=?,peso_ideal_maximo=? where cod_avaliacao=?";
        
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setDouble(1, resultado.getPeso());
            pst.setDouble(2, resultado.getPesoAlvo());
            pst.setDouble(3, resultado.getAltura());
            pst.setDouble(4, resultado.getIdade());
            pst.setDouble(5, resultado.getImc());
            pst.setString(6, resultado.getClassificacaoIMC());
            pst.setDouble(7, resultado.getPercentual_gordura());
            pst.setString(8, resultado.getClassificacaoPercentualGordura());
            pst.setDouble(9, resultado.getPercentualGorduraAlvo());
            pst.setDouble(10, resultado.getMassaGorduraAlvo());
            pst.setDouble(11, resultado.getPercentual_gordura_ideal_min());
            pst.setDouble(12, resultado.getPercentual_gordura_ideal_max());
            pst.setDouble(13, resultado.getMassa_gordura());
            pst.setDouble(14, resultado.getMassa_ossea());
            pst.setDouble(15, resultado.getMassa_residual());
            pst.setDouble(16, resultado.getMassa_magra());
            pst.setDouble(17, resultado.getPercentual_massa_magra());
            pst.setDouble(18, resultado.getMassa_muscular());
            pst.setDouble(19, resultado.getPercentual_massa_muscular());
            pst.setDouble(20, resultado.getPeso_excesso());
            pst.setDouble(21, resultado.getDiferenca_peso());
            pst.setDouble(22, resultado.getPesoIdealMinimo());
            pst.setDouble(23, resultado.getPesoIdealMaximo());
            pst.setInt(24, resultado.getCod_avaliacao());
            pst.executeUpdate();
            connection.commit();
        
    }
	
	public ModelResultado pesquisaResultadoPeloCodAvaliacao(int codAvaliacao) throws Exception{
        String sql = "select * from resultado where cod_avaliacao=?";
        
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setInt(1, codAvaliacao);
            ResultSet rs = pst.executeQuery();
            ModelResultado resultado = null;
            while(rs.next()){
                resultado = new ModelResultado();
                resultado.setPeso(rs.getDouble("Peso"));
                resultado.setAltura(rs.getDouble("altura"));
                resultado.setImc(rs.getDouble("imc"));
                resultado.setClassificacaoIMC(rs.getString("classificacao_imc"));
                resultado.setMassa_ossea(rs.getDouble("massa_ossea"));
                resultado.setPercentual_gordura(rs.getDouble("percentual_gordura"));
                resultado.setClassificacaoPercentualGordura(rs.getString("class_percen_gordura"));
                resultado.setMassa_gordura(rs.getDouble("massa_gordura"));
                resultado.setPercentualGorduraAlvo(rs.getDouble("percentual_gordura_alvo"));
                resultado.setMassaGorduraAlvo(rs.getDouble("massa_gordura_alvo"));
                resultado.setDiferenca_peso(rs.getDouble("diferenca_peso"));
                resultado.setPesoAlvo(rs.getDouble("peso_alvo"));
                resultado.setPeso_excesso(rs.getDouble("peso_excesso"));
                resultado.setMassa_magra(rs.getDouble("massa_magra"));
                resultado.setMassa_muscular(rs.getDouble("massa_muscular"));
                resultado.setMassa_residual(rs.getDouble("massa_residual"));
              
            }return resultado;
	}
}
