package Ejercicio7;

import java.util.Scanner;

public class Ejercicio7 {

	public static void main(String[] args) {
		Scanner datos = new Scanner(System.in); //Sirve para poder introducir texto
		System.out.println("Introduce el tamaño de P: ");
		int p = datos.nextInt();
		System.out.println("Introduce el tamaño de Q: ");
		int q = datos.nextInt();
		int tamaño = q - p + 1;
		int numeros[] = new int[tamaño];
		for (int i = 0; i < numeros.length; i++) {
			numeros[i] = p + i;
		}
		
		for (int i = 0; i < numeros.length; i++) {
			System.out.println(numeros[i]);
		}

	}

}
