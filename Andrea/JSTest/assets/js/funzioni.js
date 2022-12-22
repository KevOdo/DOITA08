function stampaCubo(numero) {
    document.write(numero*numero*numero);
    document.write("<br>");
}

function tabellina(num) {
    for (i = 1; i < 11; i++) {
        document.write(num + " x " + i + " = " + (num * i) + "<br>");
    }
}

function sumArr(arr) {
    var sum = 0;
    for (i = 0; i < arr.length; i++){
            sum += arr[i];
    }
    document.write(sum + "<br>")
}

const testArr = [1,2,3,4,5];
sumArr(testArr);

tabellina(7);