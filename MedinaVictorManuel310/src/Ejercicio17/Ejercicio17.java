package Ejercicio17;

import java.util.Arrays;
import java.util.Scanner;

public class Ejercicio17 {

	public static void main(String[] args) {
		Scanner datos = new Scanner(System.in); //Sirve para poder introducir texto
		int numeros[] = new int [10];
		int numeros2[] = new int [10];
		for (int i = 0; i < numeros.length; i++) {
			System.out.println("Introduce el numero " + i + ":");
			numeros[i] = datos.nextInt();
		}
		
		for (int i = 0; i < numeros2.length; i++) {
			System.out.println("Introduces la segunda tanda de números " + i + ":");
			numeros2[i] = datos.nextInt();
		}
		
		if (Arrays.equals(numeros, numeros2)) {
		System.out.println("Los números son iguales");
		} else {
			System.out.println("Los números no son iguales");
		}
	}

}
