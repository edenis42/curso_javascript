Algoritmo ciclos
	contador = 0;
	acumulador = 0;
	maximo = -9999;
	minimo = 9999;
	
	Mientras (contador < 10) Hacer
		contador = contador + 1;
		Escribir "Ingrese la nota del Alumno ", contador, ": ";
		Leer nota;
		acumulador = acumulador + nota;
		
		Si nota > maximo Entonces
			maximo = nota;
		Fin Si
		
		Si nota < minimo Entonces
			minimo = nota;
		Fin Si
	Fin Mientras

	Repetir
		contador = contador + 1;
		Escribir "Ingrese la nota del Alumno ", contador, ": ";
		Leer nota;
		acumulador = acumulador + nota;
		
		Si nota > maximo Entonces
			maximo = nota;
		Fin Si
		
		Si nota < minimo Entonces
			minimo = nota;
		Fin Si
	Hasta Que  (contador >= 10);
	
	
	Para i<-0 Hasta 9 Con Paso 1 Hacer
		contador = contador + 1;
		Escribir "Ingrese la nota del Alumno ", contador, ": ";
		Leer nota;
		acumulador = acumulador + nota;
		
		Si nota > maximo Entonces
			maximo = nota;
		Fin Si
		
		Si nota < minimo Entonces
			minimo = nota;
		Fin Si
	Fin Para
	
	Escribir "El valor del contador es: ", contador;
	Escribir "El valor del acumulador es: ", acumulador;
	Escribir "La nota mas alta es: ", maximo;
	Escribir "La nota mas baja es: ", minimo;
	Escribir "El promedio de los alumnos es: ", acumulador/contador;
FinAlgoritmo
