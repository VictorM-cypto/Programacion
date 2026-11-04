/*
 * Objetivo: Crear variables poner un texto y calcular
 * Autor: Víctor Manuel Medina Korri
 * Fecha: 08/10/2026
 */

package Ejercicio1; // Nombre del paquete

import java.util.Scanner; //Para importar la clase Scanner


public class Ejercicio1 { // Nombre de la clase

	public static void main(String[] args) { // Arranca el programa java
		Scanner datos = new Scanner(System.in); //Sirve para poder introducir texto
		
		String nombre; // Definimos la variable junto a su nombre
		System.out.println("Nombre: "); //El texto que saldrá a la hora de pedirnos el nombre
		nombre = datos.nextLine(); //Lo que permite introducir texto en la variable
		
		String apellidos; // Definimos la variable junto a su nombre
		System.out.println("Apellidos: "); //El texto que saldrá a la hora de pedirnos los apellidos
		apellidos = datos.nextLine(); //Lo que permite introducir texto en la variable
		
		String nacimiento; // Definimos la variable junto a su nombre
		System.out.println("Fecha de nacimiento: ");
		nacimiento = datos.nextLine(); //Lo que permite introducir texto en la variable
		
		float bruto; // Definimos la variable junto a su nombre
		System.out.println("Salario bruto: "); //El texto que saldrá a la hora de pedirnos el salario bruto
		bruto = datos.nextFloat(); //Lo que permite introducir texto en la variable
		
		byte trab; // Definimos la variable junto a su nombre
		System.out.println("Años de trabajo en la empresa: "); //El texto que saldrá a la hora de pedirnos los años trabajados
		trab = datos.nextByte(); //Lo que permite introducir texto en la variable
		
		double x = bruto * 0.15; // Creando la variable y el calculo que se debe hacer 
		double w = bruto - x; // Creando la variable y el calculo que se debe hacer 
		double y = trab * 0.02; // Creando la variable y el calculo que se debe hacer 
		double z = x + y; // Creando la variable y el calculo que se debe hacer 
		
		System.out.println("Estimad@ " + nombre + apellidos + ", su salario bruto es " + bruto + ", teniendo en cuenta un IRPF del 15% su salario neto es " + w + ".");  // Mostrara por pantalla los calculos pedidos
		
		System.out.println("Debido a sus " + trab + " años trabajando en la empresa su salario se incremente " + y + "y el salario total es " + z); // Mostrara por pantalla los calculos pedidos
	}

}
