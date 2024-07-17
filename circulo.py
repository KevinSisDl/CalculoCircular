import time

class Circulo:
    def __init__(self, radio, pi=3.1416):
        self.__pi = pi
        self.radio = radio

    def calcular_perimetro(self):
        return 2 * self.__pi * self.radio

    def calcular_area(self):
        return self.__pi * (self.radio ** 2)

    def calcular_diametro(self):
        return 2 * self.radio

def menu_calculos():
    print("¡Bienvenido al programa!")

    while True:
        try:
            radio = float(input("Ingrese el radio del círculo: "))
            if radio > 0:
                break
            else:
                print("El radio debe ser mayor que cero. Inténtelo nuevamente.")
        except ValueError:
            print("Entrada inválida. Por favor, ingrese un número válido.")

    circulo = Circulo(radio)
    
    while True:
        print("\n=== Menú de Cálculos ===")
        print("1. Calcular perímetro del círculo")
        print("2. Calcular área del círculo")
        print("3. Calcular diámetro del círculo")
        print("4. Salir del programa")
        opcion = input("Ingrese el número de la opción deseada: ")

        if opcion == '1':
            print("\nCalculando", end="")
            for _ in range(5):
                print(".", end="", flush=True)
                time.sleep(0.3)
            print()
            perimetro = circulo.calcular_perimetro()
            print(f"El perímetro del círculo con radio {radio} es: {perimetro:.2f}")
        elif opcion == '2':
            print("\nCalculando", end="")
            for _ in range(5):
                print(".", end="", flush=True)
                time.sleep(0.3)
            print()
            area = circulo.calcular_area()
            print(f"El área del círculo con radio {radio} es: {area:.2f}")
        elif opcion == '3':
            print("\nCalculando", end="")
            for _ in range(5):
                print(".", end="", flush=True)
                time.sleep(0.3)
            print()
            diametro = circulo.calcular_diametro()
            print(f"El diámetro del círculo con radio {radio} es: {diametro:.2f}")
        elif opcion == '4':
            print("\nSaliendo del programa", end="")
            for _ in range(5):
                print(".", end="", flush=True)
                time.sleep(0.3)
            print("\n¡Hasta luego! Gracias por usar nuestro programa.")
            break
        else:
            print("\nOpción no válida. Por favor, ingrese una opción válida.")

menu_calculos()