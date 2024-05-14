package it.corso.studenti;

/**
 * Classe di utilità per la gestione dei voti degli studenti.
 * 
 * @author Antonino Caserta
 */
public class Main {
	/**
	 * Metodo principale per testare la classe StudentGrades.
	 *
	 * @param args Gli argomenti della riga di comando (non utilizzati in questo caso).
	 */
	public static void main(String[] args) {

		StudentGrades studentGrades = new StudentGrades();

		try {

			studentGrades.addGrade("Pippo", 85);
			studentGrades.addGrade("Pluto", 70);
			studentGrades.addGrade("Mario", 90); 
			 
			System.out.println("Voto per Pippo: " + studentGrades.getGrade("Pippo")); 
			System.out.println("Voto per Pluto: " + studentGrades.getGrade("Pluto")); 
			System.out.println("Voto per Mario: " + studentGrades.getGrade("Mario"));
			System.out.println("Voto per Marco: " + studentGrades.getGrade("Marco")); 

			System.out.println("Tutti i voti:");
			studentGrades.printGrades();
			
		} catch (Exception e) {
			System.out.println("Si è verificato un errore: " + e.getMessage());
		} 
	}
}