package Ejercicio5;

import java.util.Scanner;

public class Ejercicio5 {

	public static void main(String[] args) {
		Scanner datos = new Scanner(System.in); //Sirve para poder introducir texto
		int i, contadorpositivos, contador, contadornegativos, contadorceros;
		double sumapositivos, sumanegativos;
		contador = 0;
		contadorpositivos = 0;
		contadornegativos = 0;
		contadorceros = 0;
		sumapositivos = 0;
		sumanegativos = 0;
		
		while (contador < 10) {
			System.out.println("Introduce un número:");
			i = datos.nextInt();
			if (i > 0) {
				contadorpositivos++;
				sumapositivos = sumapositivos + i;
			} else if (i < 0) {
				contadornegativos++;
				sumanegativos = sumanegativos + i;
		} else if (i == 0) {
				contadorceros++;
		}
			contador++;
	}
		if (contadorpositivos > 0) {
			System.out.println("La media de los numeros positivos es " + sumapositivos/contadorpositivos);
		} else {
			System.out.println("No se han introducido numeros positivos");
		} 
		if (contadornegativos > 0) {
			System.out.println("La media de los numeros negativos " + sumanegativos/contadornegativos);
		} else {
			System.out.println("No se han introducido numeros negativos");
		}
		System.out.println("La cantidad de 0 introducidos es: " + contadorceros);
	}
}
