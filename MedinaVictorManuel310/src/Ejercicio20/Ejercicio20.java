package Ejercicio20;

import java.util.Arrays;
import java.util.Scanner;

public class Ejercicio20 {

	public static void main(String[] args) {
		Scanner datos = new Scanner(System.in); //Sirve para poder introducir texto
		int numeros[] = new int [1000];
		for (int i = 0; i < numeros.length; i++) {
			numeros[i] = (int) (Math.random()*100);
			
		}
		int N;
		System.out.println("Introduce un número del 0 al 99: ");
		N = datos.nextInt();
		int posicion = Arrays.binarySearch(numeros, N);
		int contador = 0;
		if ( posicion >= 0) {
			System.out.println(posicion);
		}
		for (int i = 0; i < numeros.length; i++) {
			if (numeros[i] == N) {
				contador++;
			}
		}
		if (contador > 0) {
		System.out.println("El numero " + N + " SÍ aparece");
		System.out.println("La cantidad de veces que aparece son: " + contador);
	} else {
		System.out.println("Ese número " + N + " NO aparece");
	}
	}
}
