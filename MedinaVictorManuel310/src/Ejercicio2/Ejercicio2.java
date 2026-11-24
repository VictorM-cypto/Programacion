/*
 * Objetivo: Crear un array introduciendo 10 numeros y sumar todos los números introducidos
 * Autor: Víctor Medina Korri
 * Fecha: 23/11/2026
 */
package Ejercicio2; // Nombre del paquete

import java.util.Scanner; //Para importar la clase Scanner

public class Ejercicio2 { // Nombre de la clase

	public static void main(String[] args) { //Donde empieza nuestro programa
		Scanner datos = new Scanner(System.in); // Sirve para poder introducir texto
		double numeros[]; // Creacion de la variable y la indicacion de que es un vector
		numeros = new double [10]; // Estableciendo el tamaño del vector
		
		System.out.println("Introduce 10 numeros"); // Mensaje que nos saldra en pantalla al perdirnos introducir 10 numeros
		for(int i = 0; i < numeros.length;  i++) { // Inicio del bucle
			System.out.println("Introduce el numero " + (i+1) + " :"); // Nos mostrara cuantos numeros hemos introducido pasdando al siguiente una vez introducido
			numeros[i] = datos.nextDouble(); // El vector donde se guardaran los números introducidos en la línea de arriba
		}
		
		
		double total = 0; // Creacion de una variable junto al numero que almacena
		for(int i = 0; i < numeros.length; i++) { // Inicio del bucle
			total = total + numeros[i]; // La suma de todos los valores
	}
		System.out.println("La suma total es " + total); // Lo que mostrara en pantalla mostrando un mensaje y el resultado total de la operacion
	}
}
