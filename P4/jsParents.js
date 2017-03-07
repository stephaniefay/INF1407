onload = ini;

var resultado;

function ini() {
    document.getElementById("identify").innerHTML = "<strong>Nome:</strong>Stephanie Fay<br><strong>Matrícula:</strong>xxxxxxx<br> <h1 align='center'>Quarto Trabalho</h1>";
}

function consulta() {
    var surname = document.getElementById("surname").value;
    var httpRequestSurname = createRequest();
    httpRequestSurname.open("GET", "BuscaPessoa?sobrenome=" + surname, true);

    httpRequestSurname.onreadystatechange = function () {
        if (httpRequestSurname.readyState == 4) {
            if (httpRequestSurname.status == 200) {
                resultado = JSON.parse(httpRequestSurname.responseText);
                if (resultado.agnome != null)
                    var resultshtml = "<label id='resultado' onclick='getParents();'>" + resultado.nome + " " + resultado.sobrenome + " " + resultado.agnome + "<br></label>";
                else
                    var resultshtml = "<label id='resultado' onclick='getParents();'>" + resultado.nome + " " + resultado.sobrenome + "<br></label><br><br>";
                document.getElementById("showResults").innerHTML = resultshtml;
            }
        }
    }
    httpRequestSurname.send(null);
}

function getParents() {
    var httpRequestParents = createRequest();
    httpRequestParents.open("POST", "BuscaPessoa", true);
    httpRequestParents.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    var params = "nome=" + resultado.nome + "&sobrenome=" + resultado.sobrenome + "&agnome=" + resultado.agnome;
    httpRequestParents.onreadystatechange = function () {
        if (httpRequestParents.readyState == 4) {
            if (httpRequestParents.status == 200) {
                var conteudoXML = httpRequestParents.responseXML;
                var parentsPai = conteudoXML.getElementsByTagName("pai");
                var parentsMae = conteudoXML.getElementsByTagName("mae");
                var conteudo = "Pai: " + parentsPai[0].childNodes[0].nodeValue + "<br>Mãe: " + parentsMae[0].childNodes[0].nodeValue;
                document.getElementById("parents").innerHTML = conteudo;
            }
        }
    }
    httpRequestParents.send(params);
}


