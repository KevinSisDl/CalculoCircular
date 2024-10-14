numPi = 3.1416

print("¡Bienvenido al programa!")
radio = float(input("Ingrese el radio del círculo: "))

while radio <= 0:
    radio = float(input("Error: El radio debe ser un número positivo. Intente de nuevo: "))

while True:
    print("\nOpciones disponibles:")
    print("1. Calcular el perímetro")
    print("2. Calcular el área")
    print("3. Calcular el diámetro")
    print("4. Cambiar valor del radio")
    print("5. Salir")
    
    opcion = int(input("Seleccione una opción: "))

    match opcion:
        case 1:
            perimetro = 2 * numPi * radio
            print(f"El perímetro del círculo es: {perimetro:.2f}")
        case 2:
            area = numPi * (radio ** 2)
            print(f"El área del círculo es: {area:.2f}")
        case 3:
            diametro = 2 * radio
            print(f"El diámetro del círculo es: {diametro:.2f}")
        case 4:
            radio = float(input("Ingrese el nuevo radio del círculo: "))
            while radio <= 0:
                radio = float(input("Error: El radio debe ser un número positivo. Intente de nuevo: "))
        case 5:
            print("¡Gracias por usar el programa! Hasta luego.")
            break
        case _:
            print("Opción no válida. Intente nuevamente.")
