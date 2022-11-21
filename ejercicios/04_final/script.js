var peticion = new XMLHttpRequest();
var total = 0;

// handler para obtener los productos del JSON
peticion.addEventListener("readystatechange", function () {
    if (this.readyState == 4 && this.status == 200) {
        var productos = JSON.parse(this.responseText);
        // console.log(productos);
        
        productos.forEach(p => {
            var link = document.createElement('a');
            link.setAttribute('href', '#');
            link.innerText = p.nombre;

            // Al hacer click en el producto, agrego un elemento en el carrito
            link.addEventListener('click', function () {
                console.log(p.nombre, p.precio);
                total = total + p.precio;
                console.log("total: ", total);

                // Crear fila
                var fila = document.createElement('tr');
                var tdNombre = document.createElement('td');
                tdNombre.innerText = p.nombre;
                var tdPrecio = document.createElement('td');
                tdPrecio.innerText = p.precio;
                fila.appendChild(tdNombre);
                fila.appendChild(tdPrecio);

                var tdBorrar = document.createElement('td');
                var linkBorrar = document.createElement('a');
                linkBorrar.setAttribute('href', '#');
                linkBorrar.innerText = 'X';
                tdBorrar.appendChild(linkBorrar);
                fila.appendChild(tdBorrar);

                // Logica para eliminar un producto del carrito
                linkBorrar.addEventListener('click', function (event) {
                    console.log(event.target.parentElement.parentElement.remove());
                    total = total - p.precio;
                    console.log("total: ", total);
                });

                document.querySelector('tbody').appendChild(fila);
            })

            document.querySelector('.productos').appendChild(link);
        });
    }
});


peticion.open("GET", "./productos.json", true);
peticion.send();

var botonCaro = document.querySelector("#caro");

botonCaro.addEventListener("click", function () {

    var productosCarrito = document.querySelector('.carrito tbody').children;
    var max = 0;
    var productoMasCaro = "";

    for (let index = 0; index < productosCarrito.length; index++) {
        const productoRow = productosCarrito[index];

        let productoNombre = productoRow.children[0].innerText;
        let productoPrecio = Number(productoRow.children[1].innerText);
        
        if (productoPrecio > max) {
            max = productoPrecio;
            productoMasCaro = productoNombre;
        }
    }

    console.log("El mas caro es: ", productoMasCaro);
});