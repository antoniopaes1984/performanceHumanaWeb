package regras;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

public class RegrasAvaliacao {
	
	public String horaSistema() {
		//Captura a data de hoje do sistema
		Date data = new Date();
		//Formata a data captada do sistema
        SimpleDateFormat formatar = new SimpleDateFormat("yyyyMMdd");
        String dataFormatada = formatar.format(data); 

        return dataFormatada;
	}
	
	public String dataReavaliacao(String dataAvaliacao, int diasReavaliacao) {
		LocalDate hoje = LocalDate.now();
		LocalDate dataFutura = hoje.plusDays(diasReavaliacao);
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyLLdd");
        String formattedString= "";
        formattedString = dataFutura.format(formatter);
        return formattedString;
	}
	
	public int calculaIdade(String dataNasc, String pattern)  {

        DateFormat sdf = new SimpleDateFormat(pattern);

        Date dataNascInput = null;

       

            try {
				dataNascInput = sdf.parse(dataNasc);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        Calendar dateOfBirth = new GregorianCalendar();

        dateOfBirth.setTime(dataNascInput);

// Cria um objeto calendar com a data atual
        Calendar today = Calendar.getInstance();

// Obtém a idade baseado no ano
        int age = today.get(Calendar.YEAR) - dateOfBirth.get(Calendar.YEAR);

        dateOfBirth.add(Calendar.YEAR, age);

        if (today.before(dateOfBirth)) {
            age--;
        }
        return age;
    }

}
