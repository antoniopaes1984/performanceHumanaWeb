package model;

public class ModelPostural {
	private int codPostural;
    private int codAvaliacao;
   
    
    private boolean visaoDorsalCabecaPescoco5;
    private boolean visaoDorsalCabecaPescoco3;
    private boolean visaoDorsalCabecaPescoco1;
    
    private boolean visaoDorsalOmbros5;
    private boolean visaoDorsalOmbros3;
    private boolean visaoDorsalOmbros1;
    
    private boolean visaoDorsalColuna5;
    private boolean visaoDorsalColuna3;
    private boolean visaoDorsalColuna1;
    
    private boolean visaoDorsalQuadril5;
    private boolean visaoDorsalQuadril3;
    private boolean visaoDorsalQuadril1;
    
    private boolean visaoDorsalJoelhos5;
    private boolean visaoDorsalJoelhos3;
    private boolean visaoDorsalJoelhos1;
    
    private boolean visaoDorsalCalcanhares5;
    private boolean visaoDorsalCalcanhares3;
    private boolean visaoDorsalCalcanhares1;
    
    private boolean visaoDorsalPes5;
    private boolean visaoDorsalPes3;
    private boolean visaoDorsalPes1;
    
    private boolean visaoLateralPescocoPeitora5;
    private boolean visaoLateralPescocoPeitora3;
    private boolean visaoLateralPescocoPeitora1;
    
    private boolean visaoLateralOmbros5;
    private boolean visaoLateralOmbros3;
    private boolean visaoLateralOmbros1;
    
    private boolean visaoLateralTorax5;
    private boolean visaoLateralTorax3;
    private boolean visaoLateralTorax1;
    
    private boolean visaoLateralColunaToracicaCifose5;
    private boolean visaoLateralColunaToracicaCifose3;
    private boolean visaoLateralColunaToracicaCifose1;
    
    private boolean visaoLateralColunaLombossacraLordose5;
    private boolean visaoLateralColunaLombossacraLordose3;
    private boolean visaoLateralColunaLombossacraLordose1;
    
    private boolean visaoLateralTronco5;
    private boolean visaoLateralTronco3;
    private boolean visaoLateralTronco1;
    
    private boolean visaoLateralAbdomen5;
    private boolean visaoLateralAbdomen3;
    private boolean visaoLateralAbdomen1;
    
    private boolean visaoLateralJoelhos5;
    private boolean visaoLateralJoelhos3;
    private boolean visaoLateralJoelhos1;
    
    private double regiaoCabecaPescoco;
    private double regiaoColunaDorsalLombar;
    private double regiaoAbdomenQuadril;
    private double regiaoMembrosInferioers;
    private double indiceCorrecaoPostural;
    
    private String classificacao;
    private String observacoes;
    
    
    
	public ModelPostural() {
		
	}
	public ModelPostural(int codAvaliacao, boolean visaoDorsalCabecaPescoco5, boolean visaoDorsalCabecaPescoco3,
			boolean visaoDorsalCabecaPescoco1, boolean visaoDorsalOmbros5, boolean visaoDorsalOmbros3,
			boolean visaoDorsalOmbros1, boolean visaoDorsalColuna5, boolean visaoDorsalColuna3,
			boolean visaoDorsalColuna1, boolean visaoDorsalQuadril5, boolean visaoDorsalQuadril3,
			boolean visaoDorsalQuadril1, boolean visaoDorsalJoelhos5, boolean visaoDorsalJoelhos3,
			boolean visaoDorsalJoelhos1, boolean visaoDorsalCalcanhares5, boolean visaoDorsalCalcanhares3,
			boolean visaoDorsalCalcanhares1, boolean visaoDorsalPes5, boolean visaoDorsalPes3, boolean visaoDorsalPes1,
			boolean visaoLateralPescocoPeitora5, boolean visaoLateralPescocoPeitora3,
			boolean visaoLateralPescocoPeitora1, boolean visaoLateralOmbros5, boolean visaoLateralOmbros3,
			boolean visaoLateralOmbros1, boolean visaoLateralTorax5, boolean visaoLateralTorax3,
			boolean visaoLateralTorax1, boolean visaoLateralColunaToracicaCifose5,
			boolean visaoLateralColunaToracicaCifose3, boolean visaoLateralColunaToracicaCifose1,
			boolean visaoLateralColunaLombossacraLordose5, boolean visaoLateralColunaLombossacraLordose3,
			boolean visaoLateralColunaLombossacraLordose1, boolean visaoLateralTronco5, boolean visaoLateralTronco3,
			boolean visaoLateralTronco1, boolean visaoLateralAbdomen5, boolean visaoLateralAbdomen3,
			boolean visaoLateralAbdomen1, boolean visaoLateralJoelhos5, boolean visaoLateralJoelhos3,
			boolean visaoLateralJoelhos1, double regiaoCabecaPescoco, double regiaoColunaDorsalLombar,
			double regiaoAbdomenQuadril, double regiaoMembrosInferioers, double indiceCorrecaoPostural,
			String classificacao, String observacoes) {
		this.codAvaliacao = codAvaliacao;
		this.visaoDorsalCabecaPescoco5 = visaoDorsalCabecaPescoco5;
		this.visaoDorsalCabecaPescoco3 = visaoDorsalCabecaPescoco3;
		this.visaoDorsalCabecaPescoco1 = visaoDorsalCabecaPescoco1;
		this.visaoDorsalOmbros5 = visaoDorsalOmbros5;
		this.visaoDorsalOmbros3 = visaoDorsalOmbros3;
		this.visaoDorsalOmbros1 = visaoDorsalOmbros1;
		this.visaoDorsalColuna5 = visaoDorsalColuna5;
		this.visaoDorsalColuna3 = visaoDorsalColuna3;
		this.visaoDorsalColuna1 = visaoDorsalColuna1;
		this.visaoDorsalQuadril5 = visaoDorsalQuadril5;
		this.visaoDorsalQuadril3 = visaoDorsalQuadril3;
		this.visaoDorsalQuadril1 = visaoDorsalQuadril1;
		this.visaoDorsalJoelhos5 = visaoDorsalJoelhos5;
		this.visaoDorsalJoelhos3 = visaoDorsalJoelhos3;
		this.visaoDorsalJoelhos1 = visaoDorsalJoelhos1;
		this.visaoDorsalCalcanhares5 = visaoDorsalCalcanhares5;
		this.visaoDorsalCalcanhares3 = visaoDorsalCalcanhares3;
		this.visaoDorsalCalcanhares1 = visaoDorsalCalcanhares1;
		this.visaoDorsalPes5 = visaoDorsalPes5;
		this.visaoDorsalPes3 = visaoDorsalPes3;
		this.visaoDorsalPes1 = visaoDorsalPes1;
		this.visaoLateralPescocoPeitora5 = visaoLateralPescocoPeitora5;
		this.visaoLateralPescocoPeitora3 = visaoLateralPescocoPeitora3;
		this.visaoLateralPescocoPeitora1 = visaoLateralPescocoPeitora1;
		this.visaoLateralOmbros5 = visaoLateralOmbros5;
		this.visaoLateralOmbros3 = visaoLateralOmbros3;
		this.visaoLateralOmbros1 = visaoLateralOmbros1;
		this.visaoLateralTorax5 = visaoLateralTorax5;
		this.visaoLateralTorax3 = visaoLateralTorax3;
		this.visaoLateralTorax1 = visaoLateralTorax1;
		this.visaoLateralColunaToracicaCifose5 = visaoLateralColunaToracicaCifose5;
		this.visaoLateralColunaToracicaCifose3 = visaoLateralColunaToracicaCifose3;
		this.visaoLateralColunaToracicaCifose1 = visaoLateralColunaToracicaCifose1;
		this.visaoLateralColunaLombossacraLordose5 = visaoLateralColunaLombossacraLordose5;
		this.visaoLateralColunaLombossacraLordose3 = visaoLateralColunaLombossacraLordose3;
		this.visaoLateralColunaLombossacraLordose1 = visaoLateralColunaLombossacraLordose1;
		this.visaoLateralTronco5 = visaoLateralTronco5;
		this.visaoLateralTronco3 = visaoLateralTronco3;
		this.visaoLateralTronco1 = visaoLateralTronco1;
		this.visaoLateralAbdomen5 = visaoLateralAbdomen5;
		this.visaoLateralAbdomen3 = visaoLateralAbdomen3;
		this.visaoLateralAbdomen1 = visaoLateralAbdomen1;
		this.visaoLateralJoelhos5 = visaoLateralJoelhos5;
		this.visaoLateralJoelhos3 = visaoLateralJoelhos3;
		this.visaoLateralJoelhos1 = visaoLateralJoelhos1;
		this.regiaoCabecaPescoco = regiaoCabecaPescoco;
		this.regiaoColunaDorsalLombar = regiaoColunaDorsalLombar;
		this.regiaoAbdomenQuadril = regiaoAbdomenQuadril;
		this.regiaoMembrosInferioers = regiaoMembrosInferioers;
		this.indiceCorrecaoPostural = indiceCorrecaoPostural;
		this.classificacao = classificacao;
		this.observacoes = observacoes;
	}
	public int getCodPostural() {
		return codPostural;
	}
	public void setCodPostural(int codPostural) {
		this.codPostural = codPostural;
	}
	public int getCodAvaliacao() {
		return codAvaliacao;
	}
	public void setCodAvaliacao(int codAvaliacao) {
		this.codAvaliacao = codAvaliacao;
	}
	public boolean isVisaoDorsalCabecaPescoco5() {
		return visaoDorsalCabecaPescoco5;
	}
	public void setVisaoDorsalCabecaPescoco5(boolean visaoDorsalCabecaPescoco5) {
		this.visaoDorsalCabecaPescoco5 = visaoDorsalCabecaPescoco5;
	}
	public boolean isVisaoDorsalCabecaPescoco3() {
		return visaoDorsalCabecaPescoco3;
	}
	public void setVisaoDorsalCabecaPescoco3(boolean visaoDorsalCabecaPescoco3) {
		this.visaoDorsalCabecaPescoco3 = visaoDorsalCabecaPescoco3;
	}
	public boolean isVisaoDorsalCabecaPescoco1() {
		return visaoDorsalCabecaPescoco1;
	}
	public void setVisaoDorsalCabecaPescoco1(boolean visaoDorsalCabecaPescoco1) {
		this.visaoDorsalCabecaPescoco1 = visaoDorsalCabecaPescoco1;
	}
	public boolean isVisaoDorsalOmbros5() {
		return visaoDorsalOmbros5;
	}
	public void setVisaoDorsalOmbros5(boolean visaoDorsalOmbros5) {
		this.visaoDorsalOmbros5 = visaoDorsalOmbros5;
	}
	public boolean isVisaoDorsalOmbros3() {
		return visaoDorsalOmbros3;
	}
	public void setVisaoDorsalOmbros3(boolean visaoDorsalOmbros3) {
		this.visaoDorsalOmbros3 = visaoDorsalOmbros3;
	}
	public boolean isVisaoDorsalOmbros1() {
		return visaoDorsalOmbros1;
	}
	public void setVisaoDorsalOmbros1(boolean visaoDorsalOmbros1) {
		this.visaoDorsalOmbros1 = visaoDorsalOmbros1;
	}
	public boolean isVisaoDorsalColuna5() {
		return visaoDorsalColuna5;
	}
	public void setVisaoDorsalColuna5(boolean visaoDorsalColuna5) {
		this.visaoDorsalColuna5 = visaoDorsalColuna5;
	}
	public boolean isVisaoDorsalColuna3() {
		return visaoDorsalColuna3;
	}
	public void setVisaoDorsalColuna3(boolean visaoDorsalColuna3) {
		this.visaoDorsalColuna3 = visaoDorsalColuna3;
	}
	public boolean isVisaoDorsalColuna1() {
		return visaoDorsalColuna1;
	}
	public void setVisaoDorsalColuna1(boolean visaoDorsalColuna1) {
		this.visaoDorsalColuna1 = visaoDorsalColuna1;
	}
	public boolean isVisaoDorsalQuadril5() {
		return visaoDorsalQuadril5;
	}
	public void setVisaoDorsalQuadril5(boolean visaoDorsalQuadril5) {
		this.visaoDorsalQuadril5 = visaoDorsalQuadril5;
	}
	public boolean isVisaoDorsalQuadril3() {
		return visaoDorsalQuadril3;
	}
	public void setVisaoDorsalQuadril3(boolean visaoDorsalQuadril3) {
		this.visaoDorsalQuadril3 = visaoDorsalQuadril3;
	}
	public boolean isVisaoDorsalQuadril1() {
		return visaoDorsalQuadril1;
	}
	public void setVisaoDorsalQuadril1(boolean visaoDorsalQuadril1) {
		this.visaoDorsalQuadril1 = visaoDorsalQuadril1;
	}
	public boolean isVisaoDorsalJoelhos5() {
		return visaoDorsalJoelhos5;
	}
	public void setVisaoDorsalJoelhos5(boolean visaoDorsalJoelhos5) {
		this.visaoDorsalJoelhos5 = visaoDorsalJoelhos5;
	}
	public boolean isVisaoDorsalJoelhos3() {
		return visaoDorsalJoelhos3;
	}
	public void setVisaoDorsalJoelhos3(boolean visaoDorsalJoelhos3) {
		this.visaoDorsalJoelhos3 = visaoDorsalJoelhos3;
	}
	public boolean isVisaoDorsalJoelhos1() {
		return visaoDorsalJoelhos1;
	}
	public void setVisaoDorsalJoelhos1(boolean visaoDorsalJoelhos1) {
		this.visaoDorsalJoelhos1 = visaoDorsalJoelhos1;
	}
	public boolean isVisaoDorsalCalcanhares5() {
		return visaoDorsalCalcanhares5;
	}
	public void setVisaoDorsalCalcanhares5(boolean visaoDorsalCalcanhares5) {
		this.visaoDorsalCalcanhares5 = visaoDorsalCalcanhares5;
	}
	public boolean isVisaoDorsalCalcanhares3() {
		return visaoDorsalCalcanhares3;
	}
	public void setVisaoDorsalCalcanhares3(boolean visaoDorsalCalcanhares3) {
		this.visaoDorsalCalcanhares3 = visaoDorsalCalcanhares3;
	}
	public boolean isVisaoDorsalCalcanhares1() {
		return visaoDorsalCalcanhares1;
	}
	public void setVisaoDorsalCalcanhares1(boolean visaoDorsalCalcanhares1) {
		this.visaoDorsalCalcanhares1 = visaoDorsalCalcanhares1;
	}
	public boolean isVisaoDorsalPes5() {
		return visaoDorsalPes5;
	}
	public void setVisaoDorsalPes5(boolean visaoDorsalPes5) {
		this.visaoDorsalPes5 = visaoDorsalPes5;
	}
	public boolean isVisaoDorsalPes3() {
		return visaoDorsalPes3;
	}
	public void setVisaoDorsalPes3(boolean visaoDorsalPes3) {
		this.visaoDorsalPes3 = visaoDorsalPes3;
	}
	public boolean isVisaoDorsalPes1() {
		return visaoDorsalPes1;
	}
	public void setVisaoDorsalPes1(boolean visaoDorsalPes1) {
		this.visaoDorsalPes1 = visaoDorsalPes1;
	}
	public boolean isVisaoLateralPescocoPeitora5() {
		return visaoLateralPescocoPeitora5;
	}
	public void setVisaoLateralPescocoPeitora5(boolean visaoLateralPescocoPeitora5) {
		this.visaoLateralPescocoPeitora5 = visaoLateralPescocoPeitora5;
	}
	public boolean isVisaoLateralPescocoPeitora3() {
		return visaoLateralPescocoPeitora3;
	}
	public void setVisaoLateralPescocoPeitora3(boolean visaoLateralPescocoPeitora3) {
		this.visaoLateralPescocoPeitora3 = visaoLateralPescocoPeitora3;
	}
	public boolean isVisaoLateralPescocoPeitora1() {
		return visaoLateralPescocoPeitora1;
	}
	public void setVisaoLateralPescocoPeitora1(boolean visaoLateralPescocoPeitora1) {
		this.visaoLateralPescocoPeitora1 = visaoLateralPescocoPeitora1;
	}
	public boolean isVisaoLateralOmbros5() {
		return visaoLateralOmbros5;
	}
	public void setVisaoLateralOmbros5(boolean visaoLateralOmbros5) {
		this.visaoLateralOmbros5 = visaoLateralOmbros5;
	}
	public boolean isVisaoLateralOmbros3() {
		return visaoLateralOmbros3;
	}
	public void setVisaoLateralOmbros3(boolean visaoLateralOmbros3) {
		this.visaoLateralOmbros3 = visaoLateralOmbros3;
	}
	public boolean isVisaoLateralOmbros1() {
		return visaoLateralOmbros1;
	}
	public void setVisaoLateralOmbros1(boolean visaoLateralOmbros1) {
		this.visaoLateralOmbros1 = visaoLateralOmbros1;
	}
	public boolean isVisaoLateralTorax5() {
		return visaoLateralTorax5;
	}
	public void setVisaoLateralTorax5(boolean visaoLateralTorax5) {
		this.visaoLateralTorax5 = visaoLateralTorax5;
	}
	public boolean isVisaoLateralTorax3() {
		return visaoLateralTorax3;
	}
	public void setVisaoLateralTorax3(boolean visaoLateralTorax3) {
		this.visaoLateralTorax3 = visaoLateralTorax3;
	}
	public boolean isVisaoLateralTorax1() {
		return visaoLateralTorax1;
	}
	public void setVisaoLateralTorax1(boolean visaoLateralTorax1) {
		this.visaoLateralTorax1 = visaoLateralTorax1;
	}
	public boolean isVisaoLateralColunaToracicaCifose5() {
		return visaoLateralColunaToracicaCifose5;
	}
	public void setVisaoLateralColunaToracicaCifose5(boolean visaoLateralColunaToracicaCifose5) {
		this.visaoLateralColunaToracicaCifose5 = visaoLateralColunaToracicaCifose5;
	}
	public boolean isVisaoLateralColunaToracicaCifose3() {
		return visaoLateralColunaToracicaCifose3;
	}
	public void setVisaoLateralColunaToracicaCifose3(boolean visaoLateralColunaToracicaCifose3) {
		this.visaoLateralColunaToracicaCifose3 = visaoLateralColunaToracicaCifose3;
	}
	public boolean isVisaoLateralColunaToracicaCifose1() {
		return visaoLateralColunaToracicaCifose1;
	}
	public void setVisaoLateralColunaToracicaCifose1(boolean visaoLateralColunaToracicaCifose1) {
		this.visaoLateralColunaToracicaCifose1 = visaoLateralColunaToracicaCifose1;
	}
	public boolean isVisaoLateralColunaLombossacraLordose5() {
		return visaoLateralColunaLombossacraLordose5;
	}
	public void setVisaoLateralColunaLombossacraLordose5(boolean visaoLateralColunaLombossacraLordose5) {
		this.visaoLateralColunaLombossacraLordose5 = visaoLateralColunaLombossacraLordose5;
	}
	public boolean isVisaoLateralColunaLombossacraLordose3() {
		return visaoLateralColunaLombossacraLordose3;
	}
	public void setVisaoLateralColunaLombossacraLordose3(boolean visaoLateralColunaLombossacraLordose3) {
		this.visaoLateralColunaLombossacraLordose3 = visaoLateralColunaLombossacraLordose3;
	}
	public boolean isVisaoLateralColunaLombossacraLordose1() {
		return visaoLateralColunaLombossacraLordose1;
	}
	public void setVisaoLateralColunaLombossacraLordose1(boolean visaoLateralColunaLombossacraLordose1) {
		this.visaoLateralColunaLombossacraLordose1 = visaoLateralColunaLombossacraLordose1;
	}
	public boolean isVisaoLateralTronco5() {
		return visaoLateralTronco5;
	}
	public void setVisaoLateralTronco5(boolean visaoLateralTronco5) {
		this.visaoLateralTronco5 = visaoLateralTronco5;
	}
	public boolean isVisaoLateralTronco3() {
		return visaoLateralTronco3;
	}
	public void setVisaoLateralTronco3(boolean visaoLateralTronco3) {
		this.visaoLateralTronco3 = visaoLateralTronco3;
	}
	public boolean isVisaoLateralTronco1() {
		return visaoLateralTronco1;
	}
	public void setVisaoLateralTronco1(boolean visaoLateralTronco1) {
		this.visaoLateralTronco1 = visaoLateralTronco1;
	}
	public boolean isVisaoLateralAbdomen5() {
		return visaoLateralAbdomen5;
	}
	public void setVisaoLateralAbdomen5(boolean visaoLateralAbdomen5) {
		this.visaoLateralAbdomen5 = visaoLateralAbdomen5;
	}
	public boolean isVisaoLateralAbdomen3() {
		return visaoLateralAbdomen3;
	}
	public void setVisaoLateralAbdomen3(boolean visaoLateralAbdomen3) {
		this.visaoLateralAbdomen3 = visaoLateralAbdomen3;
	}
	public boolean isVisaoLateralAbdomen1() {
		return visaoLateralAbdomen1;
	}
	public void setVisaoLateralAbdomen1(boolean visaoLateralAbdomen1) {
		this.visaoLateralAbdomen1 = visaoLateralAbdomen1;
	}
	public boolean isVisaoLateralJoelhos5() {
		return visaoLateralJoelhos5;
	}
	public void setVisaoLateralJoelhos5(boolean visaoLateralJoelhos5) {
		this.visaoLateralJoelhos5 = visaoLateralJoelhos5;
	}
	public boolean isVisaoLateralJoelhos3() {
		return visaoLateralJoelhos3;
	}
	public void setVisaoLateralJoelhos3(boolean visaoLateralJoelhos3) {
		this.visaoLateralJoelhos3 = visaoLateralJoelhos3;
	}
	public boolean isVisaoLateralJoelhos1() {
		return visaoLateralJoelhos1;
	}
	public void setVisaoLateralJoelhos1(boolean visaoLateralJoelhos1) {
		this.visaoLateralJoelhos1 = visaoLateralJoelhos1;
	}
	public double getRegiaoCabecaPescoco() {
		return regiaoCabecaPescoco;
	}
	public void setRegiaoCabecaPescoco(double regiaoCabecaPescoco) {
		this.regiaoCabecaPescoco = regiaoCabecaPescoco;
	}
	public double getRegiaoColunaDorsalLombar() {
		return regiaoColunaDorsalLombar;
	}
	public void setRegiaoColunaDorsalLombar(double regiaoColunaDorsalLombar) {
		this.regiaoColunaDorsalLombar = regiaoColunaDorsalLombar;
	}
	public double getRegiaoAbdomenQuadril() {
		return regiaoAbdomenQuadril;
	}
	public void setRegiaoAbdomenQuadril(double regiaoAbdomenQuadril) {
		this.regiaoAbdomenQuadril = regiaoAbdomenQuadril;
	}
	public double getRegiaoMembrosInferioers() {
		return regiaoMembrosInferioers;
	}
	public void setRegiaoMembrosInferioers(double regiaoMembrosInferioers) {
		this.regiaoMembrosInferioers = regiaoMembrosInferioers;
	}
	public double getIndiceCorrecaoPostural() {
		return indiceCorrecaoPostural;
	}
	public void setIndiceCorrecaoPostural(double indiceCorrecaoPostural) {
		this.indiceCorrecaoPostural = indiceCorrecaoPostural;
	}
	public String getClassificacao() {
		return classificacao;
	}
	public void setClassificacao(String classificacao) {
		this.classificacao = classificacao;
	}
	public String getObservacoes() {
		return observacoes;
	}
	public void setObservacoes(String observacoes) {
		this.observacoes = observacoes;
	}
    
    
}
