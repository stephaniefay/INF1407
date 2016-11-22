var lstItem = [];

function insereItem () {
    var qtd, cod, desc, preco;
    
    qtd = parseInt(document.getElementById("qtd").value);
    cod = document.getElementById("cod").value;
    desc = document.getElementById("desc").value;
    preco = parseFloat(document.getElementById("preco").value);
    
    var preTotal = qtd * preco;
    
    var item = {
        quantidade: qtd,
        codigo: cod,
        descricao: desc,
        preco: preco,
        total: preTotal
    };
    
    arrumaLista(item);
    printaLista();
    
}

function arrumaLista(obj) {
    var flag = 0;
    if (lstItem.length == 0)
        lstItem.push(obj);
    else {
        var length = lstItem.length;
        for (var i = 0; i < length ; i++) {
            var cmp = lstItem[i].codigo.localeCompare(obj.codigo);
            if (cmp == 1) {
                lstItem.splice(i, 0, obj);
                flag = 1;
                break;
            }
        }
        if (flag == 0) {
            lstItem.push(obj);
        }
    }
    
    var form = "";
    for (var i = 0; i < lstItem.length; i++) {
        form += "<input type='hidden' name='quantidade" + i + "' value='" + lstItem[i].quantidade + "'>";
        form += "<input type='hidden' name='codigo" + i + "' value='" + lstItem[i].codigo + "'>";
        form += "<input type='hidden' name='descricao" + i + "' value='" + lstItem[i].descricao + "'>";
        form += "<input type='hidden' name='preco" + i + "' value='" + lstItem[i].preco + "'>";
        form += "<input type='hidden' name='total" + i + "' value='" + lstItem[i].total + "'>";
    }
    form += "<input type='submit' value='Envia'>";
    document.getElementById("formulario").innerHTML = form;
    
}

function printaLista() {
    var lista = "";
    
    for (var i = 0; i < lstItem.length; i++) {
        lista += "--> " + lstItem[i].quantidade + " " + lstItem[i].codigo + " " + lstItem[i].descricao + " " + lstItem[i].preco + " " + lstItem[i].total + "<br>";
    }
    
    document.getElementById("itens").innerHTML = lista;
    
}
