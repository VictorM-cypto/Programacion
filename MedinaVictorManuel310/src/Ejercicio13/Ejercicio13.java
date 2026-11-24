package Ejercicio13;

import java.util.Scanner;

public class Ejercicio13 {

	public static void main(String[] args) {
		Scanner datos = new Scanner(System.in); //Sirve para poder introducir texto
		int V;
		int I;
		int N;
		System.out.println("Introduce el valor de V: ");
		V = datos.nextInt();
		System.out.println("Introduce el valor de I: ");
		I = datos.nextInt();
		System.out.println("Introduce el numero de veces que se repetira: ");
		N = datos.nextInt();
		int numeros[] = new int [N];
		for (int i = 0; i < numeros.length; i++) {
			numeros[i] = V + (I * i);
			System.out.println(numeros[i]);
		}
		
	}

}
