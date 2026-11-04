/*
 * Objetivo: Intercambiar los numeros introducidos
 * Autor: Víctor Manuel Medina Korri
 * Fecha: 08/10/2026
 */

package Ejercicio3; // Nombre del paquete

import java.util.Scanner; //Para importar la clase Scanner

class Ejercicio3 {  // Nombre de la clase

	public static void main(String[] args) { // Arranca el programa java
		
		Scanner datos = new Scanner(System.in); //Sirve para poder introducir texto
		
		double num1; // Definimos la variable junto a su nombre
		System.out.println("Introduce un numero: "); //El texto que saldrá a la hora de pedirnos el nombre
		num1 = datos.nextDouble(); //Lo que permite introducir texto en la variable
		
		double num2; // Definimos la variable junto a su nombre
		System.out.println("Introduce un segundo numero: "); //El texto que saldrá a la hora de pedirnos el nombre
		num2 = datos.nextDouble(); //Lo que permite introducir texto en la variable
		
		double inter = num1; // Variable creada para poder hacer el intercambio de numeros
		num1 = num2; // Variable que permite cambiar el numero uno por el numero 2
		num2 = inter; // Variable que permite cambiar el numero dos por el numero 1
		
		System.out.println("Num1 intercambiado es: " + num1);  // Mostrara por pantalla el intercambio de numeros
		System.out.println("Num2 intercambiado es: " + num2);  // Mostrara por pantalla el intercambio de numeros
		
	}

}
