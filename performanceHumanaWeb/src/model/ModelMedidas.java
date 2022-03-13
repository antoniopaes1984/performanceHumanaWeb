package model;

public class ModelMedidas {
	private int codAvaliacao;
	private String formula_usada;
	private double amostra1DcTriceps;
	private double amostra2DcTriceps;
	private double amostra3DcTriceps;
	private double dcTriceps ;

	private double amostra1DcBiceps;
	private double amostra2DcBiceps;
	private double amostra3DcBiceps;
	private double dcBiceps;

	private double amostra1DcSubescapular;
	private double amostra2DcSubescapular;
	private double amostra3DcSubescapular;
	private double dcSubescapular; 

	private double amostra1DcPeitoral;
	private double amostra2DcPeitoral;
	private double amostra3DcPeitoral;
	private double dcPeitoral;

	private double amostra1DcAxilarMedia;
	private double amostra2DcAxilarMedia;
	private double amostra3DcAxilarMedia;
	private double dcAxilarMedia; 

	private double amostra1DcSupraIliaca;
	private double amostra2DcSupraIliaca;
	private double amostra3DcSupraIliaca;
	private double dcSupraIliaca; 

	private double amostra1DcAbdomen;
	private double amostra2DcAbdomen;
	private double amostra3DcAbdomen;
	private double dcAbdomen;

	private double amostra1DcCoxaPollockMedial;
	private double amostra2DcCoxaPollockMedial;
	private double amostra3DcCoxaPollockMedial;
	private double dcCoxaPollockMedial; 

	private double amostra1DcCoxaGuedesProx;
	private double amostra2DcCoxaGuedesProx;
	private double amostra3DcCoxaGuedesProx;
	private double dcCoxaGuedesProx; 

	private double amostra1DcPanturrurrilha;
	private double amostra2DcPanturrurrilha;
	private double amostra3DcPanturrurrilha;
	private double dcPanturrilha;

	private double somaDobras;
	private double cirCintura; 
	private double cirAbdomen; 
	private double cirIliaco; 
	private double cirQuadril; 
	 
	private double peso;
	private double altura;

	private double diametroOsseoPunho; 
	private double diametroOsseoFemur;
	private double diametroOsseoUmero;

	private double bioimpedancia;

	private double percentualGorduraAtual;
	private double percentualGorduraAlvo;
	
	
	
	public int getCodAvaliacao() {
		return codAvaliacao;
	}
	public void setCodAvaliacao(int codAvaliacao) {
		this.codAvaliacao = codAvaliacao;
	}
	public String getFormula_usada() {
		return formula_usada;
	}
	public void setFormula_usada(String formula_usada) {
		this.formula_usada = formula_usada;
	}
	public double getAmostra1DcTriceps() {
		return amostra1DcTriceps;
	}
	public void setAmostra1DcTriceps(double amostra1DcTriceps) {
		this.amostra1DcTriceps = amostra1DcTriceps;
	}
	public double getAmostra2DcTriceps() {
		return amostra2DcTriceps;
	}
	public void setAmostra2DcTriceps(double amostra2DcTriceps) {
		this.amostra2DcTriceps = amostra2DcTriceps;
	}
	public double getAmostra3DcTriceps() {
		return amostra3DcTriceps;
	}
	public void setAmostra3DcTriceps(double amostra3DcTriceps) {
		this.amostra3DcTriceps = amostra3DcTriceps;
	}
	public double getDcTriceps() {
		return dcTriceps;
	}
	public void setDcTriceps(double dcTriceps) {
		this.dcTriceps = dcTriceps;
	}
	public double getAmostra1DcBiceps() {
		return amostra1DcBiceps;
	}
	public void setAmostra1DcBiceps(double amostra1DcBiceps) {
		this.amostra1DcBiceps = amostra1DcBiceps;
	}
	public double getAmostra2DcBiceps() {
		return amostra2DcBiceps;
	}
	public void setAmostra2DcBiceps(double amostra2DcBiceps) {
		this.amostra2DcBiceps = amostra2DcBiceps;
	}
	public double getAmostra3DcBiceps() {
		return amostra3DcBiceps;
	}
	public void setAmostra3DcBiceps(double amostra3DcBiceps) {
		this.amostra3DcBiceps = amostra3DcBiceps;
	}
	public double getDcBiceps() {
		return dcBiceps;
	}
	public void setDcBiceps(double dcBiceps) {
		this.dcBiceps = dcBiceps;
	}
	public double getAmostra1DcSubescapular() {
		return amostra1DcSubescapular;
	}
	public void setAmostra1DcSubescapular(double amostra1DcSubescapular) {
		this.amostra1DcSubescapular = amostra1DcSubescapular;
	}
	public double getAmostra2DcSubescapular() {
		return amostra2DcSubescapular;
	}
	public void setAmostra2DcSubescapular(double amostra2DcSubescapular) {
		this.amostra2DcSubescapular = amostra2DcSubescapular;
	}
	public double getAmostra3DcSubescapular() {
		return amostra3DcSubescapular;
	}
	public void setAmostra3DcSubescapular(double amostra3DcSubescapular) {
		this.amostra3DcSubescapular = amostra3DcSubescapular;
	}
	public double getDcSubescapular() {
		return dcSubescapular;
	}
	public void setDcSubescapular(double dcSubescapular) {
		this.dcSubescapular = dcSubescapular;
	}
	public double getAmostra1DcPeitoral() {
		return amostra1DcPeitoral;
	}
	public void setAmostra1DcPeitoral(double amostra1DcPeitoral) {
		this.amostra1DcPeitoral = amostra1DcPeitoral;
	}
	public double getAmostra2DcPeitoral() {
		return amostra2DcPeitoral;
	}
	public void setAmostra2DcPeitoral(double amostra2DcPeitoral) {
		this.amostra2DcPeitoral = amostra2DcPeitoral;
	}
	public double getAmostra3DcPeitoral() {
		return amostra3DcPeitoral;
	}
	public void setAmostra3DcPeitoral(double amostra3DcPeitoral) {
		this.amostra3DcPeitoral = amostra3DcPeitoral;
	}
	public double getDcPeitoral() {
		return dcPeitoral;
	}
	public void setDcPeitoral(double dcPeitoral) {
		this.dcPeitoral = dcPeitoral;
	}
	public double getAmostra1DcAxilarMedia() {
		return amostra1DcAxilarMedia;
	}
	public void setAmostra1DcAxilarMedia(double amostra1DcAxilarMedia) {
		this.amostra1DcAxilarMedia = amostra1DcAxilarMedia;
	}
	public double getAmostra2DcAxilarMedia() {
		return amostra2DcAxilarMedia;
	}
	public void setAmostra2DcAxilarMedia(double amostra2DcAxilarMedia) {
		this.amostra2DcAxilarMedia = amostra2DcAxilarMedia;
	}
	public double getAmostra3DcAxilarMedia() {
		return amostra3DcAxilarMedia;
	}
	public void setAmostra3DcAxilarMedia(double amostra3DcAxilarMedia) {
		this.amostra3DcAxilarMedia = amostra3DcAxilarMedia;
	}
	public double getDcAxilarMedia() {
		return dcAxilarMedia;
	}
	public void setDcAxilarMedia(double dcAxilarMedia) {
		this.dcAxilarMedia = dcAxilarMedia;
	}
	public double getAmostra1DcSupraIliaca() {
		return amostra1DcSupraIliaca;
	}
	public void setAmostra1DcSupraIliaca(double amostra1DcSupraIliaca) {
		this.amostra1DcSupraIliaca = amostra1DcSupraIliaca;
	}
	public double getAmostra2DcSupraIliaca() {
		return amostra2DcSupraIliaca;
	}
	public void setAmostra2DcSupraIliaca(double amostra2DcSupraIliaca) {
		this.amostra2DcSupraIliaca = amostra2DcSupraIliaca;
	}
	public double getAmostra3DcSupraIliaca() {
		return amostra3DcSupraIliaca;
	}
	public void setAmostra3DcSupraIliaca(double amostra3DcSupraIliaca) {
		this.amostra3DcSupraIliaca = amostra3DcSupraIliaca;
	}
	public double getDcSupraIliaca() {
		return dcSupraIliaca;
	}
	public void setDcSupraIliaca(double dcSupraIliaca) {
		this.dcSupraIliaca = dcSupraIliaca;
	}
	public double getAmostra1DcAbdomen() {
		return amostra1DcAbdomen;
	}
	public void setAmostra1DcAbdomen(double amostra1DcAbdomen) {
		this.amostra1DcAbdomen = amostra1DcAbdomen;
	}
	public double getAmostra2DcAbdomen() {
		return amostra2DcAbdomen;
	}
	public void setAmostra2DcAbdomen(double amostra2DcAbdomen) {
		this.amostra2DcAbdomen = amostra2DcAbdomen;
	}
	public double getAmostra3DcAbdomen() {
		return amostra3DcAbdomen;
	}
	public void setAmostra3DcAbdomen(double amostra3DcAbdomen) {
		this.amostra3DcAbdomen = amostra3DcAbdomen;
	}
	public double getDcAbdomen() {
		return dcAbdomen;
	}
	public void setDcAbdomen(double dcAbdomen) {
		this.dcAbdomen = dcAbdomen;
	}
	public double getAmostra1DcCoxaPollockMedial() {
		return amostra1DcCoxaPollockMedial;
	}
	public void setAmostra1DcCoxaPollockMedial(double amostra1DcCoxaPollockMedial) {
		this.amostra1DcCoxaPollockMedial = amostra1DcCoxaPollockMedial;
	}
	public double getAmostra2DcCoxaPollockMedial() {
		return amostra2DcCoxaPollockMedial;
	}
	public void setAmostra2DcCoxaPollockMedial(double amostra2DcCoxaPollockMedial) {
		this.amostra2DcCoxaPollockMedial = amostra2DcCoxaPollockMedial;
	}
	public double getAmostra3DcCoxaPollockMedial() {
		return amostra3DcCoxaPollockMedial;
	}
	public void setAmostra3DcCoxaPollockMedial(double amostra3DcCoxaPollockMedial) {
		this.amostra3DcCoxaPollockMedial = amostra3DcCoxaPollockMedial;
	}
	public double getDcCoxaPollockMedial() {
		return dcCoxaPollockMedial;
	}
	public void setDcCoxaPollockMedial(double dcCoxaPollockMedial) {
		this.dcCoxaPollockMedial = dcCoxaPollockMedial;
	}
	public double getAmostra1DcCoxaGuedesProx() {
		return amostra1DcCoxaGuedesProx;
	}
	public void setAmostra1DcCoxaGuedesProx(double amostra1DcCoxaGuedesProx) {
		this.amostra1DcCoxaGuedesProx = amostra1DcCoxaGuedesProx;
	}
	public double getAmostra2DcCoxaGuedesProx() {
		return amostra2DcCoxaGuedesProx;
	}
	public void setAmostra2DcCoxaGuedesProx(double amostra2DcCoxaGuedesProx) {
		this.amostra2DcCoxaGuedesProx = amostra2DcCoxaGuedesProx;
	}
	public double getAmostra3DcCoxaGuedesProx() {
		return amostra3DcCoxaGuedesProx;
	}
	public void setAmostra3DcCoxaGuedesProx(double amostra3DcCoxaGuedesProx) {
		this.amostra3DcCoxaGuedesProx = amostra3DcCoxaGuedesProx;
	}
	public double getDcCoxaGuedesProx() {
		return dcCoxaGuedesProx;
	}
	public void setDcCoxaGuedesProx(double dcCoxaGuedesProx) {
		this.dcCoxaGuedesProx = dcCoxaGuedesProx;
	}
	public double getAmostra1DcPanturrurrilha() {
		return amostra1DcPanturrurrilha;
	}
	public void setAmostra1DcPanturrurrilha(double amostra1DcPanturrurrilha) {
		this.amostra1DcPanturrurrilha = amostra1DcPanturrurrilha;
	}
	public double getAmostra2DcPanturrurrilha() {
		return amostra2DcPanturrurrilha;
	}
	public void setAmostra2DcPanturrurrilha(double amostra2DcPanturrurrilha) {
		this.amostra2DcPanturrurrilha = amostra2DcPanturrurrilha;
	}
	public double getAmostra3DcPanturrurrilha() {
		return amostra3DcPanturrurrilha;
	}
	public void setAmostra3DcPanturrurrilha(double amostra3DcPanturrurrilha) {
		this.amostra3DcPanturrurrilha = amostra3DcPanturrurrilha;
	}
	public double getDcPanturrilha() {
		return dcPanturrilha;
	}
	public void setDcPanturrilha(double dcPanturrilha) {
		this.dcPanturrilha = dcPanturrilha;
	}
	public double getSomaDobras() {
		return somaDobras;
	}
	public void setSomaDobras(double somaDobras) {
		this.somaDobras = somaDobras;
	}
	public double getCirCintura() {
		return cirCintura;
	}
	public void setCirCintura(double cirCintura) {
		this.cirCintura = cirCintura;
	}
	public double getCirAbdomen() {
		return cirAbdomen;
	}
	public void setCirAbdomen(double cirAbdomen) {
		this.cirAbdomen = cirAbdomen;
	}
	public double getCirIliaco() {
		return cirIliaco;
	}
	public void setCirIliaco(double cirIliaco) {
		this.cirIliaco = cirIliaco;
	}
	public double getCirQuadril() {
		return cirQuadril;
	}
	public void setCirQuadril(double cirQuadril) {
		this.cirQuadril = cirQuadril;
	}
	public double getPeso() {
		return peso;
	}
	public void setPeso(double peso) {
		this.peso = peso;
	}
	public double getAltura() {
		return altura;
	}
	public void setAltura(double altura) {
		this.altura = altura;
	}
	public double getDiametroOsseoPunho() {
		return diametroOsseoPunho;
	}
	public void setDiametroOsseoPunho(double diametroOsseoPunho) {
		this.diametroOsseoPunho = diametroOsseoPunho;
	}
	public double getDiametroOsseoFemur() {
		return diametroOsseoFemur;
	}
	public void setDiametroOsseoFemur(double diametroOsseoFemur) {
		this.diametroOsseoFemur = diametroOsseoFemur;
	}
	public double getDiametroOsseoUmero() {
		return diametroOsseoUmero;
	}
	public void setDiametroOsseoUmero(double diametroOsseoUmero) {
		this.diametroOsseoUmero = diametroOsseoUmero;
	}
	public double getBioimpedancia() {
		return bioimpedancia;
	}
	public void setBioimpedancia(double bioimpedancia) {
		this.bioimpedancia = bioimpedancia;
	}
	public double getPercentualGorduraAtual() {
		return percentualGorduraAtual;
	}
	public void setPercentualGorduraAtual(double percentualGorduraAtual) {
		this.percentualGorduraAtual = percentualGorduraAtual;
	}
	public double getPercentualGorduraAlvo() {
		return percentualGorduraAlvo;
	}
	public void setPercentualGorduraAlvo(double percentualGorduraAlvo) {
		this.percentualGorduraAlvo = percentualGorduraAlvo;
	}
	
	
}
