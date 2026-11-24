package Ejercicio6;

import java.util.Scanner;

public class Ejercicio6 {

	public static void main(String[] args) {
		Scanner datos = new Scanner(System.in); //Sirve para poder introducir texto
		System.out.println("Introduce el tamaño de N: ");
		int n = datos.nextInt();
		System.out.println("Introduce el tamaño de M: ");
		int m = datos.nextInt();
		int numeros[] = new int[n];
		for (int i = 0; i < numeros.length; i++) {
			numeros[i] = m;
		}
		
		for (int i = 0; i < numeros.length; i++) {
		System.out.println("Posicion " + i + " es: " + numeros[i]);
	
	}
	}
}
