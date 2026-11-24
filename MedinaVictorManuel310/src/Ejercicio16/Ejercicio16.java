package Ejercicio16;

import java.util.Arrays;
import java.util.Scanner;

public class Ejercicio16 {

	public static void main(String[] args) {
		  int tamano = 0;
	        for (int i = 1; i <= 10; i++) {
	            tamano += i;
	        }

	        int secuencia[] = new int[tamano];
	        int inicio = 0;

	        
	        for (int valor = 1; valor <= 10; valor++) {
	            int fin = inicio + valor;
	            Arrays.fill(secuencia, inicio, fin, valor);
	            inicio = fin;
	        }


	        System.out.print("La secuencia es: ");
	        for (int i = 0; i < secuencia.length; i++) {
	            System.out.print(secuencia[i] + " ");
	        }
	    
	    }
}



