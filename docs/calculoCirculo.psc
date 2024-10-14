Algoritmo calculoCirculo
    Definir radio Como Real;
    Definir opcion Como Entero;
    Definir perimetro Como Real;
    Definir numPi Como Real;
    Definir area Como Real;
    Definir diametro Como Real;
    numPi <- 3.1416;
	
	Escribir "¡Bienvenido al programa!";
    Escribir "Ingrese el radio del círculo: ";
    Leer radio;
	
    Mientras radio <= 0 Hacer
        Escribir "Error: El radio debe ser un número positivo. Intente de nuevo: ";
        Leer radio;
    Fin Mientras
	
    Repetir
        Escribir "Opciones disponibles: ";
        Escribir "1. Calcular el perímetro";
        Escribir "2. Calcular el área";
        Escribir "3. Calcular el diámetro";
        Escribir "4. Cambiar valor del radio";
        Escribir "5. Salir";
        Escribir "Seleccione una opción:";
        Leer opcion;
		
        Segun opcion Hacer
            1:
                // Calcular el perímetro
                perimetro <- 2 * numPi * radio;
                Escribir "El perímetro del círculo es: ", perimetro;
            2:
                // Calcular el área
                area <- numPi * (radio^2);
                Escribir "El área del círculo es: ", area;
            3:
                // Calcular el diámetro
                diametro <- 2 * radio;
                Escribir "El diámetro del círculo es: ", diametro;
            4:
                // Cambiar valor del radio
                Escribir "Ingrese el nuevo radio del círculo:";
                Leer radio;
				
                // Validar que el nuevo radio sea positivo
                Mientras radio <= 0 Hacer
                    Escribir "Error: El radio debe ser un número positivo. Intente de nuevo:";
                    Leer radio;
                Fin Mientras    
            5:
                // Salir del programa
                Escribir "¡Gracias por usar el programa! Hasta luego.";
            De Otro Modo:
                Escribir "Opción no válida. Intente nuevamente.";
        Fin Segun
    Hasta Que opcion = 5
FinAlgoritmo

