Algoritmo calculoCirculo
    Definir radio Como Real;
    Definir opcion Como Entero;
    Definir perimetro Como Real;
    Definir numPi Como Real;
    Definir area Como Real;
    Definir diametro Como Real;
    numPi <- 3.1416;
	
	Escribir "�Bienvenido al programa!";
    Escribir "Ingrese el radio del c�rculo: ";
    Leer radio;
	
    Mientras radio <= 0 Hacer
        Escribir "Error: El radio debe ser un n�mero positivo. Intente de nuevo: ";
        Leer radio;
    Fin Mientras
	
    Repetir
        Escribir "Opciones disponibles: ";
        Escribir "1. Calcular el per�metro";
        Escribir "2. Calcular el �rea";
        Escribir "3. Calcular el di�metro";
        Escribir "4. Cambiar valor del radio";
        Escribir "5. Salir";
        Escribir "Seleccione una opci�n:";
        Leer opcion;
		
        Segun opcion Hacer
            1:
                // Calcular el per�metro
                perimetro <- 2 * numPi * radio;
                Escribir "El per�metro del c�rculo es: ", perimetro;
            2:
                // Calcular el �rea
                area <- numPi * (radio^2);
                Escribir "El �rea del c�rculo es: ", area;
            3:
                // Calcular el di�metro
                diametro <- 2 * radio;
                Escribir "El di�metro del c�rculo es: ", diametro;
            4:
                // Cambiar valor del radio
                Escribir "Ingrese el nuevo radio del c�rculo:";
                Leer radio;
				
                // Validar que el nuevo radio sea positivo
                Mientras radio <= 0 Hacer
                    Escribir "Error: El radio debe ser un n�mero positivo. Intente de nuevo:";
                    Leer radio;
                Fin Mientras    
            5:
                // Salir del programa
                Escribir "�Gracias por usar el programa! Hasta luego.";
            De Otro Modo:
                Escribir "Opci�n no v�lida. Intente nuevamente.";
        Fin Segun
    Hasta Que opcion = 5
FinAlgoritmo

