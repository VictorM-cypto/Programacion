package Ejercicio4;

import java.util.Scanner;

public class Ejercicio4 {

	public static void main(String[] args) {
		Scanner datos = new Scanner(System.in); //Sirve para poder introducir texto
		
		
		int i, suma, contador;
		System.out.println("Introduce números positivos: ");
		i = datos.nextInt();
		suma = 0;
		contador = 0;
		while (i != 0) {
		 if ( i < 0) {
			 System.out.println("Lo siento ese numero no es positivo");
		 } else {
		 suma = suma + i;
		 contador++;
		
		}  System.out.println("Introduce otro número positivo: ");
			i = datos.nextInt();
			
	}	if (contador > 0) {
		double media = (double) suma/contador;
		System.out.println("La media de los numeros es: " + media);
		System.out.println("La cantidad de numeros mayores a 0 son: " + contador);
	}
	}
}
