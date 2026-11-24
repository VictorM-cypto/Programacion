package Ejercicio15;

import java.util.Arrays;
import java.util.Scanner;

class Ejercicio15 {

	public static void main(String[] args) {
		Scanner datos = new Scanner(System.in); //Sirve para poder introducir texto
		int n;
		int m;
		System.out.println("Introduce el numero de veces que se va a repetir: ");
		n = datos.nextInt();
		System.out.println("Introduce el numero que se va a repetir: ");
		m = datos.nextInt();
		int numeros[] = new int [n];
		for (int i = 0; i < numeros.length; i++) {
			Arrays.fill(numeros, m);
			System.out.println(numeros[i]);
		}

	}

}
