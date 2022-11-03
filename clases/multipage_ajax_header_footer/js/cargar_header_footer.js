var peticionHeader = new XMLHttpRequest();

peticionHeader.addEventListener('readystatechange', function () {
    if (this.readyState == 4 && this.status == 200) {
        // codigo
        console.log(this.responseText);
        document.querySelector("header").innerHTML = this.responseText;

    }
});

peticionHeader.open("GET", "./componentes/header.html", true);
peticionHeader.setRequestHeader("Content-type", "html");
peticionHeader.send();

var peticionFooter = new XMLHttpRequest();

peticionFooter.addEventListener('readystatechange', function () {
    if (this.readyState == 4 && this.status == 200) {
        // codigo
        console.log(this.responseText);
        document.querySelector("footer").innerHTML = this.responseText;

    }
});

peticionFooter.open("GET", "./componentes/footer.html", true);
peticionFooter.setRequestHeader("Content-type", "html");
peticionFooter.send();