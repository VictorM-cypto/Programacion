/*
 * Objetivo: Introducir 10 valores y mostrar cual es el numero mas grande y menos grande de los introducidos.
 * Autor: Victor Manuel Medina Korri
 * Fecha: 23/11/2026
 */
package Ejercicio3; // Nombre del paquete

import java.util.Scanner; //Para importar la clase Scanner

public class Ejercicio3 { // Nombre de la clase

	public static void main(String[] args) { //Donde empieza nuestro programa
		Scanner datos = new Scanner(System.in); //Sirve para poder introducir texto
		double numeros[]; // Creacion de la variable y la indicacion de que es un vector
		numeros = new double [10]; // Estableciendo el tamaño del vector
		
		System.out.println("Introduce 10 numeros"); // Mensaje que nos saldra en pantalla al perdirnos introducir 10 numeros
		for(int i = 0; i < numeros.length;  i++) { // Inicio del bucle
			System.out.println("Introduce el numero " + (i+1) + " :"); // Nos mostrara cuantos numeros hemos introducido pasdando al siguiente una vez introducido
			numeros[i] = datos.nextDouble(); // El vector donde se guardaran los números introducidos en la línea de arriba
		}
		
		double maximo = numeros[0]; // Creacion de la variable para guardar el número más alto 
		double minimo = numeros[0]; // Creacion de la variable donde se guarda el número más pequeño.
		for(int i = 1; i < numeros.length; i++) { // Inicio del bucle
			if(maximo < numeros[i] ) { // Condicion que nos mostrara el numero mas alto introducido
				maximo = numeros[i]; // Indicacion de que en el bucle el numero que cumple la condicion es el que se guarda
			}
			if (minimo > numeros[i]) { // Condicion que nos mostrara el numero mas bajo introducido
				minimo = numeros[i]; // Indicacion de que en el bucle el numero que cumple la condicion es el que se guarda
			}
		} 
		System.out.println("El numero maximo introducido es: " + maximo); // El texto que nos saldra en pantalla junto al numero más alto introducido
		System.out.println("El numero minimo introducido es: " + minimo); // El texto que nos saldra en pantalla junto al número más bajo introducido
	}

}
