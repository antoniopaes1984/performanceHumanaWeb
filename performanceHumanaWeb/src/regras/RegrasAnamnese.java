package regras;

public class RegrasAnamnese {
	
	public String retornaPressaoSistolica (String pressaoArterial) throws Exception{
		String pressaoArterialRecebida = pressaoArterial;
		String[] s = pressaoArterialRecebida.split("x");
		 String pressãoSistolica = s[0];
		 return pressãoSistolica;
	}
	
	public String retornaPressaoDiastolica(String pressaoArterial) throws Exception{
		String pressaoArterialRecebida = pressaoArterial;
		String[] s = pressaoArterialRecebida.split("x");
		 String pressãoSistolica = s[1];
		 return pressãoSistolica;
	}
	
	public boolean verificaSePressaoArterialFoiSelecionada(String pressaoArterial)throws Exception{
		if(pressaoArterial.equals("Não informada")) {
			return false;
		}else {
			return true;
		}
	}

	
}
