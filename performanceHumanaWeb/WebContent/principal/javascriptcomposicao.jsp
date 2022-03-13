<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
<script type="text/javascript">



var peso = document.querySelector('#txtPeso');
peso.addEventListener('change',calculaPercentualGordura);

var altura = document.querySelector('#txtAltura');
altura.addEventListener('change',calculaPercentualGordura);

var protocolo = document.querySelector('#txtFormulaUsada');
protocolo.addEventListener('click',protocoloEscolhido);
protocolo.addEventListener('change',protocoloEscolhido);

var triceps1 = document.querySelector('#txtTriceps1');
triceps1.addEventListener('change',mediaTriceps);
triceps1.addEventListener('change',calculaPercentualGordura);

var triceps2 = document.querySelector('#txtTriceps2');
triceps2.addEventListener('change',mediaTriceps);
triceps2.addEventListener('change',calculaPercentualGordura);

var triceps3 = document.querySelector('#txtTriceps3');
triceps3.addEventListener('change',mediaTriceps);
triceps3.addEventListener('change',calculaPercentualGordura);

var biceps1 = document.querySelector('#txtBiceps1');
biceps1.addEventListener('change',mediaBiceps);
biceps1.addEventListener('change',calculaPercentualGordura);

var biceps2 = document.querySelector('#txtBiceps2');
biceps2.addEventListener('change',mediaBiceps);
biceps2.addEventListener('change',calculaPercentualGordura);

var biceps3 = document.querySelector('#txtBiceps3');
biceps3.addEventListener('change',mediaBiceps);
biceps3.addEventListener('change',calculaPercentualGordura);

var subEscapular1 = document.querySelector('#txtSubescapular1');
subEscapular1.addEventListener('change',mediaSubescapular)
subEscapular1.addEventListener('change',calculaPercentualGordura)

var subEscapular2 = document.querySelector('#txtSubescapular2');
subEscapular2.addEventListener('change',mediaSubescapular)
subEscapular2.addEventListener('change',calculaPercentualGordura)

var subEscapular3 = document.querySelector('#txtSubescapular3');
subEscapular3.addEventListener('change',mediaSubescapular)
subEscapular3.addEventListener('change',calculaPercentualGordura)

var peito1 = document.querySelector('#txtPeito1');
peito1.addEventListener('change',mediaPeito)
peito1.addEventListener('change',calculaPercentualGordura)

var peito2 = document.querySelector('#txtPeito2');
peito2.addEventListener('change',mediaPeito)
peito2.addEventListener('change',calculaPercentualGordura)

var peito3 = document.querySelector('#txtPeito3');
peito3.addEventListener('change',mediaPeito)
peito3.addEventListener('change',calculaPercentualGordura)


var axilarMedia1 = document.querySelector('#txtAxilarMedia1');
axilarMedia1.addEventListener('change',mediaAxilarMedia)
axilarMedia1.addEventListener('change',calculaPercentualGordura)

var axilarMedia2 = document.querySelector('#txtAxilarMedia2');
axilarMedia2.addEventListener('change',mediaAxilarMedia)
axilarMedia2.addEventListener('change',calculaPercentualGordura)

var axilarMedia3 = document.querySelector('#txtAxilarMedia3');
axilarMedia3.addEventListener('change',mediaAxilarMedia);
axilarMedia3.addEventListener('change',calculaPercentualGordura)

var supraIliaca1 = document.querySelector('#txtSupraIliaca1');
supraIliaca1.addEventListener('change',mediaSupraIliaca);
supraIliaca1.addEventListener('change',calculaPercentualGordura);

var supraIliaca2 = document.querySelector('#txtSupraIliaca2');
supraIliaca2.addEventListener('change',mediaSupraIliaca);
supraIliaca2.addEventListener('change',calculaPercentualGordura);

var supraIliaca3 = document.querySelector('#txtSupraIliaca3');
supraIliaca3.addEventListener('change',mediaSupraIliaca);
supraIliaca3.addEventListener('change',calculaPercentualGordura);

var abdomen1 = document.querySelector('#txtAbdomen1');
abdomen1.addEventListener('change',mediaAbdomen);
abdomen1.addEventListener('change',calculaPercentualGordura);

var abdomen2 = document.querySelector('#txtAbdomen2');
abdomen2.addEventListener('change',mediaAbdomen);
abdomen2.addEventListener('change',calculaPercentualGordura);

var abdomen3 = document.querySelector('#txtAbdomen3');
abdomen3.addEventListener('change',mediaAbdomen);
abdomen3.addEventListener('change',calculaPercentualGordura);

var coxaMedial1 = document.querySelector('#txtCoxaMedial1');
coxaMedial1.addEventListener('change',mediaCoxaMedial);
coxaMedial1.addEventListener('change',calculaPercentualGordura);

var coxaMedial2 = document.querySelector('#txtCoxaMedial2');
coxaMedial2.addEventListener('change',mediaCoxaMedial);
coxaMedial2.addEventListener('change',calculaPercentualGordura);

var coxaMedial3 = document.querySelector('#txtCoxaMedial3');
coxaMedial3.addEventListener('change',mediaCoxaMedial);
coxaMedial3.addEventListener('change',calculaPercentualGordura);

var coxaProximal1 = document.querySelector('#txtCoxaProximal1');
coxaProximal1.addEventListener('change',mediaCoxaProximal);
coxaProximal1.addEventListener('change',calculaPercentualGordura);

var coxaProximal2 = document.querySelector('#txtCoxaProximal2');
coxaProximal2.addEventListener('change',mediaCoxaProximal);
coxaProximal2.addEventListener('change',calculaPercentualGordura);

var coxaProximal3 = document.querySelector('#txtCoxaProximal3');
coxaProximal3.addEventListener('change',mediaCoxaProximal);
coxaProximal3.addEventListener('change',calculaPercentualGordura);


var panturrilha1 = document.querySelector('#txtPanturrilhal1');
panturrilha1.addEventListener('change',mediaPanturrilha);
panturrilha1.addEventListener('change',calculaPercentualGordura);

var panturrilha2 = document.querySelector('#txtPanturrilhal2');
panturrilha2.addEventListener('change',mediaPanturrilha);
panturrilha2.addEventListener('change',calculaPercentualGordura);

var panturrilha3 = document.querySelector('#txtPanturrilhal3');
panturrilha3.addEventListener('change',mediaPanturrilha);
panturrilha3.addEventListener('change',calculaPercentualGordura);

var bioimpedancia = document.querySelector('#txtBioimpedancia');
bioimpedancia.addEventListener('change',calculaPercentualGordura);

var cirCintura = document.querySelector('#txtCirCintura');
cirCintura.addEventListener('change',calculaPercentualGordura);

var cirAbdomen1 = document.querySelector('#txtCirAbdomen1');
cirAbdomen1.addEventListener('change',calculaPercentualGordura);

var cirIliaco = document.querySelector('#txtCirIliaco');
cirIliaco.addEventListener('change',calculaPercentualGordura);

var cirQuadril = document.querySelector('#txtCirQuadril');
cirQuadril.addEventListener('change',calculaPercentualGordura);


function onlynumber(evt) {
	   var theEvent = evt || window.event;
	   var key = theEvent.keyCode || theEvent.which;
	   key = String.fromCharCode( key );
	   //var regex = /^[0-9.,]+$/;
	   var regex = /^[0-9.]+$/;
	   if( !regex.test(key) ) {
	      theEvent.returnValue = false;
	      if(theEvent.preventDefault) theEvent.preventDefault();
	   }
	}
	
function protocoloEscolhido(){
	var protocolo = document.querySelector("#txtFormulaUsada").value;
	var sexo = document.querySelector("#sexo").value;
	
	//Recebe os campos das dobras triceps
	var triceps1 = document.querySelector("#txtTriceps1");
	var triceps2 = document.querySelector("#txtTriceps2");
	var triceps3 = document.querySelector("#txtTriceps3");
	//Recebe os campos das dobras Bíceps
	var biceps1 = document.querySelector("#txtBiceps1");
	var biceps2 = document.querySelector("#txtBiceps2");
	var biceps3 = document.querySelector("#txtBiceps3");
	//Recebe os campos das dobras Subescapular
	var subescapular1 = document.querySelector("#txtSubescapular1");
	var subescapular2 = document.querySelector("#txtSubescapular2");
	var subescapular3 = document.querySelector("#txtSubescapular3");
	//Recebe os campos das dobras Peito
	var peito1 = document.querySelector("#txtPeito1");
	var peito2 = document.querySelector("#txtPeito2");
	var peito3 = document.querySelector("#txtPeito3");
	//Recebe os campos das dobras Axilar Média
	var axilarMeida1 = document.querySelector("#txtAxilarMedia1");
	var axilarMeida2 = document.querySelector("#txtAxilarMedia2");
	var axilarMeida3 = document.querySelector("#txtAxilarMedia3");
	//Recebe os campos das dobras  Supra Iliaca
	var supraIliaca1 = document.querySelector("#txtSupraIliaca1");
	var supraIliaca2 = document.querySelector("#txtSupraIliaca2");
	var supraIliaca3 = document.querySelector("#txtSupraIliaca3");
	//Recebe os campos das dobras Abdominal
	var admomen1 = document.querySelector("#txtAbdomen1");
	var admomen2 = document.querySelector("#txtAbdomen2");
	var admomen3 = document.querySelector("#txtAbdomen3");
	//Recebe os campos das dobras Coxa Medial
	var coxaMeidal1 = document.querySelector("#txtCoxaMedial1");
	var coxaMeidal2 = document.querySelector("#txtCoxaMedial2");
	var coxaMeidal3 = document.querySelector("#txtCoxaMedial3");
	//Recebe os campos das dobras Coxa Proximal
	var coxaProximal1 = document.querySelector("#txtCoxaProximal1");
	var coxaProximal2 = document.querySelector("#txtCoxaProximal2");
	var coxaProximal3 = document.querySelector("#txtCoxaProximal3");
	//Recebe os campos das dobras Panturrilha
	var panturrilha1 = document.querySelector("#txtPanturrilhal1");
	var panturrilha2 = document.querySelector("#txtPanturrilhal2");
	var panturrilha3 = document.querySelector("#txtPanturrilhal3");
	
	var bioimpedancia = document.querySelector("#txtBioimpedancia");
	
	var cirCintura = document.querySelector("#txtCirCintura");
	var cirAbdomen = document.querySelector("#txtCirAbdomen1");
	var cirIliaco = document.querySelector("#txtCirIliaco");
	var cirQuadril = document.querySelector("#txtCirQuadril");
	
	
	
	if(protocolo =='Soma das dobras'){
		//Habilita e desabilita os campos para edição
		triceps1.disabled=false;
		triceps2.disabled=false;
		triceps3.disabled=false;
		
		biceps1.disabled=false;
		biceps2.disabled=false;
		biceps3.disabled=false;
		
		subescapular1.disabled=false;
		subescapular2.disabled=false;
		subescapular3.disabled=false;
		
		peito1.disabled=false;
		peito2.disabled=false;
		peito3.disabled=false;
		
		axilarMeida1.disabled=false;
		axilarMeida2.disabled=false;
		axilarMeida3.disabled=false;

		supraIliaca1.disabled=false;
		supraIliaca2.disabled=false;
		supraIliaca3.disabled=false;
		
		admomen1.disabled=false;
		admomen2.disabled=false;
		admomen3.disabled=false;
		
		coxaMeidal1.disabled=false;
		coxaMeidal2.disabled=false;
		coxaMeidal3.disabled=false;
		
		coxaProximal1.disabled=false;
		coxaProximal2.disabled=false;
		coxaProximal3.disabled=false;
		
		panturrilha1.disabled=false;
		panturrilha2.disabled=false;
		panturrilha3.disabled=false;
		
		bioimpedancia.disabled=true;
		
		 cirCintura.disabled=true;
		 cirAbdomen.disabled=true; 
		 cirIliaco.disabled=true;
		 cirQuadril.disabled=true;
		
	} else if(protocolo =='Bioimpedância'){
		//Habilita e desabilita os campos para edição
		triceps1.disabled=true;
		triceps2.disabled=true;
		triceps3.disabled=true;
		
		biceps1.disabled=true;
		biceps2.disabled=true;
		biceps3.disabled=true;
		
		subescapular1.disabled=true;
		subescapular2.disabled=true;
		subescapular3.disabled=true;
		
		peito1.disabled=true;
		peito2.disabled=true;
		peito3.disabled=true;
		
		axilarMeida1.disabled=true;
		axilarMeida2.disabled=true;
		axilarMeida3.disabled=true;
		
		supraIliaca1.disabled=true;
		supraIliaca2.disabled=true;
		supraIliaca3.disabled=true;
		
		admomen1.disabled=true;
		admomen2.disabled=true;
		admomen3.disabled=true;
		
		coxaMeidal1.disabled=true;
		coxaMeidal2.disabled=true;
		coxaMeidal3.disabled=true;
		
		coxaProximal1.disabled=true;
		coxaProximal2.disabled=true;
		coxaProximal3.disabled=true;
		
		panturrilha1.disabled=true;
		panturrilha2.disabled=true;
		panturrilha3.disabled=true;
		
		bioimpedancia.disabled=false;
		
		 cirCintura.disabled=true;
		 cirAbdomen.disabled=true; 
		 cirIliaco.disabled=true;
		 cirQuadril.disabled=true;
	}else if(protocolo =='Galagher et al. 2000 - (IMC) - % de gordura pelo IMC' || protocolo=='Deuremberg et al. 1991 (IMC, Idade)-Homem Idoso - Acima de 60 anos' || protocolo=='Escolher protocolo'){
		//Habilita e desabilita os campos para edição
		triceps1.disabled=true;
		triceps2.disabled=true;
		triceps3.disabled=true;
		
		biceps1.disabled=true;
		biceps2.disabled=true;
		biceps3.disabled=true;
		
		subescapular1.disabled=true;
		subescapular2.disabled=true;
		subescapular3.disabled=true;
		
		peito1.disabled=true;
		peito2.disabled=true;
		peito3.disabled=true;
		
		axilarMeida1.disabled=true;
		axilarMeida2.disabled=true;
		axilarMeida3.disabled=true;
		
		supraIliaca1.disabled=true;
		supraIliaca2.disabled=true;
		supraIliaca3.disabled=true;
		
		admomen1.disabled=true;
		admomen2.disabled=true;
		admomen3.disabled=true;
		
		coxaMeidal1.disabled=true;
		coxaMeidal2.disabled=true;
		coxaMeidal3.disabled=true;
		
		coxaProximal1.disabled=true;
		coxaProximal2.disabled=true;
		coxaProximal3.disabled=true;
		
		panturrilha1.disabled=true;
		panturrilha2.disabled=true;
		panturrilha3.disabled=true;
		
		bioimpedancia.disabled=true;
		
		 cirCintura.disabled=true;
		 cirAbdomen.disabled=true; 
		 cirIliaco.disabled=true;
		 cirQuadril.disabled=true;
		 
	}else if(protocolo =='Slaughter et al, 1988 (2 dobras) - Crianças/Adolescentes - Idade 08 a 29 anos'){//Masculino
		//Habilita e desabilita os campos para edição
		triceps1.disabled=false;
		triceps2.disabled=false;
		triceps3.disabled=false;
		
		biceps1.disabled=true;
		biceps2.disabled=true;
		biceps3.disabled=true;
		
		subescapular1.disabled=true;
		subescapular2.disabled=true;
		subescapular3.disabled=true;
		
		peito1.disabled=true;
		peito2.disabled=true;
		peito3.disabled=true;
		
		axilarMeida1.disabled=true;
		axilarMeida2.disabled=true;
		axilarMeida3.disabled=true;
		
		supraIliaca1.disabled=true;
		supraIliaca2.disabled=true;
		supraIliaca3.disabled=true;
		
		admomen1.disabled=true;
		admomen2.disabled=true;
		admomen3.disabled=true;
		
		coxaMeidal1.disabled=true;
		coxaMeidal2.disabled=true;
		coxaMeidal3.disabled=true;
		
		coxaProximal1.disabled=true;
		coxaProximal2.disabled=true;
		coxaProximal3.disabled=true;
		
		panturrilha1.disabled=false;
		panturrilha2.disabled=false;
		panturrilha3.disabled=false;
		
		bioimpedancia.disabled=true;
		
		 cirCintura.disabled=true;
		 cirAbdomen.disabled=true; 
		 cirIliaco.disabled=true;
		 cirQuadril.disabled=true;
	}else if(protocolo =='Slaughter et al, 1988 (2 dobras) Crianças (todas as idades)'){//Feminino
		//Habilita e desabilita os campos para edição
		triceps1.disabled=false;
		triceps2.disabled=false;
		triceps3.disabled=false;
		
		biceps1.disabled=true;
		biceps2.disabled=true;
		biceps3.disabled=true;
		
		subescapular1.disabled=true;
		subescapular2.disabled=true;
		subescapular3.disabled=true;
		
		peito1.disabled=true;
		peito2.disabled=true;
		peito3.disabled=true;
		
		axilarMeida1.disabled=true;
		axilarMeida2.disabled=true;
		axilarMeida3.disabled=true;
		
		supraIliaca1.disabled=true;
		supraIliaca2.disabled=true;
		supraIliaca3.disabled=true;
		
		admomen1.disabled=true;
		admomen2.disabled=true;
		admomen3.disabled=true;
		
		coxaMeidal1.disabled=true;
		coxaMeidal2.disabled=true;
		coxaMeidal3.disabled=true;
		
		coxaProximal1.disabled=true;
		coxaProximal2.disabled=true;
		coxaProximal3.disabled=true;
		
		panturrilha1.disabled=false;
		panturrilha2.disabled=false;
		panturrilha3.disabled=false;
		
		bioimpedancia.disabled=true;
		
		 cirCintura.disabled=true;
		 cirAbdomen.disabled=true; 
		 cirIliaco.disabled=true;
		 cirQuadril.disabled=true;
	}else if(protocolo =='Lohman, 1986 (2 dobras) - Adolescentes - Idade 12 a 14 anos'){
		//Habilita e desabilita os campos para edição
		triceps1.disabled=false;
		triceps2.disabled=false;
		triceps3.disabled=false;
		
		biceps1.disabled=true;
		biceps2.disabled=true;
		biceps3.disabled=true;
		
		subescapular1.disabled=false;
		subescapular2.disabled=false;
		subescapular3.disabled=false;
		
		peito1.disabled=true;
		peito2.disabled=true;
		peito3.disabled=true;
		
		axilarMeida1.disabled=true;
		axilarMeida2.disabled=true;
		axilarMeida3.disabled=true;
		
		supraIliaca1.disabled=true;
		supraIliaca2.disabled=true;
		supraIliaca3.disabled=true;
		
		admomen1.disabled=true;
		admomen2.disabled=true;
		admomen3.disabled=true;
		
		coxaMeidal1.disabled=true;
		coxaMeidal2.disabled=true;
		coxaMeidal3.disabled=true;
		
		coxaProximal1.disabled=true;
		coxaProximal2.disabled=true;
		coxaProximal3.disabled=true;
		
		panturrilha1.disabled=true;
		panturrilha2.disabled=true;
		panturrilha3.disabled=true;
		
		bioimpedancia.disabled=true;
		
		 cirCintura.disabled=true;
		 cirAbdomen.disabled=true; 
		 cirIliaco.disabled=true;
		 cirQuadril.disabled=true;
	}else if(protocolo =='Lean, et al., 1996 (CC, Idade) - % de gordura pela CIRC.DA CINTURA'){//Masculino
		//Habilita e desabilita os campos para edição
		triceps1.disabled=true;
		triceps2.disabled=true;
		triceps3.disabled=true;
		
		biceps1.disabled=true;
		biceps2.disabled=true;
		biceps3.disabled=true;
		
		subescapular1.disabled=true;
		subescapular2.disabled=true;
		subescapular3.disabled=true;
		
		peito1.disabled=true;
		peito2.disabled=true;
		peito3.disabled=true;
		
		axilarMeida1.disabled=true;
		axilarMeida2.disabled=true;
		axilarMeida3.disabled=true;
		
		supraIliaca1.disabled=true;
		supraIliaca2.disabled=true;
		supraIliaca3.disabled=true;
		
		admomen1.disabled=true;
		admomen2.disabled=true;
		admomen3.disabled=true;
		
		coxaMeidal1.disabled=true;
		coxaMeidal2.disabled=true;
		coxaMeidal3.disabled=true;
		
		coxaProximal1.disabled=true;
		coxaProximal2.disabled=true;
		coxaProximal3.disabled=true;
		
		panturrilha1.disabled=true;
		panturrilha2.disabled=true;
		panturrilha3.disabled=true;
		
		bioimpedancia.disabled=true;
		
		 cirCintura.disabled=false;
		 cirAbdomen.disabled=true; 
		 cirIliaco.disabled=true;
		 cirQuadril.disabled=true;
	}else if(protocolo =='Lean, et al., 1996 - % de gordura  CIRC.DA CINTURA (18 a 64 anos e com CC entre 60 e 116cm)'){//Femininio
		//Habilita e desabilita os campos para edição
		triceps1.disabled=true;
		triceps2.disabled=true;
		triceps3.disabled=true;
		
		biceps1.disabled=true;
		biceps2.disabled=true;
		biceps3.disabled=true;
		
		subescapular1.disabled=true;
		subescapular2.disabled=true;
		subescapular3.disabled=true;
		
		peito1.disabled=true;
		peito2.disabled=true;
		peito3.disabled=true;
		
		axilarMeida1.disabled=true;
		axilarMeida2.disabled=true;
		axilarMeida3.disabled=true;
		
		supraIliaca1.disabled=true;
		supraIliaca2.disabled=true;
		supraIliaca3.disabled=true;
		
		admomen1.disabled=true;
		admomen2.disabled=true;
		admomen3.disabled=true;
		
		coxaMeidal1.disabled=true;
		coxaMeidal2.disabled=true;
		coxaMeidal3.disabled=true;
		
		coxaProximal1.disabled=true;
		coxaProximal2.disabled=true;
		coxaProximal3.disabled=true;
		
		panturrilha1.disabled=true;
		panturrilha2.disabled=true;
		panturrilha3.disabled=true;
		
		bioimpedancia.disabled=true;
		
		 cirCintura.disabled=false;
		 cirAbdomen.disabled=true; 
		 cirIliaco.disabled=true;
		 cirQuadril.disabled=true;
	}else if(protocolo =='Jackson & Pollock, 1980 (7 dobras) - Homem Adulto - Idade 18 a 61 anos' || protocolo =='Jackson & Pollock, 1980 (7 dobras) 18 e 55 anos'){//Masculino e femininio
		//Habilita e desabilita os campos para edição
		triceps1.disabled=false;
		triceps2.disabled=false;
		triceps3.disabled=false;
		
		biceps1.disabled=true;
		biceps2.disabled=true;
		biceps3.disabled=true;
		
		subescapular1.disabled=false;
		subescapular2.disabled=false;
		subescapular3.disabled=false;
		
		peito1.disabled=false;
		peito2.disabled=false;
		peito3.disabled=false;
		
		axilarMeida1.disabled=false;
		axilarMeida2.disabled=false;
		axilarMeida3.disabled=false;
		
		supraIliaca1.disabled=false;
		supraIliaca2.disabled=false;
		supraIliaca3.disabled=false;
		
		admomen1.disabled=false;
		admomen2.disabled=false;
		admomen3.disabled=false;
		
		coxaMeidal1.disabled=false;
		coxaMeidal2.disabled=false;
		coxaMeidal3.disabled=false;
		
		coxaProximal1.disabled=true;
		coxaProximal2.disabled=true;
		coxaProximal3.disabled=true;
		
		panturrilha1.disabled=true;
		panturrilha2.disabled=true;
		panturrilha3.disabled=true;
		
		bioimpedancia.disabled=true;
		
		 cirCintura.disabled=true;
		 cirAbdomen.disabled=true; 
		 cirIliaco.disabled=true;
		 cirQuadril.disabled=true;
	}else if(protocolo =='Jackson & Pollock, 1980 (3 dobras) - Homem Adulto - Idade 18 a 61 anos'){
		//Habilita e desabilita os campos para edição
		triceps1.disabled=true;
		triceps2.disabled=true;
		triceps3.disabled=true;
		
		biceps1.disabled=true;
		biceps2.disabled=true;
		biceps3.disabled=true;
		
		subescapular1.disabled=true;
		subescapular2.disabled=true;
		subescapular3.disabled=true;
		
		peito1.disabled=false;
		peito2.disabled=false;
		peito3.disabled=false;
		
		axilarMeida1.disabled=true;
		axilarMeida2.disabled=true;
		axilarMeida3.disabled=true;
		
		supraIliaca1.disabled=true;
		supraIliaca2.disabled=true;
		supraIliaca3.disabled=true;
		
		admomen1.disabled=false;
		admomen2.disabled=false;
		admomen3.disabled=false;
		
		coxaMeidal1.disabled=false;
		coxaMeidal2.disabled=false;
		coxaMeidal3.disabled=false;
		
		coxaProximal1.disabled=true;
		coxaProximal2.disabled=true;
		coxaProximal3.disabled=true;
		
		panturrilha1.disabled=true;
		panturrilha2.disabled=true;
		panturrilha3.disabled=true;
		
		bioimpedancia.disabled=true;
		
		 cirCintura.disabled=true;
		 cirAbdomen.disabled=true; 
		 cirIliaco.disabled=true;
		 cirQuadril.disabled=true;
	}else if(protocolo =='Jackson, Pollock & Ward, 1980 (3 dobras)  18 a 55 anos'){
		//Habilita e desabilita os campos para edição
		triceps1.disabled=false;
		triceps2.disabled=false;
		triceps3.disabled=false;
		
		biceps1.disabled=true;
		biceps2.disabled=true;
		biceps3.disabled=true;
		
		subescapular1.disabled=true;
		subescapular2.disabled=true;
		subescapular3.disabled=true;
		
		peito1.disabled=true;
		peito2.disabled=true;
		peito3.disabled=true;
		
		axilarMeida1.disabled=true;
		axilarMeida2.disabled=true;
		axilarMeida3.disabled=true;
		
		supraIliaca1.disabled=false;
		supraIliaca2.disabled=false;
		supraIliaca3.disabled=false;
		
		admomen1.disabled=true;
		admomen2.disabled=true;
		admomen3.disabled=true;
		
		coxaMeidal1.disabled=false;
		coxaMeidal2.disabled=false;
		coxaMeidal3.disabled=false;
		
		coxaProximal1.disabled=true;
		coxaProximal2.disabled=true;
		coxaProximal3.disabled=true;
		
		panturrilha1.disabled=true;
		panturrilha2.disabled=true;
		panturrilha3.disabled=true;
		
		bioimpedancia.disabled=true;
		
		 cirCintura.disabled=true;
		 cirAbdomen.disabled=true; 
		 cirIliaco.disabled=true;
		 cirQuadril.disabled=true;
	}else if(protocolo =='Petroski, 1995 (4 dobras) - Homem Adulto - Idade 18 a 61 anos' || protocolo=='Petroski, 1995 (4 dobras) 18 a 51 anos'){//Masc e fem
		//Habilita e desabilita os campos para edição
		triceps1.disabled=false;
		triceps2.disabled=false;
		triceps3.disabled=false;
		
		biceps1.disabled=true;
		biceps2.disabled=true;
		biceps3.disabled=true;
		
		subescapular1.disabled=false;
		subescapular2.disabled=false;
		subescapular3.disabled=false;
		
		peito1.disabled=true;
		peito2.disabled=true;
		peito3.disabled=true;
		
		axilarMeida1.disabled=true;
		axilarMeida2.disabled=true;
		axilarMeida3.disabled=true;
		
		supraIliaca1.disabled=false;
		supraIliaca2.disabled=false;
		supraIliaca3.disabled=false;
		
		admomen1.disabled=true;
		admomen2.disabled=true;
		admomen3.disabled=true;
		
		coxaMeidal1.disabled=true;
		coxaMeidal2.disabled=true;
		coxaMeidal3.disabled=true;
		
		coxaProximal1.disabled=true;
		coxaProximal2.disabled=true;
		coxaProximal3.disabled=true;
		
		panturrilha1.disabled=false;
		panturrilha2.disabled=false;
		panturrilha3.disabled=false;
		
		bioimpedancia.disabled=true;
		
		 cirCintura.disabled=true;
		 cirAbdomen.disabled=true; 
		 cirIliaco.disabled=true;
		 cirQuadril.disabled=true;
	}else if(protocolo =='Tran & Weltman, 1989 - 15 a 79 anos'){//Feminino
		//Habilita e desabilita os campos para edição
		triceps1.disabled=true;
		triceps2.disabled=true;
		triceps3.disabled=true;
		
		biceps1.disabled=true;
		biceps2.disabled=true;
		biceps3.disabled=true;
		
		subescapular1.disabled=true;
		subescapular2.disabled=true;
		subescapular3.disabled=true;
		
		peito1.disabled=true;
		peito2.disabled=true;
		peito3.disabled=true;
		
		axilarMeida1.disabled=true;
		axilarMeida2.disabled=true;
		axilarMeida3.disabled=true;
		
		supraIliaca1.disabled=true;
		supraIliaca2.disabled=true;
		supraIliaca3.disabled=true;
		
		admomen1.disabled=true;
		admomen2.disabled=true;
		admomen3.disabled=true;
		
		coxaMeidal1.disabled=true;
		coxaMeidal2.disabled=true;
		coxaMeidal3.disabled=true;
		
		coxaProximal1.disabled=true;
		coxaProximal2.disabled=true;
		coxaProximal3.disabled=true;
		
		panturrilha1.disabled=true;
		panturrilha2.disabled=true;
		panturrilha3.disabled=true;
		
		bioimpedancia.disabled=true;
		
		 cirCintura.disabled=false;
		 cirAbdomen.disabled=false; 
		 cirIliaco.disabled=true;
		 cirQuadril.disabled=false;
	}else if(protocolo =='Tran e Weltman, 1988 (Pabd, PQd, Pil, MC) - Homem Idoso - 60 a 81 anos (IMC >25Kg/m2)'){
		//Habilita e desabilita os campos para edição
		triceps1.disabled=true;
		triceps2.disabled=true;
		triceps3.disabled=true;
		
		biceps1.disabled=true;
		biceps2.disabled=true;
		biceps3.disabled=true;
		
		subescapular1.disabled=true;
		subescapular2.disabled=true;
		subescapular3.disabled=true;
		
		peito1.disabled=true;
		peito2.disabled=true;
		peito3.disabled=true;
		
		axilarMeida1.disabled=true;
		axilarMeida2.disabled=true;
		axilarMeida3.disabled=true;
		
		supraIliaca1.disabled=true;
		supraIliaca2.disabled=true;
		supraIliaca3.disabled=true;
		
		admomen1.disabled=true;
		admomen2.disabled=true;
		admomen3.disabled=true;
		
		coxaMeidal1.disabled=true;
		coxaMeidal2.disabled=true;
		coxaMeidal3.disabled=true;
		
		coxaProximal1.disabled=true;
		coxaProximal2.disabled=true;
		coxaProximal3.disabled=true;
		
		panturrilha1.disabled=true;
		panturrilha2.disabled=true;
		panturrilha3.disabled=true;
		
		bioimpedancia.disabled=true;
		
		 cirCintura.disabled=true;
		 cirAbdomen.disabled=false; 
		 cirIliaco.disabled=false;
		 cirQuadril.disabled=false;
	}else if(protocolo =='Guedes, 1985 (2 dobras) 17 a 27 anos'){
	//Habilita e desabilita os campos para edição
	triceps1.disabled=true;
	triceps2.disabled=true;
	triceps3.disabled=true;
	
	biceps1.disabled=true;
	biceps2.disabled=true;
	biceps3.disabled=true;
	
	subescapular1.disabled=true;
	subescapular2.disabled=true;
	subescapular3.disabled=true;
	
	peito1.disabled=true;
	peito2.disabled=true;
	peito3.disabled=true;
	
	axilarMeida1.disabled=true;
	axilarMeida2.disabled=true;
	axilarMeida3.disabled=true;
	
	supraIliaca1.disabled=false;
	supraIliaca2.disabled=false;
	supraIliaca3.disabled=false;
	
	admomen1.disabled=true;
	admomen2.disabled=true;
	admomen3.disabled=true;
	
	coxaMeidal1.disabled=false;
	coxaMeidal2.disabled=false;
	coxaMeidal3.disabled=false;
	
	coxaProximal1.disabled=true;
	coxaProximal2.disabled=true;
	coxaProximal3.disabled=true;
	
	panturrilha1.disabled=true;
	panturrilha2.disabled=true;
	panturrilha3.disabled=true;
	
	bioimpedancia.disabled=true;
	
	 cirCintura.disabled=true;
	 cirAbdomen.disabled=true; 
	 cirIliaco.disabled=true;
	 cirQuadril.disabled=true;
}else if(protocolo =='Rech, Santos e Silva, 2006 - 50 a 75 anos'){
	//Habilita e desabilita os campos para edição
	triceps1.disabled=true;
	triceps2.disabled=true;
	triceps3.disabled=true;
	
	biceps1.disabled=true;
	biceps2.disabled=true;
	biceps3.disabled=true;
	
	subescapular1.disabled=true;
	subescapular2.disabled=true;
	subescapular3.disabled=true;
	
	peito1.disabled=true;
	peito2.disabled=true;
	peito3.disabled=true;
	
	axilarMeida1.disabled=true;
	axilarMeida2.disabled=true;
	axilarMeida3.disabled=true;
	
	supraIliaca1.disabled=true;
	supraIliaca2.disabled=true;
	supraIliaca3.disabled=true;
	
	admomen1.disabled=false;
	admomen2.disabled=false;
	admomen3.disabled=false;
	
	coxaMeidal1.disabled=true;
	coxaMeidal2.disabled=true;
	coxaMeidal3.disabled=true;
	
	coxaProximal1.disabled=true;
	coxaProximal2.disabled=true;
	coxaProximal3.disabled=true;
	
	panturrilha1.disabled=true;
	panturrilha2.disabled=true;
	panturrilha3.disabled=true;
	
	bioimpedancia.disabled=true;
	
	 cirCintura.disabled=true;
	 cirAbdomen.disabled=true; 
	 cirIliaco.disabled=true;
	 cirQuadril.disabled=true;
}

}

function mediaTriceps(){
	
	var dobra1 = document.querySelector('#txtTriceps1').value;
	var dobra2 = document.querySelector('#txtTriceps2').value;
	var dobra3 = document.querySelector('#txtTriceps3').value;
	
	var dobra1Conver = 0
	var dobra2Conver = 0
	var dobra3Conver = 0
	
	if(dobra1==""){
		dobra1Conver = 0;
	}else{
		dobra1Conver = parseFloat(dobra1);
	}
	
	if(dobra2==""){
		dobra2Conver = 0;
	}else{
		dobra2Conver = parseFloat(dobra2);
	}
	
	if(dobra3==""){
		dobra3Conver = 0;
	}else{
		dobra3Conver = parseFloat(dobra3);
	}
	
	
	var media = 0;
	
	if(dobra1Conver == 0 && dobra2Conver==0 && dobra3Conver==0){
		media = 0;
	}else if(dobra1Conver == 0  && dobra2Conver==0  && !dobra3Conver==0){
		media = dobra3Conver;
	}else if(dobra1Conver == 0 && !dobra2Conver==0 && dobra3Conver==0){
		media = dobra2Conver;
	}else if(dobra1Conver == 0 && !dobra2Conver==0 && !dobra3Conver==0){
		media = (dobra2Conver + dobra3Conver)/2;
	}else if(!dobra1Conver == 0 && dobra2Conver==0 && dobra3Conver==0){
		media = dobra1Conver;
	}else if(!dobra1Conver == 0 && dobra2Conver==0 && !dobra3Conver==0){
		media = (dobra1Conver + dobra3Conver)/2;
	}else if(!dobra1Conver == 0 && !dobra2Conver==0 && dobra3Conver==0){
		media = (dobra1Conver + dobra2Conver)/2;
	}else if(!dobra1Conver == 0 && !dobra2Conver==0 && !dobra3Conver==0){
		media = (dobra1Conver + dobra2Conver + dobra3Conver)/3;
	}
	
	document.querySelector('#txtMediaTriceps').value = media.toFixed(2);
	somaDasDobras();
}

function mediaBiceps(){
	
	var dobra1 = document.querySelector('#txtBiceps1').value;
	var dobra2 = document.querySelector('#txtBiceps2').value;
	var dobra3 = document.querySelector('#txtBiceps3').value;
	
	var dobra1Conver = 0
	var dobra2Conver = 0
	var dobra3Conver = 0
	
	if(dobra1==""){
		dobra1Conver = 0;
	}else{
		dobra1Conver = parseFloat(dobra1);
	}
	
	if(dobra2==""){
		dobra2Conver = 0;
	}else{
		dobra2Conver = parseFloat(dobra2);
	}
	
	if(dobra3==""){
		dobra3Conver = 0;
	}else{
		dobra3Conver = parseFloat(dobra3);
	}
	
	
	var media = 0;
	
	if(dobra1Conver == 0 && dobra2Conver==0 && dobra3Conver==0){
		media = 0;
	}else if(dobra1Conver == 0  && dobra2Conver==0  && !dobra3Conver==0){
		media = dobra3Conver;
	}else if(dobra1Conver == 0 && !dobra2Conver==0 && dobra3Conver==0){
		media = dobra2Conver;
	}else if(dobra1Conver == 0 && !dobra2Conver==0 && !dobra3Conver==0){
		media = (dobra2Conver + dobra3Conver)/2;
	}else if(!dobra1Conver == 0 && dobra2Conver==0 && dobra3Conver==0){
		media = dobra1Conver;
	}else if(!dobra1Conver == 0 && dobra2Conver==0 && !dobra3Conver==0){
		media = (dobra1Conver + dobra3Conver)/2;
	}else if(!dobra1Conver == 0 && !dobra2Conver==0 && dobra3Conver==0){
		media = (dobra1Conver + dobra2Conver)/2;
	}else if(!dobra1Conver == 0 && !dobra2Conver==0 && !dobra3Conver==0){
		media = (dobra1Conver + dobra2Conver + dobra3Conver)/3;
	}
		
	document.querySelector('#txtMediaBiceps').value =  media.toFixed(2);
	somaDasDobras();
	
}

function mediaSubescapular(){
	
	var dobra1 = document.querySelector('#txtSubescapular1').value;
	var dobra2 = document.querySelector('#txtSubescapular2').value;
	var dobra3 = document.querySelector('#txtSubescapular3').value;
	
	var dobra1Conver = 0
	var dobra2Conver = 0
	var dobra3Conver = 0
	
	if(dobra1==""){
		dobra1Conver = 0;
	}else{
		dobra1Conver = parseFloat(dobra1);
	}
	
	if(dobra2==""){
		dobra2Conver = 0;
	}else{
		dobra2Conver = parseFloat(dobra2);
	}
	
	if(dobra3==""){
		dobra3Conver = 0;
	}else{
		dobra3Conver = parseFloat(dobra3);
	}
	
	
	var media = 0;
	
	if(dobra1Conver == 0 && dobra2Conver==0 && dobra3Conver==0){
		media = 0;
	}else if(dobra1Conver == 0  && dobra2Conver==0  && !dobra3Conver==0){
		media = dobra3Conver;
	}else if(dobra1Conver == 0 && !dobra2Conver==0 && dobra3Conver==0){
		media = dobra2Conver;
	}else if(dobra1Conver == 0 && !dobra2Conver==0 && !dobra3Conver==0){
		media = (dobra2Conver + dobra3Conver)/2;
	}else if(!dobra1Conver == 0 && dobra2Conver==0 && dobra3Conver==0){
		media = dobra1Conver;
	}else if(!dobra1Conver == 0 && dobra2Conver==0 && !dobra3Conver==0){
		media = (dobra1Conver + dobra3Conver)/2;
	}else if(!dobra1Conver == 0 && !dobra2Conver==0 && dobra3Conver==0){
		media = (dobra1Conver + dobra2Conver)/2;
	}else if(!dobra1Conver == 0 && !dobra2Conver==0 && !dobra3Conver==0){
		media = (dobra1Conver + dobra2Conver + dobra3Conver)/3;
	}
		
	document.querySelector('#txtMediaSubescapular').value =  media.toFixed(2);
	somaDasDobras();
}

function mediaPeito(){
	
	var dobra1 = document.querySelector('#txtPeito1').value;
	var dobra2 = document.querySelector('#txtPeito2').value;
	var dobra3 = document.querySelector('#txtPeito3').value;
	
	var dobra1Conver = 0
	var dobra2Conver = 0
	var dobra3Conver = 0
	
	if(dobra1==""){
		dobra1Conver = 0;
	}else{
		dobra1Conver = parseFloat(dobra1);
	}
	
	if(dobra2==""){
		dobra2Conver = 0;
	}else{
		dobra2Conver = parseFloat(dobra2);
	}
	
	if(dobra3==""){
		dobra3Conver = 0;
	}else{
		dobra3Conver = parseFloat(dobra3);
	}
	
	
	var media = 0;
	
	if(dobra1Conver == 0 && dobra2Conver==0 && dobra3Conver==0){
		media = 0;
	}else if(dobra1Conver == 0  && dobra2Conver==0  && !dobra3Conver==0){
		media = dobra3Conver;
	}else if(dobra1Conver == 0 && !dobra2Conver==0 && dobra3Conver==0){
		media = dobra2Conver;
	}else if(dobra1Conver == 0 && !dobra2Conver==0 && !dobra3Conver==0){
		media = (dobra2Conver + dobra3Conver)/2;
	}else if(!dobra1Conver == 0 && dobra2Conver==0 && dobra3Conver==0){
		media = dobra1Conver;
	}else if(!dobra1Conver == 0 && dobra2Conver==0 && !dobra3Conver==0){
		media = (dobra1Conver + dobra3Conver)/2;
	}else if(!dobra1Conver == 0 && !dobra2Conver==0 && dobra3Conver==0){
		media = (dobra1Conver + dobra2Conver)/2;
	}else if(!dobra1Conver == 0 && !dobra2Conver==0 && !dobra3Conver==0){
		media = (dobra1Conver + dobra2Conver + dobra3Conver)/3;
	}
		
	document.querySelector('#txtMediaPeito').value =  media.toFixed(2);
	somaDasDobras();
}

function mediaAxilarMedia(){
	
	var dobra1 = document.querySelector('#txtAxilarMedia1').value;
	var dobra2 = document.querySelector('#txtAxilarMedia2').value;
	var dobra3 = document.querySelector('#txtAxilarMedia3').value;
	
	var dobra1Conver = 0
	var dobra2Conver = 0
	var dobra3Conver = 0
	
	if(dobra1==""){
		dobra1Conver = 0;
	}else{
		dobra1Conver = parseFloat(dobra1);
	}
	
	if(dobra2==""){
		dobra2Conver = 0;
	}else{
		dobra2Conver = parseFloat(dobra2);
	}
	
	if(dobra3==""){
		dobra3Conver = 0;
	}else{
		dobra3Conver = parseFloat(dobra3);
	}
	
	
	var media = 0;
	
	if(dobra1Conver == 0 && dobra2Conver==0 && dobra3Conver==0){
		media = 0;
	}else if(dobra1Conver == 0  && dobra2Conver==0  && !dobra3Conver==0){
		media = dobra3Conver;
	}else if(dobra1Conver == 0 && !dobra2Conver==0 && dobra3Conver==0){
		media = dobra2Conver;
	}else if(dobra1Conver == 0 && !dobra2Conver==0 && !dobra3Conver==0){
		media = (dobra2Conver + dobra3Conver)/2;
	}else if(!dobra1Conver == 0 && dobra2Conver==0 && dobra3Conver==0){
		media = dobra1Conver;
	}else if(!dobra1Conver == 0 && dobra2Conver==0 && !dobra3Conver==0){
		media = (dobra1Conver + dobra3Conver)/2;
	}else if(!dobra1Conver == 0 && !dobra2Conver==0 && dobra3Conver==0){
		media = (dobra1Conver + dobra2Conver)/2;
	}else if(!dobra1Conver == 0 && !dobra2Conver==0 && !dobra3Conver==0){
		media = (dobra1Conver + dobra2Conver + dobra3Conver)/3;
	}
		
	document.querySelector('#txtAxilarMedia').value =  media.toFixed(2);
	somaDasDobras();
}

function mediaSupraIliaca(){
	
	var dobra1 = document.querySelector('#txtSupraIliaca1').value;
	var dobra2 = document.querySelector('#txtSupraIliaca2').value;
	var dobra3 = document.querySelector('#txtSupraIliaca3').value;
	
	var dobra1Conver = 0
	var dobra2Conver = 0
	var dobra3Conver = 0
	
	if(dobra1==""){
		dobra1Conver = 0;
	}else{
		dobra1Conver = parseFloat(dobra1);
	}
	
	if(dobra2==""){
		dobra2Conver = 0;
	}else{
		dobra2Conver = parseFloat(dobra2);
	}
	
	if(dobra3==""){
		dobra3Conver = 0;
	}else{
		dobra3Conver = parseFloat(dobra3);
	}
	
	
	var media = 0;
	
	if(dobra1Conver == 0 && dobra2Conver==0 && dobra3Conver==0){
		media = 0;
	}else if(dobra1Conver == 0  && dobra2Conver==0  && !dobra3Conver==0){
		media = dobra3Conver;
	}else if(dobra1Conver == 0 && !dobra2Conver==0 && dobra3Conver==0){
		media = dobra2Conver;
	}else if(dobra1Conver == 0 && !dobra2Conver==0 && !dobra3Conver==0){
		media = (dobra2Conver + dobra3Conver)/2;
	}else if(!dobra1Conver == 0 && dobra2Conver==0 && dobra3Conver==0){
		media = dobra1Conver;
	}else if(!dobra1Conver == 0 && dobra2Conver==0 && !dobra3Conver==0){
		media = (dobra1Conver + dobra3Conver)/2;
	}else if(!dobra1Conver == 0 && !dobra2Conver==0 && dobra3Conver==0){
		media = (dobra1Conver + dobra2Conver)/2;
	}else if(!dobra1Conver == 0 && !dobra2Conver==0 && !dobra3Conver==0){
		media = (dobra1Conver + dobra2Conver + dobra3Conver)/3;
	}
		
	document.querySelector('#txtSupraIliacaMedia').value =  media.toFixed(2);
	somaDasDobras();
}

function mediaAbdomen(){
	
	var dobra1 = document.querySelector('#txtAbdomen1').value;
	var dobra2 = document.querySelector('#txtAbdomen2').value;
	var dobra3 = document.querySelector('#txtAbdomen3').value;
	
	var dobra1Conver = 0
	var dobra2Conver = 0
	var dobra3Conver = 0
	
	if(dobra1==""){
		dobra1Conver = 0;
	}else{
		dobra1Conver = parseFloat(dobra1);
	}
	
	if(dobra2==""){
		dobra2Conver = 0;
	}else{
		dobra2Conver = parseFloat(dobra2);
	}
	
	if(dobra3==""){
		dobra3Conver = 0;
	}else{
		dobra3Conver = parseFloat(dobra3);
	}
	
	
	var media = 0;
	
	if(dobra1Conver == 0 && dobra2Conver==0 && dobra3Conver==0){
		media = 0;
	}else if(dobra1Conver == 0  && dobra2Conver==0  && !dobra3Conver==0){
		media = dobra3Conver;
	}else if(dobra1Conver == 0 && !dobra2Conver==0 && dobra3Conver==0){
		media = dobra2Conver;
	}else if(dobra1Conver == 0 && !dobra2Conver==0 && !dobra3Conver==0){
		media = (dobra2Conver + dobra3Conver)/2;
	}else if(!dobra1Conver == 0 && dobra2Conver==0 && dobra3Conver==0){
		media = dobra1Conver;
	}else if(!dobra1Conver == 0 && dobra2Conver==0 && !dobra3Conver==0){
		media = (dobra1Conver + dobra3Conver)/2;
	}else if(!dobra1Conver == 0 && !dobra2Conver==0 && dobra3Conver==0){
		media = (dobra1Conver + dobra2Conver)/2;
	}else if(!dobra1Conver == 0 && !dobra2Conver==0 && !dobra3Conver==0){
		media = (dobra1Conver + dobra2Conver + dobra3Conver)/3;
	}
		
	document.querySelector('#txtAbdomenMedia').value =  media.toFixed(2);
	somaDasDobras();
}

function mediaCoxaMedial(){
	
	var dobra1 = document.querySelector('#txtCoxaMedial1').value;
	var dobra2 = document.querySelector('#txtCoxaMedial2').value;
	var dobra3 = document.querySelector('#txtCoxaMedial3').value;
	
	var dobra1Conver = 0
	var dobra2Conver = 0
	var dobra3Conver = 0
	
	if(dobra1==""){
		dobra1Conver = 0;
	}else{
		dobra1Conver = parseFloat(dobra1);
	}
	
	if(dobra2==""){
		dobra2Conver = 0;
	}else{
		dobra2Conver = parseFloat(dobra2);
	}
	
	if(dobra3==""){
		dobra3Conver = 0;
	}else{
		dobra3Conver = parseFloat(dobra3);
	}
	
	
	var media = 0;
	
	if(dobra1Conver == 0 && dobra2Conver==0 && dobra3Conver==0){
		media = 0;
	}else if(dobra1Conver == 0  && dobra2Conver==0  && !dobra3Conver==0){
		media = dobra3Conver;
	}else if(dobra1Conver == 0 && !dobra2Conver==0 && dobra3Conver==0){
		media = dobra2Conver;
	}else if(dobra1Conver == 0 && !dobra2Conver==0 && !dobra3Conver==0){
		media = (dobra2Conver + dobra3Conver)/2;
	}else if(!dobra1Conver == 0 && dobra2Conver==0 && dobra3Conver==0){
		media = dobra1Conver;
	}else if(!dobra1Conver == 0 && dobra2Conver==0 && !dobra3Conver==0){
		media = (dobra1Conver + dobra3Conver)/2;
	}else if(!dobra1Conver == 0 && !dobra2Conver==0 && dobra3Conver==0){
		media = (dobra1Conver + dobra2Conver)/2;
	}else if(!dobra1Conver == 0 && !dobra2Conver==0 && !dobra3Conver==0){
		media = (dobra1Conver + dobra2Conver + dobra3Conver)/3;
	}
		
	document.querySelector('#txtCoxaMedialMedia').value =  media.toFixed(2);
	somaDasDobras();
}

function mediaCoxaProximal(){
	
	var dobra1 = document.querySelector('#txtCoxaProximal1').value;
	var dobra2 = document.querySelector('#txtCoxaProximal2').value;
	var dobra3 = document.querySelector('#txtCoxaProximal3').value;
	
	var dobra1Conver = 0
	var dobra2Conver = 0
	var dobra3Conver = 0
	
	if(dobra1==""){
		dobra1Conver = 0;
	}else{
		dobra1Conver = parseFloat(dobra1);
	}
	
	if(dobra2==""){
		dobra2Conver = 0;
	}else{
		dobra2Conver = parseFloat(dobra2);
	}
	
	if(dobra3==""){
		dobra3Conver = 0;
	}else{
		dobra3Conver = parseFloat(dobra3);
	}
	
	
	var media = 0;
	
	if(dobra1Conver == 0 && dobra2Conver==0 && dobra3Conver==0){
		media = 0;
	}else if(dobra1Conver == 0  && dobra2Conver==0  && !dobra3Conver==0){
		media = dobra3Conver;
	}else if(dobra1Conver == 0 && !dobra2Conver==0 && dobra3Conver==0){
		media = dobra2Conver;
	}else if(dobra1Conver == 0 && !dobra2Conver==0 && !dobra3Conver==0){
		media = (dobra2Conver + dobra3Conver)/2;
	}else if(!dobra1Conver == 0 && dobra2Conver==0 && dobra3Conver==0){
		media = dobra1Conver;
	}else if(!dobra1Conver == 0 && dobra2Conver==0 && !dobra3Conver==0){
		media = (dobra1Conver + dobra3Conver)/2;
	}else if(!dobra1Conver == 0 && !dobra2Conver==0 && dobra3Conver==0){
		media = (dobra1Conver + dobra2Conver)/2;
	}else if(!dobra1Conver == 0 && !dobra2Conver==0 && !dobra3Conver==0){
		media = (dobra1Conver + dobra2Conver + dobra3Conver)/3;
	}
		
	document.querySelector('#txtCoxaProximallMedia').value =  media.toFixed(2);
	somaDasDobras();
}

function mediaPanturrilha(){
	
	var dobra1 = document.querySelector('#txtPanturrilhal1').value;
	var dobra2 = document.querySelector('#txtPanturrilhal2').value;
	var dobra3 = document.querySelector('#txtPanturrilhal3').value;
	
	var dobra1Conver = 0
	var dobra2Conver = 0
	var dobra3Conver = 0
	
	if(dobra1==""){
		dobra1Conver = 0;
	}else{
		dobra1Conver = parseFloat(dobra1);
	}
	
	if(dobra2==""){
		dobra2Conver = 0;
	}else{
		dobra2Conver = parseFloat(dobra2);
	}
	
	if(dobra3==""){
		dobra3Conver = 0;
	}else{
		dobra3Conver = parseFloat(dobra3);
	}
	
	
	var media = 0;
	
	if(dobra1Conver == 0 && dobra2Conver==0 && dobra3Conver==0){
		media = 0;
	}else if(dobra1Conver == 0  && dobra2Conver==0  && !dobra3Conver==0){
		media = dobra3Conver;
	}else if(dobra1Conver == 0 && !dobra2Conver==0 && dobra3Conver==0){
		media = dobra2Conver;
	}else if(dobra1Conver == 0 && !dobra2Conver==0 && !dobra3Conver==0){
		media = (dobra2Conver + dobra3Conver)/2;
	}else if(!dobra1Conver == 0 && dobra2Conver==0 && dobra3Conver==0){
		media = dobra1Conver;
	}else if(!dobra1Conver == 0 && dobra2Conver==0 && !dobra3Conver==0){
		media = (dobra1Conver + dobra3Conver)/2;
	}else if(!dobra1Conver == 0 && !dobra2Conver==0 && dobra3Conver==0){
		media = (dobra1Conver + dobra2Conver)/2;
	}else if(!dobra1Conver == 0 && !dobra2Conver==0 && !dobra3Conver==0){
		media = (dobra1Conver + dobra2Conver + dobra3Conver)/3;
	}
		
	document.querySelector('#txtPanturrilhalMedia').value =  media.toFixed(2);
	somaDasDobras();
}

function somaDasDobras(){
	var mediaTriceps = document.querySelector('#txtMediaTriceps').value;
	var mediaBiceps = document.querySelector('#txtMediaBiceps').value;
	var mediaSubescapular = document.querySelector('#txtMediaSubescapular').value;
	var mediaPeito = document.querySelector('#txtMediaPeito').value;
	var mediaAxilarMedia = document.querySelector('#txtAxilarMedia').value;
	var mediaSupraIliaca = document.querySelector('#txtSupraIliacaMedia').value;
	var mediaAbdomen = document.querySelector('#txtAbdomenMedia').value;
	var mediaCoxaMedial = document.querySelector('#txtCoxaMedialMedia').value;
	var mediaCoxaProximal = document.querySelector('#txtCoxaProximallMedia').value;
	var mediaPanturrila = document.querySelector('#txtPanturrilhalMedia').value;
	
	var mediaTricepsConv = 0;
	var mediaBicepsConv = 0
	var mediaSubescapularConv = 0;
	var mediaPeitoConv = 0;
	var mediaAxilarMediaConv = 0;
	var mediaSupraIliacaConv = 0;
	var mediaAbdomenConv = 0;
	var mediaCoxaMedialConv = 0;
	var mediaCoxaProximalConv = 0;
	var mediaPanturrilaConv = 0;
	
	if(mediaTriceps==""){
		mediaTricepsConv = 0;
	}else{
		mediaTricepsConv = parseFloat(mediaTriceps);
	}
	
	if(mediaBiceps==""){
		mediaBicepsConv = 0;
	}else{
		mediaBicepsConv = parseFloat(mediaBiceps);
	}
	
	if(mediaSubescapular==""){
		mediaSubescapularConv = 0;
	}else{
		mediaSubescapularConv = parseFloat(mediaSubescapular);
	}
	
	if(mediaPeito==""){
		mediaPeitoConv = 0;
	}else{
		mediaPeitoConv = parseFloat(mediaPeito);
	}
	
	if(mediaAxilarMedia==""){
		mediaAxilarMediaConv = 0;
	}else{
		mediaAxilarMediaConv = parseFloat(mediaAxilarMedia);
	}
	
	if(mediaSupraIliaca==""){
		mediaSupraIliacaConv = 0;
	}else{
		mediaSupraIliacaConv = parseFloat(mediaSupraIliaca);
	}
	
	if(mediaAbdomen==""){
		mediaAbdomenConv = 0;
	}else{
		mediaAbdomenConv = parseFloat(mediaAbdomen);
	}
	
	if(mediaCoxaMedial==""){
		mediaCoxaMedialConv = 0;
	}else{
		mediaCoxaMedialConv = parseFloat(mediaCoxaMedial);
	}
	
	if(mediaCoxaProximal==""){
		mediaCoxaProximalConv = 0;
	}else{
		mediaCoxaProximalConv = parseFloat(mediaCoxaProximal);
	}
	
	if(mediaPanturrila==""){
		mediaPanturrilaConv = 0;
	}else{
		mediaPanturrilaConv = parseFloat(mediaPanturrila);
	}
	
	var mediaDasDobras = (mediaTricepsConv + mediaBicepsConv + mediaSubescapularConv + mediaPeitoConv + mediaAxilarMediaConv + mediaSupraIliacaConv + mediaAbdomenConv + mediaCoxaMedialConv + mediaCoxaProximalConv + mediaPanturrilaConv);
	document.querySelector('#txtSomaDobras').value = mediaDasDobras;
}

function calculaPercentualGordura(){
	var protocolo = document.querySelector('#txtFormulaUsada').value;
	var idade = document.getElementById('idade').value;
	var mediaTriceps = document.querySelector('#txtMediaTriceps').value;
	var mediaBiceps = document.querySelector('#txtMediaBiceps').value;
	var mediaSubescapular = document.querySelector('#txtMediaSubescapular').value;
	var mediaPeito = document.querySelector('#txtMediaPeito').value;
	var mediaAxilarMedia = document.querySelector('#txtAxilarMedia').value;
	var mediaSupraIliaca = document.querySelector('#txtSupraIliacaMedia').value;
	var mediaAbdomen = document.querySelector('#txtAbdomenMedia').value;
	var mediaCoxaMedial = document.querySelector('#txtCoxaMedialMedia').value;
	var mediaCoxaProximal = document.querySelector('#txtCoxaProximallMedia').value;
	var mediaPanturrila = document.querySelector('#txtPanturrilhalMedia').value;
	var peso = document.querySelector('#txtPeso').value;
	var altura = document.querySelector('#txtAltura').value;
	var sexo = document.querySelector('#sexo').value;
	var cirCintura = document.querySelector('#txtCirCintura').value;
	var cirAbdomen1 = document.querySelector('#txtCirAbdomen1').value;
	var cirQuadril = document.querySelector('#txtCirQuadril').value;
	var cirIliaco = document.querySelector('#txtCirIliaco').value;
	var bioimpedancia = document.querySelector('#txtBioimpedancia').value;
	
	var idadeConv = parseFloat(idade);
	var mediaTricepsConv = 0;
	var mediaBicepsConv = 0
	var mediaSubescapularConv = 0;
	var mediaPeitoConv = 0;
	var mediaAxilarMediaConv = 0;
	var mediaSupraIliacaConv = 0;
	var mediaAbdomenConv = 0;
	var mediaCoxaMedialConv = 0;
	var mediaCoxaProximalConv = 0;
	var mediaPanturrilaConv = 0;
	var pesoConv = 0;
	var alturaConv = 0;
	var cirCinturaConv = 0;
	var cirAbdomenConv = 0;
	var cirQuadrilConv = 0;
	var cirIliacoConv = 0;
	var bioimpedanciaConv = 0;
	
	
	if(mediaTriceps==""){
		mediaTricepsConv = 0;
	}else{
		mediaTricepsConv = parseFloat(mediaTriceps);
	}
	
	if(mediaBiceps==""){
		mediaBicepsConv = 0;
	}else{
		mediaBicepsConv = parseFloat(mediaBiceps);
	}
	
	if(mediaSubescapular==""){
		mediaSubescapularConv = 0;
	}else{
		mediaSubescapularConv = parseFloat(mediaSubescapular);
	}
	
	if(mediaPeito==""){
		mediaPeitoConv = 0;
	}else{
		mediaPeitoConv = parseFloat(mediaPeito);
	}
	
	if(mediaAxilarMedia==""){
		mediaAxilarMediaConv = 0;
	}else{
		mediaAxilarMediaConv = parseFloat(mediaAxilarMedia);
	}
	
	if(mediaSupraIliaca==""){
		mediaSupraIliacaConv = 0;
	}else{
		mediaSupraIliacaConv = parseFloat(mediaSupraIliaca);
	}
	
	if(mediaAbdomen==""){
		mediaAbdomenConv = 0;
	}else{
		mediaAbdomenConv = parseFloat(mediaAbdomen);
	}
	
	if(mediaCoxaMedial==""){
		mediaCoxaMedialConv = 0;
	}else{
		mediaCoxaMedialConv = parseFloat(mediaCoxaMedial);
	}
	
	if(mediaCoxaProximal==""){
		mediaCoxaProximalConv = 0;
	}else{
		mediaCoxaProximalConv = parseFloat(mediaCoxaProximal);
	}
	
	if(mediaPanturrila==""){
		mediaPanturrilaConv = 0;
	}else{
		mediaPanturrilaConv = parseFloat(mediaPanturrila);
	}
	
	if(peso==""){
		pesoConv = 0;
	}else{
		pesoConv = parseFloat(peso);
	}
	
	if(altura==""){
		alturaConv = 0;
	}else{
		alturaConv = parseFloat(altura);
	}
	
	if(cirCintura==""){
		cirCinturaConv = 0;
	}else{
		cirCinturaConv = parseFloat(cirCintura);
	}
	
	if(cirAbdomen=""){
		cirAbdomenConv = 0
	}else{
		cirAbdomenConv = parseFloat(cirAbdomen1);
	}
	
	if(cirQuadril==""){
		cirQuadrilConv = 0;
	}else{
		cirQuadrilConv = parseFloat(cirQuadril);
	}
	
	if(cirIliaco==""){
		cirIliacoConv = 0;
	}else{
		cirIliacoConv = parseFloat(cirIliaco);
	}
	
	if(bioimpedancia==""){
		bioimpedanciaConv = 0;
	}else{
		bioimpedanciaConv = parseFloat(bioimpedancia);
	}
	
	
	var percentualGordura = 0;
	if(protocolo=="Jackson & Pollock, 1980 (7 dobras) 18 e 55 anos"){//Pollock 7 dobras feminino
		if (mediaTricepsConv>0 && mediaSubescapularConv>0 && mediaPeitoConv>0 && mediaAxilarMediaConv>0 && mediaSupraIliacaConv>0 && mediaAbdomenConv>0 && mediaCoxaMedialConv>0) {
			var somaDobras = mediaTricepsConv +mediaSubescapularConv + mediaPeitoConv + mediaAxilarMediaConv + mediaSupraIliacaConv + mediaAbdomenConv + mediaCoxaMedialConv;
			var densidade = (1.097 -(0.00046971 * (somaDobras))+(0.00000056 * Math.pow(somaDobras,2)))-(0.00012828 * idade);
			percentualGordura = ((4.95/densidade)- 4.50) * 100;
			document.querySelector("#txtPercentualGorduraAtual").value = percentualGordura.toFixed(2);
	    }else{
	        percentualGordura = 0;
	        document.querySelector("#txtPercentualGorduraAtual").value = percentualGordura.toFixed(2);
	    }
		
	}else if(protocolo=="Jackson & Pollock, 1980 (7 dobras) - Homem Adulto - Idade 18 a 61 anos"){//Polock 7 dobras masculino
		if (mediaTricepsConv>0 && mediaSubescapularConv>0 && mediaPeitoConv>0 && mediaAxilarMediaConv>0 && mediaSupraIliacaConv>0 && mediaAbdomenConv>0 && mediaCoxaMedialConv>0) {
			var somaDobras = mediaTricepsConv +mediaSubescapularConv + mediaPeitoConv + mediaAxilarMediaConv + mediaSupraIliacaConv + mediaAbdomenConv + mediaCoxaMedialConv;
			var densidade = 1.112 - (0.00043499 * (somaDobras))+ 0.00000055 * (Math.pow(somaDobras, 2)) - 0.00028826 * idade;
			percentualGordura = ((4.95/densidade)- 4.50) * 100;
			document.querySelector("#txtPercentualGorduraAtual").value = percentualGordura.toFixed(2);
	    }else{
	        percentualGordura = 0;
	        document.querySelector("#txtPercentualGorduraAtual").value = percentualGordura.toFixed(2);
	    }
	}else if(protocolo=="Jackson, Pollock & Ward, 1980 (3 dobras) 18 a 55 anos"){//Polock 3 dobras feminino
		if (mediaTricepsConv>0 && mediaSupraIliacaConv>0 && mediaCoxaMedialConv>0) {
	           var somaDobras = mediaTricepsConv + mediaSupraIliacaConv + mediaCoxaMedialConv;
	           var densidade = (1.0994921-(0.0009929 * (somaDobras))+ (0.00000230 * Math.pow(somaDobras,2)))-(0.0001392 * idade);
	           percentualGordura = ((4.95/densidade)- 4.50) * 100;
	           document.querySelector('#txtPercentualGorduraAtual').value = percentualGordura.toFixed(2);
	       }else{
	    	   percentualGordura = 0;
	    	   document.querySelector('#txtPercentualGorduraAtual').value = percentualGordura.toFixed(2);
	       }
	}else if(protocolo=="Jackson & Pollock, 1980 (3 dobras) - Homem Adulto - Idade 18 a 61 anos"){//Polock 3 dobras Masculino
		if (mediaPeitoConv>0 && mediaAbdomenConv>0 && mediaCoxaMedialConv>0) {
	           var somaDobras = mediaPeitoConv + mediaAbdomenConv + mediaCoxaMedialConv;
	           var densidade = (1.10938 - (0.0008267 * (somaDobras)) + 0.0000016 * (Math.pow(somaDobras, 2)) - 0.0002574 * idade);
	           percentualGordura = ((4.95/densidade)- 4.50) * 100;
	           document.querySelector('#txtPercentualGorduraAtual').value = percentualGordura.toFixed(2);
	       }else{
	    	   percentualGordura = 0;
	    	   document.querySelector('#txtPercentualGorduraAtual').value = percentualGordura.toFixed(2);
	       }
	}else if(protocolo=="Petroski, 1995 (4 dobras) 18 a 51 anos"){//Petroski 4 dobras Feminino
		if (mediaTricepsConv>0 && mediaSubescapularConv>0 && mediaSupraIliacaConv>0 && mediaPanturrilaConv>0 && pesoConv>0 && alturaConv>0) {
			   var alturaCm = alturaConv * 100;
	           var somaDobras = mediaTricepsConv + mediaSubescapularConv + mediaSupraIliacaConv + mediaPanturrilaConv;
	           var densidade = (1.02902361 - (0.00067159 * (somaDobras))) + (0.00000242 * ( Math.pow(somaDobras,2)))- (0.00026073 * (idade)) - (0.00056009 * (pesoConv)) + (0.00054649 * (alturaCm));
	           percentualGordura = ((4.95/densidade)- 4.50) * 100;
	           document.querySelector('#txtPercentualGorduraAtual').value = percentualGordura.toFixed(2);
	       }else{
	    	   percentualGordura = 0;
	    	   document.querySelector('#txtPercentualGorduraAtual').value = percentualGordura.toFixed(2);
	       }
	}else if(protocolo=="Petroski, 1995 (4 dobras) - Homem Adulto - Idade 18 a 61 anos"){//Petroski 4 dobras Masculino
		if (mediaTricepsConv>0 && mediaSubescapularConv>0 && mediaSupraIliacaConv>0 && mediaPanturrilaConv>0) {
	           var somaDobras = mediaTricepsConv + mediaSubescapularConv + mediaSupraIliacaConv + mediaPanturrilaConv;
	           var densidade = (1.10726863 - 0.00081201 * (somaDobras) + 0.00000212 * (Math.pow(somaDobras,2)) - 0.00041761 * idade);
	           percentualGordura = ((4.95/densidade)- 4.50) * 100;
	           document.querySelector('#txtPercentualGorduraAtual').value = percentualGordura.toFixed(2);
	       }else{
	    	   percentualGordura = 0;
	    	   document.querySelector('#txtPercentualGorduraAtual').value = percentualGordura.toFixed(2);
	       }
	}else if(protocolo=="Galagher et al. 2000 - (IMC) - % de gordura pelo IMC"){//Galagher IMC masculino e feminino
		if (pesoConv>0 && alturaConv>0) {
			   var imc =  pesoConv/(alturaConv * alturaConv);
			   var valorSexo = 0
			   if (sexo=="M") {
		           valorSexo = 1;
		       }else if (sexo=="F") {
		           valorSexo = 0;
		       }
			   percentualGordura = 64.5 - 848 * (1/imc) + (0.079 * idade) - (16.4 * valorSexo) + (0.05 * valorSexo * idade) + (39.0 * valorSexo) * (1/imc);
	           document.querySelector('#txtPercentualGorduraAtual').value = percentualGordura.toFixed(2);
	       }else{
	    	   percentualGordura = 0;
	    	   document.querySelector('#txtPercentualGorduraAtual').value = percentualGordura.toFixed(2);
	       }
	}else if(protocolo=="Slaughter et al, 1988 (2 dobras) Crianças (todas as idades)"){//Slaughter feminino
		if (mediaTricepsConv>0  && mediaPanturrilaConv>0) {
			   var somaDobras = mediaTricepsConv + mediaPanturrilaConv;
			   percentualGordura = 0.610 * (somaDobras)+5.1;
	           document.querySelector('#txtPercentualGorduraAtual').value = percentualGordura.toFixed(2);
	       }else{
	    	   percentualGordura = 0;
	    	   document.querySelector('#txtPercentualGorduraAtual').value = percentualGordura.toFixed(2);
	       }
	}else if(protocolo=="Slaughter et al, 1988 (2 dobras) - Crianças/Adolescentes - Idade 08 a 29 anos"){//Slaughter Masculino
		if (mediaTricepsConv>0  && mediaPanturrilaConv>0) {
			   var somaDobras = mediaTricepsConv + mediaPanturrilaConv;
			   percentualGordura = 0.735 * (somaDobras) + 1;
	           document.querySelector('#txtPercentualGorduraAtual').value = percentualGordura.toFixed(2);
	       }else{
	    	   percentualGordura = 0;
	    	   document.querySelector('#txtPercentualGorduraAtual').value = percentualGordura.toFixed(2);
	       }
	}else if(protocolo=="Lean, et al., 1996 - % de gordura CIRC.DA CINTURA (18 a 64 anos e com CC entre 60 e 116cm)"){//Lean Fem
		if (cirCinturaConv>=60  && cirCinturaConv<=116) {
			   percentualGordura = (0.439 * cirCinturaConv) + (0.221 * idadeConv) - 9.4;
	           document.querySelector('#txtPercentualGorduraAtual').value = percentualGordura.toFixed(2);
	       }else{
	    	   percentualGordura = 0;
	    	   document.querySelector('#txtPercentualGorduraAtual').value = percentualGordura.toFixed(2);
	       }
	}else if(protocolo=="Lean, et al., 1996 (CC, Idade) - % de gordura pela CIRC.DA CINTURA"){//Lean Masc
		if (cirCinturaConv>=69  && cirCinturaConv<=129) {
			   percentualGordura = (0.567 * cirCinturaConv) + (0.101 * idadeConv) - 31.8;
	           document.querySelector('#txtPercentualGorduraAtual').value = percentualGordura.toFixed(2);
	       }else{
	    	   percentualGordura = 0;
	    	   document.querySelector('#txtPercentualGorduraAtual').value = percentualGordura.toFixed(2);
	       }
	}else if(protocolo=="Tran & Weltman, 1989 - 15 a 79 anos"){//Tran e weltman Fem
		if (cirAbdomenConv>0  && cirQuadrilConv>0 && cirCinturaConv>0 && alturaConv>0) {
			   var densidade = (1.168297 - 0.002824 * ((cirAbdomenConv + cirCinturaConv)/2) + 0.0000122098 * Math.pow(((cirAbdomenConv + cirCinturaConv)/2),2) - 0.000733128 * (cirQuadrilConv) + 0.000510477 * (alturaConv * 100) - 0.000216161 * (idadeConv)); 
			   alert("Densidade: "+ densidade)
			   percentualGordura = ((4.95/densidade)- 4.50) * 100;
			   document.querySelector('#txtPercentualGorduraAtual').value = percentualGordura.toFixed(2);
	       }else{
	    	   percentualGordura = 0;
	    	   document.querySelector('#txtPercentualGorduraAtual').value = percentualGordura.toFixed(2);
	       }
	}else if(protocolo=="Tran e Weltman, 1988 (Pabd, PQd, Pil, MC) - Homem Idoso - 60 a 81 anos (IMC >25Kg/m2)"){//Tran e weltman Masc
		
		if (cirAbdomenConv>0  && cirQuadrilConv>0 && cirIliacoConv>0 && alturaConv>0 && pesoConv>0) {
			   var imc =  pesoConv/(alturaConv * alturaConv);	
			   if (imc>=25) {
	                percentualGordura =  - 47.371817 + 0.57914807 * (cirAbdomenConv) + 0.25189114 * (cirQuadrilConv) + 0.21366088 * (cirIliacoConv) - 0.35595404 * (pesoConv);
	           }else{
	               percentualGordura = 0;
	           }
			   document.querySelector('#txtPercentualGorduraAtual').value = percentualGordura.toFixed(2);
	       }else{
	    	   percentualGordura = 0;
	    	   document.querySelector('#txtPercentualGorduraAtual').value = percentualGordura.toFixed(2);
	       }
	}else if(protocolo=="Bioimpedância"){//Bioimpedancia mas e fem
			 if(bioimpedanciaConv > 0){
				 percentualGordura = bioimpedanciaConv;
				 document.querySelector('#txtPercentualGorduraAtual').value = percentualGordura.toFixed(2);
			 }else{
				 percentualGordura = 0;
				 document.querySelector('#txtPercentualGorduraAtual').value = percentualGordura.toFixed(2);
			 }
	}else if(protocolo=="Lohman, 1986 (2 dobras) - Adolescentes - Idade 12 a 14 anos"){//Loham masc
		 if(mediaTricepsConv > 0 && mediaSubescapularConv > 0){
			 var somaDobras = mediaTricepsConv + mediaSubescapularConv;
			 percentualGordura = 1.35 * (somaDobras) - 0.012 * Math.pow(somaDobras, 2) - 5.4;
			 document.querySelector('#txtPercentualGorduraAtual').value = percentualGordura.toFixed(2);
		 }else{
			 percentualGordura = 0;
			 document.querySelector('#txtPercentualGorduraAtual').value = percentualGordura.toFixed(2);
		 }
    }else if(protocolo=="Rech, Santos e Silva, 2006 - 50 a 75 anos"){//Rech Fem
		 if(cirQuadrilConv > 0 && mediaAbdomenConv > 0 && alturaConv > 0){
			 percentualGordura = 32.279+(0.436 * cirQuadrilConv)+(0.133 * mediaAbdomenConv)-(30.899 * alturaConv);
			 document.querySelector('#txtPercentualGorduraAtual').value = percentualGordura.toFixed(2);
		 }else{
			 percentualGordura = 0;
			 document.querySelector('#txtPercentualGorduraAtual').value = percentualGordura.toFixed(2);
		 }
    }else if(protocolo=="Guedes, 1985 (2 dobras) 17 a 27 anos"){//Guedes Fem
		 if(mediaSupraIliacaConv > 0 && mediaCoxaMedialConv > 0){
			 var somaDobras = mediaSupraIliacaConv + mediaCoxaMedialConv;
			 var densidade = 1.14812 - 0.06401 * Math.log10(somaDobras);
	         percentualGordura = ((4.95/densidade)- 4.50) * 100;
			 document.querySelector('#txtPercentualGorduraAtual').value = percentualGordura.toFixed(2);
		 }else{
			 percentualGordura = 0;
			 document.querySelector('#txtPercentualGorduraAtual').value = percentualGordura.toFixed(2);
		 }
    }else if(protocolo=="Deuremberg et al. 1991 (IMC, Idade)-Homem Idoso - Acima de 60 anos"){//Deuremberg masc
		 if(pesoConv > 0 && alturaConv > 0){
			 var imc =  pesoConv/(alturaConv * alturaConv);
			 percentualGordura = 1.2 * (imc) + 0.23 * (idadeConv) - 10.8 * (1) - 5.4;
			 document.querySelector('#txtPercentualGorduraAtual').value = percentualGordura.toFixed(2);
		 }else{
			 percentualGordura = 0;
			 document.querySelector('#txtPercentualGorduraAtual').value = percentualGordura.toFixed(2);
		 }
    }
	
 }

	


	
</script>