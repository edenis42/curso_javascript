Algoritmo if_anidado_switch
	Definir nota Como Entero;
	Escribir "Ingrese una nota: ";
	Leer nota;
	
	Si nota == 10 Entonces
		Escribir "El alumno tiene la nota maxima"
	SiNo
		Si (nota >= 7 y nota <= 9) Entonces
			Escribir "El alumno tiene una buena nota"
		SiNo
			Si nota < 4 Entonces
				Escribir "El alumno esta aplazado"
			SiNo
				Escribir "El alumno desaprobado"
			Fin Si
		Fin Si
	Fin Si
	
	
	Segun nota Hacer
		10:
			Escribir "La nota del alumno es un 10"
		9:
			Escribir "La nota del alumno es un 9"
		8:
			Escribir "La nota del alumno es un 8"
		De Otro Modo:
			Escribir "La nota del alumno es menor a 8"
	Fin Segun
	
	
	
FinAlgoritmo
