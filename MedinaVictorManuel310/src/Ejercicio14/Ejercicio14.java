package Ejercicio14;

import java.util.Scanner;

public class Ejercicio14 {
	public static void main(String[] args) {
		Scanner datos = new Scanner(System.in); //Sirve para poder introducir texto
		int numeros[] = new int [55];
		int posicion = 0;
		for (int i = 1; i <= 10; i++) {
			for (int repeticion = 0; repeticion < i; repeticion++) {
				numeros[posicion] = i;
				posicion++;
				
			}
			
			
		}
		for(int i = 0; i < numeros.length; i++) {
			System.out.println(numeros[i]);
		}
		

	}

}
