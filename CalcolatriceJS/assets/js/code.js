var num1 = ""
var num2 = "";
var operator;
var result = document.getElementById("result");

function pressNumber(num) {
    if (operator) {
        num2 = num2 + num;
        result.textContent = num2;
    } else {
        num1 = num1 + num;
        result.textContent = num1;
    }
}

function pressOperator(op){
    if (!operator && num1 != "") {
        operator = op;
        result.textContent = "";
    }
}

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

function pressClear() {
    num1 = "";
    num2 = "";
    operator = null;
    result.textContent = "";
}