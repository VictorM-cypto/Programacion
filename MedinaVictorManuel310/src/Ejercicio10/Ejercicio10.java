package Ejercicio10;

import java.util.Scanner;

public class Ejercicio10 {

	public static void main(String[] args) {
		Scanner datos = new Scanner(System.in); //Sirve para poder introducir texto
		System.out.println("Introduce el numero de personas: ");
		int n = datos.nextInt();
		double altura[] = new double [n];
		double suma = 0;
		for (int i = 0; i < n; i++) {
		 System.out.println("Introduce la altura de las persona " + (i + 1) + " :");
		 altura[i] = datos.nextDouble();
		 suma = suma + altura[i];
		}
		
		double media = suma/n;
		double max = altura[0];
		double min = altura[0];
		
		for (int i = 0; i < n; i++) {
			if (max < altura[i]) {
				max = altura[i]; 
			}
			if (min > altura[i]) {
				min = altura[i];
			}
			
		}
		double superiormedia = 0;
		double inferiormedia = 0;
		
		for (int i = 0; i  < n; i++) {
			if (media < superiormedia) {
				superiormedia++;
			}
			if (media > inferiormedia) {
				inferiormedia++;
			}
		}
		System.out.println("La altura media es: " + media);
		System.out.println("La altura máxima es: " + max);
		System.out.println("La altura mínima es: " + min);
		System.out.println("Las alturas superiores a la media son: " + superiormedia);
		System.out.println("Las alturas por debajo de la media son: " + inferiormedia);
		
		
	}

}
