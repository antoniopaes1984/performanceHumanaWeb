package model;

public class ModelAnamnese {
	private int codAnamnese;
    private int codAvaliacao;
    private String atividadeFisicaAtual;
    private String atividadeFisicaPretendida;
    private String objetivo;
    private String fumante;
    private String observacoes;
    private String historicoMedicoPessoal;
    private String historicoMedicoFamiliar;
    private String dorLesao;
    private String pressaoArterial;
    private String pressaoSistolica;
    private String pressaoDiastolica;
    private String classificacaoPressaoArterial;
    private String oximetria;
    private String classificacaoOximetria;
    private String frequenciaCardiacaRepouso;
    private double frequenciaCardiacaMax;
    private double frequenciaCardiacaReserva;
    private String disponibilidade;
    private String situacao;
    private int glicemia;
    private String resultaGlicemia;
    private int triglicerideo;
    private String resulta_triglicerideo;
    private int colesterolTotal;
    private String resulta_colesterol;
    private int hdl;
    private String resulta_hdl;
    private int ldl;
    private String resulta_ldl;
    private int vldl;
    private String resulta_vldl;
    
    public ModelAnamnese() {
    	
    }
    
    
	public ModelAnamnese(int codAvaliacao, String atividadeFisicaAtual, String atividadeFisicaPretendida,
			String objetivo, String fumante, String observacoes, String historicoMedicoPessoal,
			String historicoMedicoFamiliar, String dorLesao, String pressaoArterial,
			String classificacaoPressaoArterial, String oximetria, String classificacaoOximetria,
			String frequenciaCardiacaRepouso, double frequenciaCardiacaMax, double frequenciaCardiacaReserva,
			String disponibilidade, String situacao, int glicemia, String resultaGlicemia, int triglicerideo,
			String resulta_triglicerideo, int colesterolTotal, String resulta_colesterol, int hdl, String resulta_hdl,
			int ldl, String resulta_ldl, int vldl, String resulta_vldl) {
		this.codAvaliacao = codAvaliacao;
		this.atividadeFisicaAtual = atividadeFisicaAtual;
		this.atividadeFisicaPretendida = atividadeFisicaPretendida;
		this.objetivo = objetivo;
		this.fumante = fumante;
		this.observacoes = observacoes;
		this.historicoMedicoPessoal = historicoMedicoPessoal;
		this.historicoMedicoFamiliar = historicoMedicoFamiliar;
		this.dorLesao = dorLesao;
		this.pressaoArterial = pressaoArterial;
		this.classificacaoPressaoArterial = classificacaoPressaoArterial;
		this.oximetria = oximetria;
		this.classificacaoOximetria = classificacaoOximetria;
		this.frequenciaCardiacaRepouso = frequenciaCardiacaRepouso;
		this.frequenciaCardiacaMax = frequenciaCardiacaMax;
		this.frequenciaCardiacaReserva = frequenciaCardiacaReserva;
		this.disponibilidade = disponibilidade;
		this.situacao = situacao;
		this.glicemia = glicemia;
		this.resultaGlicemia = resultaGlicemia;
		this.triglicerideo = triglicerideo;
		this.resulta_triglicerideo = resulta_triglicerideo;
		this.colesterolTotal = colesterolTotal;
		this.resulta_colesterol = resulta_colesterol;
		this.hdl = hdl;
		this.resulta_hdl = resulta_hdl;
		this.ldl = ldl;
		this.resulta_ldl = resulta_ldl;
		this.vldl = vldl;
		this.resulta_vldl = resulta_vldl;
	}
	

	public int getCodAnamnese() {
		return codAnamnese;
	}
	public void setCodAnamnese(int codAnamnese) {
		this.codAnamnese = codAnamnese;
	}
	public int getCodAvaliacao() {
		return codAvaliacao;
	}
	public void setCodAvaliacao(int codAvaliacao) {
		this.codAvaliacao = codAvaliacao;
	}
	public String getAtividadeFisicaAtual() {
		return atividadeFisicaAtual;
	}
	public void setAtividadeFisicaAtual(String atividadeFisicaAtual) {
		this.atividadeFisicaAtual = atividadeFisicaAtual;
	}
	public String getAtividadeFisicaPretendida() {
		return atividadeFisicaPretendida;
	}
	public void setAtividadeFisicaPretendida(String atividadeFisicaPretendida) {
		this.atividadeFisicaPretendida = atividadeFisicaPretendida;
	}
	public String getObjetivo() {
		return objetivo;
	}
	public void setObjetivo(String objetivo) {
		this.objetivo = objetivo;
	}
	public String getFumante() {
		return fumante;
	}
	public void setFumante(String fumante) {
		this.fumante = fumante;
	}
	public String getObservacoes() {
		return observacoes;
	}
	public void setObservacoes(String observacoes) {
		this.observacoes = observacoes;
	}
	public String getHistoricoMedicoPessoal() {
		return historicoMedicoPessoal;
	}
	public void setHistoricoMedicoPessoal(String historicoMedicoPessoal) {
		this.historicoMedicoPessoal = historicoMedicoPessoal;
	}
	public String getHistoricoMedicoFamiliar() {
		return historicoMedicoFamiliar;
	}
	public void setHistoricoMedicoFamiliar(String historicoMedicoFamiliar) {
		this.historicoMedicoFamiliar = historicoMedicoFamiliar;
	}
	public String getDorLesao() {
		return dorLesao;
	}
	public void setDorLesao(String dorLesao) {
		this.dorLesao = dorLesao;
	}
	
	public String getPressaoSistolica() {
		return pressaoSistolica;
	}


	public void setPressaoSistolica(String pressaoSistolica) {
		this.pressaoSistolica = pressaoSistolica;
	}


	public String getPressaoDiastolica() {
		return pressaoDiastolica;
	}


	public void setPressaoDiastolica(String pressaoDiastolica) {
		this.pressaoDiastolica = pressaoDiastolica;
	}


	public String getPressaoArterial() {
		return pressaoArterial;
	}
	public void setPressaoArterial(String pressaoArterial) {
		this.pressaoArterial = pressaoArterial;
	}
	public String getClassificacaoPressaoArterial() {
		return classificacaoPressaoArterial;
	}
	public void setClassificacaoPressaoArterial(String classificacaoPressaoArterial) {
		this.classificacaoPressaoArterial = classificacaoPressaoArterial;
	}
	public String getOximetria() {
		return oximetria;
	}
	public void setOximetria(String oximetria) {
		this.oximetria = oximetria;
	}
	public String getClassificacaoOximetria() {
		return classificacaoOximetria;
	}
	public void setClassificacaoOximetria(String classificacaoOximetria) {
		this.classificacaoOximetria = classificacaoOximetria;
	}
	public String getFrequenciaCardiacaRepouso() {
		return frequenciaCardiacaRepouso;
	}
	public void setFrequenciaCardiacaRepouso(String frequenciaCardiacaRepouso) {
		this.frequenciaCardiacaRepouso = frequenciaCardiacaRepouso;
	}
	public double getFrequenciaCardiacaMax() {
		return frequenciaCardiacaMax;
	}
	public void setFrequenciaCardiacaMax(double frequenciaCardiacaMax) {
		this.frequenciaCardiacaMax = frequenciaCardiacaMax;
	}
	public double getFrequenciaCardiacaReserva() {
		return frequenciaCardiacaReserva;
	}
	public void setFrequenciaCardiacaReserva(double frequenciaCardiacaReserva) {
		this.frequenciaCardiacaReserva = frequenciaCardiacaReserva;
	}
	public String getDisponibilidade() {
		return disponibilidade;
	}
	public void setDisponibilidade(String disponibilidade) {
		this.disponibilidade = disponibilidade;
	}
	public String getSituacao() {
		return situacao;
	}
	public void setSituacao(String situacao) {
		this.situacao = situacao;
	}
	public int getGlicemia() {
		return glicemia;
	}
	public void setGlicemia(int glicemia) {
		this.glicemia = glicemia;
	}
	public String getResultaGlicemia() {
		return resultaGlicemia;
	}
	public void setResultaGlicemia(String resultaGlicemia) {
		this.resultaGlicemia = resultaGlicemia;
	}
	public int getTriglicerideo() {
		return triglicerideo;
	}
	public void setTriglicerideo(int triglicerideo) {
		this.triglicerideo = triglicerideo;
	}
	public String getResulta_triglicerideo() {
		return resulta_triglicerideo;
	}
	public void setResulta_triglicerideo(String resulta_triglicerideo) {
		this.resulta_triglicerideo = resulta_triglicerideo;
	}
	public int getColesterolTotal() {
		return colesterolTotal;
	}
	public void setColesterolTotal(int colesterolTotal) {
		this.colesterolTotal = colesterolTotal;
	}
	public String getResulta_colesterol() {
		return resulta_colesterol;
	}
	public void setResulta_colesterol(String resulta_colesterol) {
		this.resulta_colesterol = resulta_colesterol;
	}
	public int getHdl() {
		return hdl;
	}
	public void setHdl(int hdl) {
		this.hdl = hdl;
	}
	public String getResulta_hdl() {
		return resulta_hdl;
	}
	public void setResulta_hdl(String resulta_hdl) {
		this.resulta_hdl = resulta_hdl;
	}
	public int getLdl() {
		return ldl;
	}
	public void setLdl(int ldl) {
		this.ldl = ldl;
	}
	public String getResulta_ldl() {
		return resulta_ldl;
	}
	public void setResulta_ldl(String resulta_ldl) {
		this.resulta_ldl = resulta_ldl;
	}
	public int getVldl() {
		return vldl;
	}
	public void setVldl(int vldl) {
		this.vldl = vldl;
	}
	public String getResulta_vldl() {
		return resulta_vldl;
	}
	public void setResulta_vldl(String resulta_vldl) {
		this.resulta_vldl = resulta_vldl;
	}
    
    
}
