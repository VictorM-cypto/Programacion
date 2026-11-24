package Ejercicio19;

import java.util.Arrays;
import java.util.Scanner;

public class Ejercicio19 {

	public static void main(String[] args) {
		Scanner datos = new Scanner(System.in); //Sirve para poder introducir texto
		int numeros[] = new int [8];
		for (int i = 0; i < numeros.length; i++) {
			System.out.println("Introduce los datos del participante " + i + ":");
			numeros[i] = datos.nextInt();
			if (numeros[i] < 1000) {
				System.out.println("No son numeros validos");
				i--;
			} else if (numeros[i] > 2800) {
				System.out.println("No son numeros validos");
				i--;
			}  	
			
		}
		
		Arrays.sort(numeros);
		for (int i = numeros.length - 1; i >= 0; i--) {
			System.out.println(numeros[i]);
		}

	}

}
