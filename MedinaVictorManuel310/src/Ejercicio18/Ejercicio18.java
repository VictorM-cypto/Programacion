package Ejercicio18;

import java.util.Arrays;
import java.util.Scanner;

public class Ejercicio18 {

	public static void main(String[] args) {
		int numeros[] = new int [30];
		for (int i = 0; i < numeros.length; i++) {
			numeros[i] = (int) (Math.random()*10);
			
		}
		
		Arrays.sort(numeros);
		
		for (int i = 0; i < numeros.length; i++) {
			System.out.println(numeros[i]);
		}
	}

}
