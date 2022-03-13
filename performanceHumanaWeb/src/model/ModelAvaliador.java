package model;

public class ModelAvaliador {
	
	private int codAvaliador;
	private int codUsuario;
	private String nomeAvaliador;
	private String telefoneAvaliador;
	private String instagram;
	private String facebook;
	private String especializacao;
	private String site;
	private String cref;
	private int diasParaReavaliação;
	public int getCodAvaliador() {
		return codAvaliador;
	}
	public void setCodAvaliador(int codAvaliador) {
		this.codAvaliador = codAvaliador;
	}
	public int getCodUsuario() {
		return codUsuario;
	}
	public void setCodUsuario(int codUsuario) {
		this.codUsuario = codUsuario;
	}
	
	
	public String getEspecializacao() {
		return especializacao;
	}
	public void setEspecializacao(String especializacao) {
		this.especializacao = especializacao;
	}
	public String getNomeAvaliador() {
		return nomeAvaliador;
	}
	public void setNomeAvaliador(String nomeAvaliador) {
		this.nomeAvaliador = nomeAvaliador;
	}
	public String getTelefoneAvaliador() {
		return telefoneAvaliador;
	}
	public void setTelefoneAvaliador(String telefoneAvaliador) {
		this.telefoneAvaliador = telefoneAvaliador;
	}
	public String getInstagram() {
		return instagram;
	}
	public void setInstagram(String instagram) {
		this.instagram = instagram;
	}
	public String getFacebook() {
		return facebook;
	}
	public void setFacebook(String facebook) {
		this.facebook = facebook;
	}
	
	public String getSite() {
		return site;
	}
	public void setSite(String site) {
		this.site = site;
	}
	public String getCref() {
		return cref;
	}
	public void setCref(String cref) {
		this.cref = cref;
	}
	public int getDiasParaReavaliação() {
		return diasParaReavaliação;
	}
	public void setDiasParaReavaliação(int diasParaReavaliação) {
		this.diasParaReavaliação = diasParaReavaliação;
	}
	
	
	

}
