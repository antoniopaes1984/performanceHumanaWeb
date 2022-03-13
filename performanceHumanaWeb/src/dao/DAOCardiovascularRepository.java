package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import connection.SingleConnectionBanco;
import model.ModelCardiovascular;

public class DAOCardiovascularRepository {
	
	private Connection connection;
	
	public DAOCardiovascularRepository() {
		connection = SingleConnectionBanco.getConnection();
	}
	
	public void inserirTesteCardioBasico (int codAvaliacao)throws Exception{
        String sql = "insert into cardioVascular(cod_avaliacao) values(?)";
        PreparedStatement pst = connection.prepareStatement(sql);
        pst.setInt(1, codAvaliacao);
        pst.executeUpdate();
        connection.commit();
    }
	
	public ModelCardiovascular pesquisaTesteCardio(int codAvaliacao) throws Exception {
        String sql = "select cod_avaliacao, formula_usada, fc_teste, carga_kg, carga_watts,condicao_atual,tempo_minutos,tempo_segundos,velocidade_metro_minuto,velocidadeKmHora, inclinacao_esteira, nivel_atv_fisica ,distancia_metros,peso, vo2CargaLMin, vo2MaxLMin, vo2MaxMlKgMin, kcalMin, metMax,vo2Obtido,vo2Predito, deficitFunciona, classificacao_aha from cardioVascular where cod_avaliacao = ?";

        	PreparedStatement pst = connection.prepareStatement(sql);
            pst.setInt(1, codAvaliacao);
            ResultSet rs = pst.executeQuery();
            ModelCardiovascular testeCardio = null;
            if (rs.next()) {
                testeCardio = new ModelCardiovascular();
                testeCardio.setCodAvaliacao(rs.getInt("cod_avaliacao"));
                testeCardio.setFormulaUsada(rs.getString("formula_usada"));
                testeCardio.setFcTeste(rs.getInt("fc_teste"));
                testeCardio.setCargaKg(rs.getDouble("carga_kg"));
                testeCardio.setCargaWatts(rs.getDouble("carga_watts"));
                testeCardio.setCondicaoAtual(rs.getString("condicao_atual"));
                testeCardio.setTempoMinutos(rs.getInt("tempo_minutos"));
                testeCardio.setTempoSegundos(rs.getInt("tempo_segundos"));
                testeCardio.setVelocidadeMetroMinuto(rs.getDouble("velocidade_metro_minuto"));
                testeCardio.setVelocidadeKmHora(rs.getDouble("velocidadeKmHora"));
                testeCardio.setInclinacaoEsteira(rs.getInt("inclinacao_esteira"));
                testeCardio.setNivelAtvFisica(rs.getInt("nivel_atv_fisica"));
                testeCardio.setDistanciaMetros(rs.getInt("distancia_metros"));
                testeCardio.setPeso(rs.getDouble("peso"));
                testeCardio.setVo2CargaLMin(rs.getDouble("vo2CargaLMin"));
                testeCardio.setVo2MaxLMin(rs.getDouble("vo2MaxLMin")); 
                testeCardio.setVo2maxMlKgMin(rs.getDouble("vo2MaxMlKgMin"));
                testeCardio.setKcalMin(rs.getDouble("kcalMin"));
                testeCardio.setMetMax(rs.getDouble("metMax"));
                testeCardio.setVo2Obtido(rs.getDouble("vo2Obtido"));
                testeCardio.setVo2Predito(rs.getDouble("vo2Predito"));
                testeCardio.setDefictFuncional(rs.getDouble("deficitFunciona"));
                testeCardio.setClassificaoAHA(rs.getString("classificacao_aha"));
            }return testeCardio;
        
    }
	
	public void alterarTesteCardio(ModelCardiovascular testeCardio) throws Exception {
        String sql = "update cardioVascular set formula_usada=?, fc_teste=?, carga_kg=?, carga_watts=?, "
                + "condicao_atual=?,tempo_minutos=?,tempo_segundos=?, velocidade_metro_minuto=?,velocidadeKmHora=?, inclinacao_esteira=?,nivel_atv_fisica=?,distancia_metros=?,"
                + "peso=?, vo2CargaLMin=?, vo2MaxMlKgMin=?, vo2MaxLMin=?, kcalMin=?, metMax=?, "
                + "vo2Obtido=?, vo2Predito=?, deficitFunciona=?, classificacao_aha=? where cod_avaliacao=?";
        
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setString(1, testeCardio.getFormulaUsada());
            pst.setInt(2, testeCardio.getFcTeste());
            pst.setDouble(3, testeCardio.getCargaKg());
            pst.setDouble(4, testeCardio.getCargaWatts());
            pst.setString(5, testeCardio.getCondicaoAtual());
            pst.setInt(6, testeCardio.getTempoMinutos());
            pst.setInt(7, testeCardio.getTempoSegundos());
            pst.setDouble(8, testeCardio.getVelocidadeMetroMinuto());
            pst.setDouble(9, testeCardio.getVelocidadeKmHora());
            pst.setInt(10, testeCardio.getInclinacaoEsteira());
            pst.setInt(11, testeCardio.getNivelAtvFisica());
            pst.setInt(12, testeCardio.getDistanciaMetros());
            pst.setDouble(13, testeCardio.getPeso());
            pst.setDouble(14, testeCardio.getVo2CargaLMin());
            pst.setDouble(15, testeCardio.getVo2maxMlKgMin());
            pst.setDouble(16, testeCardio.getVo2MaxLMin());
            pst.setDouble(17, testeCardio.getKcalMin());
            pst.setDouble(18, testeCardio.getMetMax());
            pst.setDouble(19, testeCardio.getVo2Obtido());
            pst.setDouble(20, testeCardio.getVo2Predito());
            pst.setDouble(21, testeCardio.getDefictFuncional());
            pst.setString(22, testeCardio.getClassificaoAHA());
            pst.setInt(23, testeCardio.getCodAvaliacao());
            pst.executeUpdate();
            connection.commit();
        
    }
	
	public void alterarPeso(double peso, int codAvaliacao) throws Exception{
		String sql = "update  cardioVascular set peso=? where cod_avaliacao=?";
		PreparedStatement pst = connection.prepareStatement(sql);
		pst.setDouble(1, peso);
		pst.setInt(2, codAvaliacao);
		pst.executeUpdate();
		connection.commit();
	}
	
	

}
