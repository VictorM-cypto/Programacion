package Ejercicio6;

import java.util.Scanner;

public class Ejercicio6 {

	public static void main(String[] args) {
		Scanner datos = new Scanner(System.in); //Sirve para poder introducir texto
		int i, cuadrado;
		
		do {
			System.out.println("Introduce un numero: ");
			i = datos.nextInt();
			if (i >= 0) {
			cuadrado = i * i;
			System.out.println("El cuadrado de ese número es: " + cuadrado);
		} 
		}	while (i >= 0);
	}
}
