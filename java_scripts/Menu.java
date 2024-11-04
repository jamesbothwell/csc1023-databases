package assessment2_JDBC;

import java.util.Scanner;

public class Menu {
	
	// Fields
	private String items[];
	private String title;
	private Scanner input;
	private char lineBreak;

	// Constructors
	public Menu(String title, String data[], char lineBreak) {
		this.title = title;
		this.items = data;
		this.lineBreak = lineBreak;
		this.input = new Scanner(System.in);
	}

	// Methods
	private void display() {
	
		System.out.println(title); // Print menu title
		
		// Print line break
		for (int count = 0; count < title.length(); count++) {
			System.out.print(lineBreak);
		}
		
		System.out.println();
		
		// Print menu options
		for (int option = 1; option <= items.length; option++) {
			System.out.println(option + ". " + items[option - 1]);
		}
		
		System.out.println();
	}

	public int getUserChoice() {
		
		boolean ok = false;
		int value = 0;
		
		// Display the menu options
		display();
		
		// Process user choice with validation
		do {
			System.out.print("Enter Selection: ");
			try {
				value = input.nextInt();
				input.nextLine();
				if ( value>=1 && value<=items.length ) {
					ok = true;
				} else {
					System.out.println("\nInvalid selection. Please try again.\n");
				}
			} catch (Exception ex) {
				System.out.println("\nInvalid selection. Please try again.\n");
				input.nextLine();
			}
		} while (!ok);
		
		return value;
	}
}
