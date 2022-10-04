Algoritmo ejercicio_censo
	
	contadorPersonas = 0;
	acumuladorAltura = 0;
	
	contadorHombre = 0;
	acumuladorAlturaHombre = 0;
	
	contadorMujeres = 0;
	acumuladorAlturaMujeres = 0;
	
	alturaMasBaja = 9999;
	
	Para i=1 Hasta 3 Con Paso 1 Hacer
		Escribir "Ingrese el sexo de la persona (M,F), y luego ingrese su altura";
		Leer sexo, altura;
		
		contadorPersonas = contadorPersonas + 1;
		acumuladorAltura = acumuladorAltura + altura;
		
		Si sexo == "M" Entonces
			contadorHombre = contadorHombre + 1;
			acumuladorAlturaHombre = acumuladorAlturaHombre + altura;
		Fin Si
		
		Si sexo == "F" Entonces
			contadorMujeres = contadorMujeres + 1;
			acumuladorAlturaMujeres = acumuladorAlturaMujeres + altura;
		Fin Si
		
		Si (altura < alturaMasBaja) y sexo == 'M' Entonces
			alturaMasBaja = altura;
		Fin Si
		
	Fin Para
	
	
	Escribir "Promedio Altura Personas: " acumuladorAltura/contadorPersonas
	Escribir "Promedio Altura Hombres: " acumuladorAlturaHombre/contadorHombre
	Escribir "Promedio Altura Mujeres: " acumuladorAlturaMujeres/contadorMujeres
	Escribir "Altura mas baja del hombre: " alturaMasBaja
	
FinAlgoritmo
