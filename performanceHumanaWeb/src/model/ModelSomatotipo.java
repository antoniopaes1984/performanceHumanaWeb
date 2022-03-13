package model;

public class ModelSomatotipo {

	private int cod_somatotipo;
    private int cod_avaliacao;
    private double dcTriceps;
    private double dcSubEscapular;
    private double dcSupraIliaca;
    private double dcPanturrilha;
    private double circBracoDireitoRelax;
    private double circPanturrilha;
    private double diamFemur;
    private double diamUmero;
    private double peso;
    private double altura;
    private double somatoTipoEndomorfia;
    private double somatoTipoMesomorfia;
    private double somatoTipoEctomorfia;
    private String classificacaoSomatotipo;
    private String acaoSomatotipo;

    public ModelSomatotipo() {
    }


    public ModelSomatotipo(int cod_avaliacao) {
        this.cod_avaliacao = cod_avaliacao;
    }
    
    

    public int getCod_somatotipo() {
        return cod_somatotipo;
    }

    public void setCod_somatotipo(int cod_somatotipo) {
        this.cod_somatotipo = cod_somatotipo;
    }

    public int getCod_avaliacao() {
        return cod_avaliacao;
    }

    public void setCod_avaliacao(int cod_avaliacao) {
        this.cod_avaliacao = cod_avaliacao;
    }

    public double getDcTriceps() {
        return dcTriceps;
    }

    public void setDcTriceps(double dcTriceps) {
        this.dcTriceps = dcTriceps;
    }

    public double getDcSubEscapular() {
        return dcSubEscapular;
    }

    public void setDcSubEscapular(double dcSubEscapular) {
        this.dcSubEscapular = dcSubEscapular;
    }

    public double getDcSupraIliaca() {
        return dcSupraIliaca;
    }

    public void setDcSupraIliaca(double dcSupraIliaca) {
        this.dcSupraIliaca = dcSupraIliaca;
    }

    public double getDcPanturrilha() {
        return dcPanturrilha;
    }

    public void setDcPanturrilha(double dcPanturrilha) {
        this.dcPanturrilha = dcPanturrilha;
    }

    public double getCircBracoDireitoRelax() {
        return circBracoDireitoRelax;
    }

    public void setCircBracoDireitoRelax(double circBracoDireitoRelax) {
        this.circBracoDireitoRelax = circBracoDireitoRelax;
    }

    public double getCircPanturrilha() {
        return circPanturrilha;
    }

    public void setCircPanturrilha(double circPanturrilha) {
        this.circPanturrilha = circPanturrilha;
    }

    public double getDiamFemur() {
        return diamFemur;
    }

    public void setDiamFemur(double diamFemur) {
        this.diamFemur = diamFemur;
    }

    public double getDiamUmero() {
        return diamUmero;
    }

    public void setDiamUmero(double diamUmero) {
        this.diamUmero = diamUmero;
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

    
    
    public double getSomatoTipoEndomorfia() {
        return somatoTipoEndomorfia;
    }

    public void setSomatoTipoEndomorfia(double somatoTipoEndomorfia) {
        this.somatoTipoEndomorfia = somatoTipoEndomorfia;
    }

    public double getSomatoTipoMesomorfia() {
        return somatoTipoMesomorfia;
    }

    public void setSomatoTipoMesomorfia(double somatoTipoMesomorfia) {
        this.somatoTipoMesomorfia = somatoTipoMesomorfia;
    }

    public double getSomatoTipoEctomorfia() {
        return somatoTipoEctomorfia;
    }

    public void setSomatoTipoEctomorfia(double somatoTipoEctomorfia) {
        this.somatoTipoEctomorfia = somatoTipoEctomorfia;
    }

    public String getClassificacaoSomatotipo() {
        return classificacaoSomatotipo;
    }

    public void setClassificacaoSomatotipo(String classificacaoSomatotipo) {
        this.classificacaoSomatotipo = classificacaoSomatotipo;
    }

    public String getAcaoSomatotipo() {
        return acaoSomatotipo;
    }

    public void setAcaoSomatotipo(String acaoSomatotipo) {
        this.acaoSomatotipo = acaoSomatotipo;
    }

   
    
}
