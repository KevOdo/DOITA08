function calcola() {
    const arr = numeri.value.split(",");
    var somma = 0;

    for (i = 0; i < arr.length; i++){
        if(parseInt(arr[i])){
            somma += parseInt(arr[i]);
        }
    }
    document.getElementById("totale").textContent = "Totale: " + somma;
}