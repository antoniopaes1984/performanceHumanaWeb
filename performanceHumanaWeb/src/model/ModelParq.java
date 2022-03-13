package model;

public class ModelParq {
	private int codParq;
    private int codAvaliacao;
    private String pergunta1;
    private String pergunta2;
    private String pergunta3;
    private String pergunta4;
    private String pergunta5;
    private String pergunta6;
    private String pergunta7;
    private String situacao;
    
    public ModelParq() {
    	
    }
    
	public ModelParq(int codAvaliacao, String pergunta1, String pergunta2, String pergunta3, String pergunta4,
			String pergunta5, String pergunta6, String pergunta7, String situacao) {
		this.codAvaliacao = codAvaliacao;
		this.pergunta1 = pergunta1;
		this.pergunta2 = pergunta2;
		this.pergunta3 = pergunta3;
		this.pergunta4 = pergunta4;
		this.pergunta5 = pergunta5;
		this.pergunta6 = pergunta6;
		this.pergunta7 = pergunta7;
		this.situacao = situacao;
	}
	public int getCodParq() {
		return codParq;
	}
	public void setCodParq(int codParq) {
		this.codParq = codParq;
	}
	public int getCodAvaliacao() {
		return codAvaliacao;
	}
	public void setCodAvaliacao(int codAvaliacao) {
		this.codAvaliacao = codAvaliacao;
	}
	public String getPergunta1() {
		return pergunta1;
	}
	public void setPergunta1(String pergunta1) {
		this.pergunta1 = pergunta1;
	}
	public String getPergunta2() {
		return pergunta2;
	}
	public void setPergunta2(String pergunta2) {
		this.pergunta2 = pergunta2;
	}
	public String getPergunta3() {
		return pergunta3;
	}
	public void setPergunta3(String pergunta3) {
		this.pergunta3 = pergunta3;
	}
	public String getPergunta4() {
		return pergunta4;
	}
	public void setPergunta4(String pergunta4) {
		this.pergunta4 = pergunta4;
	}
	public String getPergunta5() {
		return pergunta5;
	}
	public void setPergunta5(String pergunta5) {
		this.pergunta5 = pergunta5;
	}
	public String getPergunta6() {
		return pergunta6;
	}
	public void setPergunta6(String pergunta6) {
		this.pergunta6 = pergunta6;
	}
	public String getPergunta7() {
		return pergunta7;
	}
	public void setPergunta7(String pergunta7) {
		this.pergunta7 = pergunta7;
	}
	public String getSituacao() {
		return situacao;
	}
	public void setSituacao(String situacao) {
		this.situacao = situacao;
	}
    
    
}
