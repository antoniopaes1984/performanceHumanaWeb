package model;

public class ModelCardiovascular {
	
	private int codTeste;
    private int codAvaliacao;
    private String formulaUsada;
    private int fcTeste;
    private double cargaKg;
    private double cargaWatts;
    private String condicaoAtual;
    private int tempoMinutos;
    private int tempoSegundos;
    private int distanciaMetros;
    private double velocidadeMetroMinuto;
    private double velocidadeKmHora;
    private int inclinacaoEsteira;
    private int nivelAtvFisica;
    private double peso;
    
    private double vo2CargaLMin;
    private double vo2MaxLMin;
    private double vo2maxMlKgMin;
    private double kcalMin;
    private double metMax;
    private double vo2Obtido;
    private double vo2Predito;
    private double defictFuncional;
    private String classificaoAHA;

    public ModelCardiovascular(){
        
    }

    
    public int getCodTeste() {
        return codTeste;
    }

    public void setCodTeste(int codTeste) {
        this.codTeste = codTeste;
    }

    public int getCodAvaliacao() {
        return codAvaliacao;
    }

    public void setCodAvaliacao(int codAvaliacao) {
        this.codAvaliacao = codAvaliacao;
    }


    public String getFormulaUsada() {
        return formulaUsada;
    }

    public void setFormulaUsada(String formulaUsada) {
        this.formulaUsada = formulaUsada;
    }

    public int getFcTeste() {
        return fcTeste;
    }

    public void setFcTeste(int fcTeste) {
        this.fcTeste = fcTeste;
    }

    public double getCargaKg() {
        return cargaKg;
    }

    public void setCargaKg(double cargaKg) {
        this.cargaKg = cargaKg;
    }

    public double getCargaWatts() {
        return cargaWatts;
    }

    public void setCargaWatts(double cargaWatts) {
        this.cargaWatts = cargaWatts;
    }

    public double getVo2CargaLMin() {
        return vo2CargaLMin;
    }

    public void setVo2CargaLMin(double vo2CargaLMin) {
        this.vo2CargaLMin = vo2CargaLMin;
    }

    public double getVo2MaxLMin() {
        return vo2MaxLMin;
    }

    public void setVo2MaxLMin(double vo2MaxLMin) {
        this.vo2MaxLMin = vo2MaxLMin;
    }

    public double getVo2maxMlKgMin() {
        return vo2maxMlKgMin;
    }

    public void setVo2maxMlKgMin(double vo2maxMlKgMin) {
        this.vo2maxMlKgMin = vo2maxMlKgMin;
    }

    public double getKcalMin() {
        return kcalMin;
    }

    public void setKcalMin(double kcalMin) {
        this.kcalMin = kcalMin;
    }

    public double getMetMax() {
        return metMax;
    }

    public void setMetMax(double metMax) {
        this.metMax = metMax;
    }

    public double getDefictFuncional() {
        return defictFuncional;
    }

    public void setDefictFuncional(double defictFuncional) {
        this.defictFuncional = defictFuncional;
    }

    public String getClassificaoAHA() {
        return classificaoAHA;
    }

    public void setClassificaoAHA(String classificaoAHA) {
        this.classificaoAHA = classificaoAHA;
    }

    public String getCondicaoAtual() {
        return condicaoAtual;
    }

    public void setCondicaoAtual(String condicaoAtual) {
        this.condicaoAtual = condicaoAtual;
    }

    public int getTempoMinutos() {
        return tempoMinutos;
    }

    public void setTempoMinutos(int tempoMinutos) {
        this.tempoMinutos = tempoMinutos;
    }
    
    

    public int getTempoSegundos() {
		return tempoSegundos;
	}


	public void setTempoSegundos(int tempoSegundos) {
		this.tempoSegundos = tempoSegundos;
	}
	
	


	public int getDistanciaMetros() {
		return distanciaMetros;
	}


	public void setDistanciaMetros(int distanciaMetros) {
		this.distanciaMetros = distanciaMetros;
	}


	public double getVelocidadeKmHora() {
        return velocidadeKmHora;
    }

    public void setVelocidadeKmHora(double velocidadeKmHora) {
        this.velocidadeKmHora = velocidadeKmHora;
    }

    
    
    public double getVelocidadeMetroMinuto() {
        return velocidadeMetroMinuto;
    }

    public void setVelocidadeMetroMinuto(double velocidadeMetroMinuto) {
        this.velocidadeMetroMinuto = velocidadeMetroMinuto;
    }

    public int getInclinacaoEsteira() {
        return inclinacaoEsteira;
    }

    public void setInclinacaoEsteira(int inclinacaoEsteira) {
        this.inclinacaoEsteira = inclinacaoEsteira;
    }

    public int getNivelAtvFisica() {
        return nivelAtvFisica;
    }

    public void setNivelAtvFisica(int nivelAtvFisica) {
        this.nivelAtvFisica = nivelAtvFisica;
    }


    public double getPeso() {
        return peso;
    }

    public void setPeso(double peso) {
        this.peso = peso;
    }

    public double getVo2Obtido() {
        return vo2Obtido;
    }

    public void setVo2Obtido(double vo2Obtido) {
        this.vo2Obtido = vo2Obtido;
    }

    public double getVo2Predito() {
        return vo2Predito;
    }

    public void setVo2Predito(double vo2Predito) {
        this.vo2Predito = vo2Predito;
    }
    
    
   

}
