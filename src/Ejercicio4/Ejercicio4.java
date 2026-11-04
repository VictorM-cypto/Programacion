/*
 * Objetivo: 
 * Autor: Víctor Manuel Medina Korri
 * Fecha: 08/10/2026
 */
package Ejercicio4; // Nombre del paquete

import java.util.Scanner; //Para importar la clase Scanner

public class Ejercicio4 { // Nombre de la clase

	public static void main(String[] args) { // Arranca el programa java
		
		Scanner datos = new Scanner(System.in); //Sirve para poder introducir texto
		
		double num; // Definimos la variable junto a su nombre
		System.out.println("Introduce un numero: "); //El texto que saldrá a la hora de pedirnos el nombre
		num = datos.nextDouble(); //Lo que permite introducir texto en la variable
		
		double cel = Math.ceil(num); // Estableciendo la variable y la funcion math.ceil
		double flo = Math.floor(num); // Estableciendo la variable y la funcion math.floor
		double ron = Math.round(num); // Estableciendo la variable y la funcion math.round
		
		System.out.println("El numero introducido es: " + num + " el resultado ceil redondea hacia arriba " + cel + " ,el resultado floor redondea hacia abajo " + flo + " ,el resultado round edondea al entero más cercano " + ron + "."); // Mostrar en pantalla el texto y las funciones math
		
		

	}

}
