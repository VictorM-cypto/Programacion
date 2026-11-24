package Ejercicio11;

import java.util.Scanner;

public class Ejercicio11 {

	public static void main(String[] args) {
		Scanner datos = new Scanner(System.in); //Sirve para poder introducir texto
		
		int numeros[] = new int [100];
		int numeros2[] = new int [100];
		for (int i = 0; i < numeros.length; i++) {
			numeros[i] = i + 1;
		}
		for (int i = 0; i < numeros2.length; i++) {
			numeros2[i] = numeros[99 - i];
	
		}
		
		for (int i = 0; i < numeros.length; i++) {
			System.out.println(numeros[i]);
		}
		for (int i = 0; i < numeros2.length; i++) {
			System.out.println(numeros2[i]);
		
		}
	}

}
