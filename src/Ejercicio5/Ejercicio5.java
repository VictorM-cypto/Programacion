 /* 
 * Objetivo: Programa que pedira 2 números y despues muertra por pantalla diferentes calculos realizados a dichos números
 * Autor: Víctor Manuel Medina Korri
 * Fecha: 07/10/2026
 */

package Ejercicio5; // Nombre del paquete

import java.util.Scanner; //Para importar la clase Scanner

class Ejercicio5 { // Nombre de la clase

	public static void main(String[] args) { // Arranca el programa java
		
		Scanner datos = new Scanner(System.in); //Sirve para poder introducir texto
		double num; // Definimos la variable junto a su nombre
		System.out.println("Introduce un numero: "); //El texto que saldrá a la hora de pedirnos el numero
		num = datos.nextDouble(); //Lo que permite introducir texto en la variable
		
		double num2; // Definimos la variable junto a su nombre
		System.out.println("Introduce otro numero: "); //El texto que saldrá a la hora de pedirnos el otro número
		num2 = datos.nextDouble(); //Lo que permite introducir texto en la variable
		
		double menor = Math.min(num, num2); // Mostrara el numero menor entre los dos números
		double elevado = Math.pow(num, num2); // Mostrara el resultado del primer número elevado al segundo
		double raiz = Math.sqrt(num); // Mostrara la raiz cuadrada del primer numero 
		double aleatorio = Math.random() * num2; // Mostrara un valor aleatorio del segundo número
		
		System.out.println("El numero más pequeño entre los 2 es: " + menor); // Mostrara por pantalla el numero menor entre los dos números
		System.out.println("El primer numero elevado al segundo número da como resultado: " + elevado); // Mostrara por pantalla el resultado del primer número elevado al segundo
		System.out.println("La raiz cuadrada del primer numero es: " + raiz); // Mostrara por pantalla la raiz cuadrada del primer número
		System.out.println("El calculo del valor random es: " + aleatorio);  // Mostrara por pantalla un valor aleatorio del segundo número
		
		

	}

}
