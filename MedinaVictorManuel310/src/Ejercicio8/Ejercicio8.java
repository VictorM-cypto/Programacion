package Ejercicio8;

import java.util.Scanner;

public class Ejercicio8 {

	public static void main(String[] args) {
		Scanner datos = new Scanner(System.in); //Sirve para poder introducir texto

		double numeros[] = new double [100];
		
		for(int i = 0; i < numeros.length; i++) {
			numeros[i] = Math.random();
		}
		
		double contador = 0;
		System.out.println("Introduce un numero del 0.0 al 1.0: ");
		double r = datos.nextDouble();
		for(int i = 0; i < numeros.length; i++) {
			if ( numeros[i] >= r) {
				contador++;
		} 
	} 
		System.out.println("El numero de la posicion " + contador + " es: " + r);
	}
}
