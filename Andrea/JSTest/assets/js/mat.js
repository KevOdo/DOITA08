function calcola() {
    let numeri = document.getElementById("numeri").value;
    const arr = numeri.split(",");
    var somma = 0;

    for (i = 0; i < arr.length; i++){
        if(parseInt(arr[i])){
            somma += parseInt(arr[i]);
        }
    }
    document.getElementById("totale").textContent = "Totale: " + somma;
}