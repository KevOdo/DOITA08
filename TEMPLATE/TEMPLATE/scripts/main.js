function toggle(id) {
    const elem = document.getElementById(id)
    if (elem.style.display == "block") {
        elem.style.display = "none";
        elem.style.height = "0";
    } else {
        elem.style.display = "block";
        elem.style.height = "100%";
    }
}

function toggleSide() {
    const elem = document.getElementById('scroll');
    if (elem.style.width == "0px") {
        elem.style.width = "250px";
    } else {
        elem.style.width = "0px";
    }
}

function changeBurger(x) {
    x.classList.toggle("change");
}
