package Ejercicio9;

import java.util.Scanner;

public class Ejerciocio9 {

	public static void main(String[] args) {
		Scanner datos = new Scanner(System.in); //Sirve para poder introducir texto

		int numeros[] = new int [100];
		
		for(int i = 0; i < numeros.length; i++) {
			numeros[i] =  1 + (int)(Math.random()*10);
		}

		System.out.println("Introduce un numero del 1 al 10: ");
		int n = datos.nextInt();
		for(int i = 0; i < numeros.length; i++) {
			if (numeros[i] == n) {
			System.out.println(i);
			}
		} 

	}

}
