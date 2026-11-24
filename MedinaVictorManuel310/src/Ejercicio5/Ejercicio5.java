package Ejercicio5;

import java.util.Scanner;

public class Ejercicio5 {

	public static void main(String[] args) {
		Scanner datos = new Scanner(System.in); //Sirve para poder introducir texto
		double numeros[];
		numeros = new double [20];
		double total = 0;
		double media;
		
		System.out.println("Introduce 20 numeros");
		for(int i = 0; i < numeros.length; i++) {
			System.out.println("Introduce el número " + (i+1) + ":");
			numeros[i] = datos.nextInt();
			total = total + numeros[i];
	}
		
		media = total/20;
		System.out.println("La media de los numeros introducidos es: " + media);
	}
}
