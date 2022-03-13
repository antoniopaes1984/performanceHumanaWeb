package regras;

public class RegrasComposicao {
	
	public String classificacaoIMCMulher(double imcMulher)throws Exception{
	       String classificacao = "";
	        
	        if (imcMulher < 18.5) {
	            classificacao = "Baixo peso";
	        }else if (imcMulher < 24.9) {
	            classificacao = "Peso normal";
	        }else if (imcMulher<29.9) {
	            classificacao = "Sobrepeso - Risco aumentado";
	        }else if (imcMulher<34.9) {
	            classificacao = "Obeso 1 - Risco aumentado";
	        }else if (imcMulher<39.9) {
	            classificacao = "Obeso 2 - Risco muito alto";
	        }else if (imcMulher>=40.0) {
	            classificacao = "Obeso 3 - Risco extremamente alto";
	        }
	        return classificacao;
	    }
	
	public String classificacaoIMCHomem(double imcMulher)throws Exception{
	       String classificacao = "";
	       if (imcMulher < 18.5) {
	            classificacao = "Baixo peso";
	        }else if (imcMulher < 24.9) {
	            classificacao = "Peso normal";
	        }else if (imcMulher<29.9) {
	            classificacao = "Sobrepeso - Risco aumentado";
	        }else if (imcMulher<34.9) {
	            classificacao = "Obeso 1 - Risco alto";
	        }else if (imcMulher<39.9) {
	            classificacao = "Obeso 2 - Risco muito alto";
	        }else if (imcMulher>=40.0) {
	            classificacao = "Obeso 3 - Risco extremamente alto";
	        }
	        return classificacao;
	    }
	
	public double massaOssea (double altura, double diametroPunho, double diametroFemur)throws Exception{
        double alturaPotencia = Math.pow(altura, 2);
        double massaOssea = Math.pow(alturaPotencia * (diametroPunho/100) * (diametroFemur/100) * 400 , 0.712) * 3.02;
        return massaOssea;
    }
	
	public double massaGordura(double peso, double percentualGordura)throws Exception{
        double massaGordura = peso * (percentualGordura / 100);
        return massaGordura;
    }
	
	public double massaCorporalMagra(double peso , double massaGordura)throws Exception{
        double massaCorporalMagra = peso - massaGordura;
        return massaCorporalMagra;
    }
	
	public double percentualMassaCorporalMagra(double massaCorporalMagra,double  peso)throws Exception{
        double percentualMassaCorporal = (massaCorporalMagra * 100)/peso;
        return percentualMassaCorporal;
    }
	
	public double massaResidualFeminina(double peso)throws Exception{
	       double massaResidual = peso * 0.209;
	       return massaResidual;
	   }
	
	public double massaResidualMasc(double peso)throws Exception{
	       double massaResidual = peso * 0.241;
	       return massaResidual;
	   }
	
	public double massaMuscular(double peso, double massaGordura, double massaOssea, double massaResidual)throws Exception{
        double massaMuscular = peso - (massaGordura + massaOssea + massaResidual);
        return massaMuscular;
    }
	
	public double percentualMassaMuscular(double massaMuscular, double peso)throws Exception{
	       double percentualMassaMusular = (massaMuscular * 100)/peso;
	       return percentualMassaMusular;
	   }
	
	public double pesoIdealMinimoMasc(double massaCorporalMagra)throws Exception{
	       double pesoIdealMinimo = massaCorporalMagra/0.88;
	       return pesoIdealMinimo;
	   }
	
	public double pesoIdealMinimoFem(double massaCorporalMagra)throws Exception{
	       double pesoIdealMinimo = massaCorporalMagra/0.78;
	       return pesoIdealMinimo;
	   }
	
	public double pesoExcesso(double peso, double pesoIdealMinimo)throws Exception{
	       double pesoExcesso = peso - pesoIdealMinimo;
	       return pesoExcesso;
	   }
	
	public double pesoIdealMaximoMasc(double massaCorporalMagra) throws Exception{
	       double pesoIdealMaximo = massaCorporalMagra / 0.85;
	       return pesoIdealMaximo;
	   }
	
	 public double pesoIdealMaximoFem(double massaCorporalMagra) throws Exception{
	       double pesoIdealMaximo = massaCorporalMagra / 0.75;
	       return pesoIdealMaximo;
	   }


}
