/*
 * Objetivo: Crear variables poner un texto y calcular
 * Autor: Víctor Manuel Medina Korri
 * Fecha: 08/10/2026
 */

package Ejercicio2; // Nombre del paquete

import java.util.Scanner; //Para importar la clase Scanner

public class Ejercicio2 { // Nombre de la clase

	public static void main(String[] args) { // Arranca el programa java
		Scanner datos = new Scanner(System.in); //Sirve para poder introducir texto
		
		double euros; // Definimos la variable junto a su nombre
		System.out.println("Introduce los euros:"); //El texto que saldrá a la hora de pedirnos el nombre
		euros = datos.nextDouble(); //Lo que permite introducir texto en la variable
		
		double x = euros * 166.386; // Estableciendo la variable x y el calculo que realiza la variable
		
		double pesetas; // Definimos la variable junto a su nombre
		System.out.println("Introduce las pesetas:"); //El texto que saldrá a la hora de pedirnos el nombre
		pesetas = datos.nextDouble(); //Lo que permite introducir texto en la variable
		
		double y = pesetas / 166.386; // Definimos la variable junto a su nombre y el calculo de division de la variable
		
		String resultados; // Definimos la variable junto a su nombre
		System.out.println("Los euros introducidos son " + euros + " que en pesetas son " + x + " las pesetas introducidas son " + pesetas + " que en euros son " + y);  // Mostrara por pantalla los calculos pedidos y u texto explicando la situación
		

	}

}
