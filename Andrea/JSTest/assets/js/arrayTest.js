const names = ["Andrea", "Andreea", "Andreeea", "Andreeeea"];
for (i = 0; i < names.length; i++){
    document.write(names[i] + "<br>");
}

// push aggiunge un elemento alla fine dell'array
names.push("Diego");
document.write(names + "<br>");

// shift elimina il primo elemento dell'array
names.shift();
document.write(names + "<br>");

// pop elmina l'ultimo elemento dell'array
names.pop();
document.write(names + "<br>");