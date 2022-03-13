package model;

public class ModelAha {
	private int codAha;
    private int codAvaliacao;
    private boolean histPerg1;
    private boolean histPerg2;
    private boolean histPerg3;
    private boolean histPerg4;
    private boolean histPerg5;
    private boolean histPerg6;
    private boolean histPerg7;
    private boolean histPerg8;
    private boolean histPerg9;
    private boolean histPerg10;
    
    private boolean saudePerg1;
    private boolean saudePerg2;
    private boolean saudePerg3;
    private boolean saudePerg4;
    private boolean saudePerg5;
    private boolean saudePerg6;
    private boolean saudePerg7;
    private boolean saudePerg8;
    
    private boolean sintoPerg1;
    private boolean sintoPerg2;
    private boolean sintoPerg3;
    private boolean sintoPerg4;
    private boolean sintoPerg5;
    private boolean sintoPerg6;
    
    private boolean cardioPerg1;
    private boolean cardioPerg2;
    private boolean cardioPerg3;
    private boolean cardioPerg4;
    private boolean cardioPerg5;
    private boolean cardioPerg6;
    private boolean cardioPerg7;
    
    private String situacao;
    
    
    
    public ModelAha(int codAvaliacao, boolean histPerg1, boolean histPerg2, boolean histPerg3, boolean histPerg4,
			boolean histPerg5, boolean histPerg6, boolean histPerg7, boolean histPerg8, boolean histPerg9,
			boolean histPerg10, boolean saudePerg1, boolean saudePerg2, boolean saudePerg3, boolean saudePerg4,
			boolean saudePerg5, boolean saudePerg6, boolean saudePerg7, boolean saudePerg8, boolean sintoPerg1,
			boolean sintoPerg2, boolean sintoPerg3, boolean sintoPerg4, boolean sintoPerg5, boolean sintoPerg6,
			boolean cardioPerg1, boolean cardioPerg2, boolean cardioPerg3, boolean cardioPerg4, boolean cardioPerg5,
			boolean cardioPerg6, boolean cardioPerg7, String situacao) {
		this.codAvaliacao = codAvaliacao;
		this.histPerg1 = histPerg1;
		this.histPerg2 = histPerg2;
		this.histPerg3 = histPerg3;
		this.histPerg4 = histPerg4;
		this.histPerg5 = histPerg5;
		this.histPerg6 = histPerg6;
		this.histPerg7 = histPerg7;
		this.histPerg8 = histPerg8;
		this.histPerg9 = histPerg9;
		this.histPerg10 = histPerg10;
		this.saudePerg1 = saudePerg1;
		this.saudePerg2 = saudePerg2;
		this.saudePerg3 = saudePerg3;
		this.saudePerg4 = saudePerg4;
		this.saudePerg5 = saudePerg5;
		this.saudePerg6 = saudePerg6;
		this.saudePerg7 = saudePerg7;
		this.saudePerg8 = saudePerg8;
		this.sintoPerg1 = sintoPerg1;
		this.sintoPerg2 = sintoPerg2;
		this.sintoPerg3 = sintoPerg3;
		this.sintoPerg4 = sintoPerg4;
		this.sintoPerg5 = sintoPerg5;
		this.sintoPerg6 = sintoPerg6;
		this.cardioPerg1 = cardioPerg1;
		this.cardioPerg2 = cardioPerg2;
		this.cardioPerg3 = cardioPerg3;
		this.cardioPerg4 = cardioPerg4;
		this.cardioPerg5 = cardioPerg5;
		this.cardioPerg6 = cardioPerg6;
		this.cardioPerg7 = cardioPerg7;
		this.situacao = situacao;
	}

	public ModelAha(){
        
    }

	public int getCodAha() {
		return codAha;
	}

	public void setCodAha(int codAha) {
		this.codAha = codAha;
	}

	public int getCodAvaliacao() {
		return codAvaliacao;
	}

	public void setCodAvaliacao(int codAvaliacao) {
		this.codAvaliacao = codAvaliacao;
	}

	public boolean isHistPerg1() {
		return histPerg1;
	}

	public void setHistPerg1(boolean histPerg1) {
		this.histPerg1 = histPerg1;
	}

	public boolean isHistPerg2() {
		return histPerg2;
	}

	public void setHistPerg2(boolean histPerg2) {
		this.histPerg2 = histPerg2;
	}

	public boolean isHistPerg3() {
		return histPerg3;
	}

	public void setHistPerg3(boolean histPerg3) {
		this.histPerg3 = histPerg3;
	}

	public boolean isHistPerg4() {
		return histPerg4;
	}

	public void setHistPerg4(boolean histPerg4) {
		this.histPerg4 = histPerg4;
	}

	public boolean isHistPerg5() {
		return histPerg5;
	}

	public void setHistPerg5(boolean histPerg5) {
		this.histPerg5 = histPerg5;
	}

	public boolean isHistPerg6() {
		return histPerg6;
	}

	public void setHistPerg6(boolean histPerg6) {
		this.histPerg6 = histPerg6;
	}

	public boolean isHistPerg7() {
		return histPerg7;
	}

	public void setHistPerg7(boolean histPerg7) {
		this.histPerg7 = histPerg7;
	}

	public boolean isHistPerg8() {
		return histPerg8;
	}

	public void setHistPerg8(boolean histPerg8) {
		this.histPerg8 = histPerg8;
	}

	public boolean isHistPerg9() {
		return histPerg9;
	}

	public void setHistPerg9(boolean histPerg9) {
		this.histPerg9 = histPerg9;
	}

	public boolean isHistPerg10() {
		return histPerg10;
	}

	public void setHistPerg10(boolean histPerg10) {
		this.histPerg10 = histPerg10;
	}

	public boolean isSaudePerg1() {
		return saudePerg1;
	}

	public void setSaudePerg1(boolean saudePerg1) {
		this.saudePerg1 = saudePerg1;
	}

	public boolean isSaudePerg2() {
		return saudePerg2;
	}

	public void setSaudePerg2(boolean saudePerg2) {
		this.saudePerg2 = saudePerg2;
	}

	public boolean isSaudePerg3() {
		return saudePerg3;
	}

	public void setSaudePerg3(boolean saudePerg3) {
		this.saudePerg3 = saudePerg3;
	}

	public boolean isSaudePerg4() {
		return saudePerg4;
	}

	public void setSaudePerg4(boolean saudePerg4) {
		this.saudePerg4 = saudePerg4;
	}

	public boolean isSaudePerg5() {
		return saudePerg5;
	}

	public void setSaudePerg5(boolean saudePerg5) {
		this.saudePerg5 = saudePerg5;
	}

	public boolean isSaudePerg6() {
		return saudePerg6;
	}

	public void setSaudePerg6(boolean saudePerg6) {
		this.saudePerg6 = saudePerg6;
	}

	public boolean isSaudePerg7() {
		return saudePerg7;
	}

	public void setSaudePerg7(boolean saudePerg7) {
		this.saudePerg7 = saudePerg7;
	}

	public boolean isSaudePerg8() {
		return saudePerg8;
	}

	public void setSaudePerg8(boolean saudePerg8) {
		this.saudePerg8 = saudePerg8;
	}

	public boolean isSintoPerg1() {
		return sintoPerg1;
	}

	public void setSintoPerg1(boolean sintoPerg1) {
		this.sintoPerg1 = sintoPerg1;
	}

	public boolean isSintoPerg2() {
		return sintoPerg2;
	}

	public void setSintoPerg2(boolean sintoPerg2) {
		this.sintoPerg2 = sintoPerg2;
	}

	public boolean isSintoPerg3() {
		return sintoPerg3;
	}

	public void setSintoPerg3(boolean sintoPerg3) {
		this.sintoPerg3 = sintoPerg3;
	}

	public boolean isSintoPerg4() {
		return sintoPerg4;
	}

	public void setSintoPerg4(boolean sintoPerg4) {
		this.sintoPerg4 = sintoPerg4;
	}

	public boolean isSintoPerg5() {
		return sintoPerg5;
	}

	public void setSintoPerg5(boolean sintoPerg5) {
		this.sintoPerg5 = sintoPerg5;
	}

	public boolean isSintoPerg6() {
		return sintoPerg6;
	}

	public void setSintoPerg6(boolean sintoPerg6) {
		this.sintoPerg6 = sintoPerg6;
	}

	public boolean isCardioPerg1() {
		return cardioPerg1;
	}

	public void setCardioPerg1(boolean cardioPerg1) {
		this.cardioPerg1 = cardioPerg1;
	}

	public boolean isCardioPerg2() {
		return cardioPerg2;
	}

	public void setCardioPerg2(boolean cardioPerg2) {
		this.cardioPerg2 = cardioPerg2;
	}

	public boolean isCardioPerg3() {
		return cardioPerg3;
	}

	public void setCardioPerg3(boolean cardioPerg3) {
		this.cardioPerg3 = cardioPerg3;
	}

	public boolean isCardioPerg4() {
		return cardioPerg4;
	}

	public void setCardioPerg4(boolean cardioPerg4) {
		this.cardioPerg4 = cardioPerg4;
	}

	public boolean isCardioPerg5() {
		return cardioPerg5;
	}

	public void setCardioPerg5(boolean cardioPerg5) {
		this.cardioPerg5 = cardioPerg5;
	}

	public boolean isCardioPerg6() {
		return cardioPerg6;
	}

	public void setCardioPerg6(boolean cardioPerg6) {
		this.cardioPerg6 = cardioPerg6;
	}

	public boolean isCardioPerg7() {
		return cardioPerg7;
	}

	public void setCardioPerg7(boolean cardioPerg7) {
		this.cardioPerg7 = cardioPerg7;
	}

	public String getSituacao() {
		return situacao;
	}

	public void setSituacao(String situacao) {
		this.situacao = situacao;
	}

    
   
    
     

}
