/**
 * Código Javascript
 */

onload = inicializa;

function inicializa()
{
	console.log("inicializa");
	var formulario = document.getElementById("idFormulario");
	formulario.addEventListener("submit", verifica);
}

function verifica(evento)
{
	console.log("verifica");
	var erro = false;
	
	// incluir a verificação dos campos
	if(!validaNome()) erro = true;
	
	if(erro) console.log("Deu erro no nome");
	
	if(erro) evento.preventDefault();
}

function validaNome()
{
	console.log("validaNome");
	var re;
	re = /^([A-Z][a-z]+)((\s([A-Z][a-z]+)|da|de|do)|((\-|\')[A-Z][a-z]+))*$/;
//	re = /^([A-Z][a-z]+)$/;
	nome = document.formulario.campoNome.value;
	return re.test(nome);
}






