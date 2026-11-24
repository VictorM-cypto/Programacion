package Ejercicio12;

import java.util.Scanner;

public class Ejercicio12 {

	public static void main(String[] args) {
		Scanner datos = new Scanner(System.in); //Sirve para poder introducir texto
		
		int numeros[] = new int [10];
		String menu;
		int v;
		int p;
		do {
			
		System.out.println("a.Mostrar valores.");
		System.out.println("b.Introducir valor");
		System.out.println("c.Salir.");
		menu = datos.nextLine();
		
	
		switch (menu) {
		case "a":
			for (int i = 0; i < numeros.length; i++) {
				System.out.println("Posición " + i + ": " + numeros[i]);
			}
		break;
		case "b":
			System.out.println("Introduce el valor v: ");
			 v = datos.nextInt();
			 System.out.println("Introduce un numero del 1-10: ");
			p = datos.nextInt();
			datos.nextLine();
			if (p >= 0 && p < numeros.length) {
			numeros[p] = v;	
		}	else {
			System.out.println("Opcion no valida");
		}
		break;
		case "c":
			System.out.println("Fin del programa");
		break;
		default:
			System.out.println("OPcion no valida");
		break;
	}
} while (!menu.equals("c"));
}
}