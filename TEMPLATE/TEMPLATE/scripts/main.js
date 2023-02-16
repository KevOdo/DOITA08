function toggle(id, sender) {
    const elem = document.getElementById(id);
    if (elem.style.display == "block") {
        sender.style.transition = "all 0.2s ease 0.2s";
        sender.style.height = "30px";
        elem.style.display = "none";
        sender.style.background = "";
    } else {
        sender.style.transition = "all 0.2s ease 0.2s";
        sender.style.height = "175px";
        setTimeout(function () {
            elem.style.display = "block";
        }, 200)
        sender.style.background = "#444444";
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
