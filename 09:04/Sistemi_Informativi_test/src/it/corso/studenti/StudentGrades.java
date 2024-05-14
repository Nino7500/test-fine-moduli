package it.corso.studenti;

import java.util.HashMap;
import java.util.Map;

/**
 * Classe che gestisce le votazioni degli studenti utilizzando una mappa.
 * 
 * @author Antonino Caserta
 */
public class StudentGrades {
	
	private Map<String, Integer> grades; // Mappa per memorizzare i voti degli studenti

	/**
	 * Costruttore della classe StudentGrades.
	 * Inizializza la mappa dei voti degli studenti.
	 */
	public StudentGrades() {
		grades = new HashMap<>();
	}

	/**
	 * Aggiunge un voto per lo studente specificato.
	 *
	 * @param studentName Il nome dello studente.
	 * @param grade Il voto dello studente.
	 */
	public void addGrade(String studentName, int grade) {
		if (studentName == null || studentName.isEmpty()) {
			throw new IllegalArgumentException("Il nome dello studente non può essere vuoto");
		}
		try {
			grades.put(studentName, grade);
			System.out.println("Voto aggiunto con successo per " + studentName);
		} catch (Exception e) {
			System.out.println("Si è verificato un errore durante l'aggiunta del voto per " + studentName + ": " + e.getMessage());
		}
	}

	/**
	 * Restituisce il voto dello studente specificato.
	 *
	 * @param studentName Il nome dello studente.
	 * @return Il voto dello studente come un intero. Se lo studente non è presente nella mappa, restituisce -1.
	 */
	public int getGrade(String studentName) {
		if (studentName == null || studentName.isEmpty()) {
			throw new IllegalArgumentException("Il nome dello studente non può essere vuoto");
		}
		try {
			return grades.getOrDefault(studentName, -1);
		} catch (Exception e) {
			System.out.println("Si è verificato un errore durante il recupero del voto per " + studentName + ": " + e.getMessage());
			return -1;
		}
	}

	/**
	 * Stampa tutti i voti degli studenti presenti nella mappa.
	 * Il metodo non accetta argomenti né restituisce valori.
	 */
	public void printGrades() {
		if (grades.isEmpty()) {
			System.out.println("Non ci sono voti da stampare");
			return;
		}
		try {
			for (Map.Entry<String, Integer> entry : grades.entrySet()) {
				System.out.println("Studente: " + entry.getKey() + ", Voto: " + entry.getValue());
			}
		} catch (Exception e) {
			System.out.println("Si è verificato un errore durante la stampa dei voti: " + e.getMessage());
		}
	}

}