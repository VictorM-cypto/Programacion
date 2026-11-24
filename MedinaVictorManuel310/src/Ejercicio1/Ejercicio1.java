/*
 * Objetivo: Crear un vector de 10 valores y mostrar los valores introducido en cada una de las posiciones
 * Autor: Víctor Manuel Medina Korri
 * Fecha: 22/11/2026 
 */
package Ejercicio1; // Nombre del paquete

import java.util.Scanner; //Para importar la clase Scanner

public class Ejercicio1 { // Nombre de la clase

	public static void main(String[] args) { //Donde empieza nuestro programa
		Scanner datos = new Scanner(System.in); //Sirve para poder introducir texto
		double numeros[]; // Creacion de la variable y la indicacion de que es un vector
		numeros = new double [10]; // Estableciendo el tamaño del vector
		
		System.out.println("Introduce 10 numeros"); // Mensaje que nos saldra en pantalla al perdirnos introducir 10 numeros
		for(int i = 0; i < numeros.length;  i++) { // Inicio del bucle
			System.out.println("Introduce el numero " + (i+1) + " :"); // Nos mostrara cuantos numeros hemos introducido pasdando al siguiente una vez introducido
			numeros[i] = datos.nextDouble(); // El vector donde se guardaran los números introducidos en la línea de arriba
		}
		
		System.out.println("Los valores de cada posición"); // Mensaje que saldra en pantalla para presentar los valores introducidos en cada posicion del vector 
		for(int i = 0; i < numeros.length; i++) { // Inicio del bucle
			System.out.println("Posición " + i + " es igual a: " + numeros[i]); // Nos mostrara por pantalla el numero introducido en cada posicion del vector
		}
	}

}
