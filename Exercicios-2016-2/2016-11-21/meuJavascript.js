/**
 * 
 */

onload = inicia;

function inicia() {
	//var httpRequest;	// variável local
	// httpRequest variável global
	
	// Esporte (arquivo texto estático)
	httpRequestEsporte = createRequest();
	httpRequestEsporte.open("GET", "esporte.txt", true);	// abre a conexão HTTP
	httpRequestEsporte.onreadystatechange = callBackEsporte;
	httpRequestEsporte.send(null);
	
	// O Mundo (servlet)
	var espera = document.createElement("img");
	espera.setAttribute("src", "please_wait.gif");
	document.getElementById("idOMundo").appendChild(espera);
	httpRequestOMundo = createRequest();
	httpRequestOMundo.open("GET", "Noticias?tipo=OMundo", true);	// abre a conexão HTTP
	httpRequestOMundo.onreadystatechange = callBackOMundo;
	httpRequestOMundo.send(null);
	
	// A Cidade (servlet)
	httpRequestACidade = createRequest();
	httpRequestACidade.open("GET", "Noticias?tipo=ACidade", true);	// abre a conexão HTTP
	httpRequestACidade.onreadystatechange = callBackACidade;
	httpRequestACidade.send(null);
	
	carregaNoticiaXML("OEstado");
	carregaNoticiaXML("OPais");
}

function carregaNoticiaXML(titulo) {
	var conteudoXML, paragrafo, texto, objetoParagrafo;
	var httpRequest = createRequest();
	httpRequest.open("GET", "NoticiasXML?tipo=" + titulo, true);
	httpRequest.onreadystatechange = function() {
		if(this.readyState == 4) {
			if(this.status == 200) {
				document.getElementById("id" + titulo)
					.removeChild(document.getElementById("id" + titulo).firstChild);
				conteudoXML = this.responseXML.documentElement;
				paragrafo = conteudoXML.getElementsByTagName("paragrafo")
				for(var i=0; i<paragrafo.length; i++) {
					texto = paragrafo[i].firstChild.nodeValue;
					objetoParagrafo = document.createElement("p");
					objetoParagrafo.appendChild(document.createTextNode(texto));
					document.getElementById("id" + titulo).appendChild(objetoParagrafo);
				}
			}
		}
	}
	httpRequest.send(null);
}

function callBackEsporte() {
	if(httpRequestEsporte.readyState == 4) {
		var conteudo;
		if(httpRequestEsporte.status == 200) {
			// OK
			conteudo = httpRequestEsporte.responseText;
		}
		else {
			// erro
			conteudo = "Erro ao carregar conteudo de esportes";
		}
		document.getElementById("idEsporte").style.textAlign = "left";
		document.getElementById("idEsporte").appendChild(document.createTextNode(conteudo));
	}
}

function callBackOMundo() {
	if(httpRequestOMundo.readyState == 4) {
		var conteudo;
		if(httpRequestOMundo.status == 200) {
			// OK
			conteudo = httpRequestOMundo.responseText;
		}
		else {
			// erro
			conteudo = "Erro ao carregar conteudo do mundo";
		}
		document.getElementById("idOMundo").style.textAlign = "left";
		document.getElementById("idOMundo").
			replaceChild(document.createTextNode(conteudo), 
				document.getElementById("idOMundo").firstChild);
	}
}

function callBackACidade() {
	if(httpRequestACidade.readyState == 4) {
		var conteudo;
		if(httpRequestACidade.status == 200) {
			// OK
			conteudo = httpRequestACidade.responseText;
		}
		else {
			// erro
			conteudo = "Erro ao carregar conteudo da cidade";
		}
		document.getElementById("idACidade").style.textAlign = "left";
		document.getElementById("idACidade").
			replaceChild(document.createTextNode(conteudo), 
					document.getElementById("idACidade").firstChild);
	}
}