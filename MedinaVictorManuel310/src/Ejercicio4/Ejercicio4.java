package Ejercicio4; // Nombre del paquete

import java.util.Scanner; //Para importar la clase Scanner

public class Ejercicio4 { // Nombre de la clase

	public static void main(String[] args) { //Donde empieza nuestro programa
		Scanner datos = new Scanner(System.in); //Sirve para poder introducir texto
		int numeros[]; // Creacion de la variable y la indicacion de que es un vector
		numeros = new int [20]; // Estableciendo el tamaño del vector
		int totalpositivos = 0; // Creacion de una variable y eñ contenido que guarda
		int totalnegativos = 0; // Creacion de una variable y eñ contenido que guarda
		
		System.out.println("Introduce 20 numeros"); // Mensaje que nos saldra en pantalla al perdirnos introducir 20 numeros
		for(int i = 0; i < numeros.length; i++) { // Inicio del bucle
			System.out.println("Introduce el número " + (i+1) + ":"); // Nos mostrara cuantos numeros hemos introducido pasdando al siguiente una vez introducido
			numeros[i] = datos.nextInt(); // El vector donde se guardaran los números introducidos en la línea de arriba
			if (numeros[i] < 0) { // Condicional que nos mostrara 
				totalnegativos = totalnegativos + numeros[i]; // Calcula todos los números negativos introducidos
			}
			if (numeros[i] > 0) { // Condicio
				totalpositivos = totalpositivos + numeros[i];
			}
			
		}
		System.out.println("La suma de todos los numeros positivos introducidos es: " + totalpositivos);
		System.out.println("La suma de todos los numeros negativos introducidos es: " + totalnegativos);
		
	}

}
