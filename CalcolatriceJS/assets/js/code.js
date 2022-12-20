var num1 = ""
var num2 = "";
var operator;
var result = document.getElementById("result");

// concatena cifra al numero corrente + stampa sul display
function pressNumber(num) {
    if (operator) {
        num2 = num2 + num;
        result.textContent = num2;
    } else {
        num1 = num1 + num;
        result.textContent = num1;
    }
}

// salva valore dell'operatore selezionato
function pressOperator(op){
    if (!operator && num1 != "") {
        operator = op;
        result.textContent = "";
    }
}

// esegui calcoli in base a operatore salvato. Divisione per 0 disabilitata
function pressEquals() {
    if (num2 != "") {
        if (operator == "+") {
            result.textContent = parseInt(num1) + parseInt(num2);
        } else if (operator == "-") {
            result.textContent = parseInt(num1) - parseInt(num2);
        } else if (operator == "*") {
            result.textContent = parseInt(num1) * parseInt(num2);
        }else if (operator == "/") {
            if (num2 == "0") {
                result.textContent = "PIRLA";
            } else {
                result.textContent = parseInt(num1) / parseInt(num2);
            }
        }
        num1 = "";
        num2 = "";
        operator = null;
    }
}

// clear memory + display
function pressClear() {
    num1 = "";
    num2 = "";
    operator = null;
    result.textContent = "";
}