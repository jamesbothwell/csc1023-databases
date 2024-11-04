package assessment2_JDBC;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;
import java.util.Scanner;

import assessment2_JDBC.Menu;

public class Assessment2_JDBC {

	private static Connection con;

	public static void main(String[] args) {

		try {

			String host = "jdbc:mysql://jbothwell06.webhosting1.eeecs.qub.ac.uk";
			String port = ":3306/";
			String DB = "jbothwell06";
			String username = "jbothwell06";
			String password = "NVHMVw8mnqs9Yc7K";
			String urlDB = host + port + DB;
			con = DriverManager.getConnection(urlDB, username, password);

			String mainOptions[] = { "Views", "Insert", "Exit" };

			Menu mainMenu = new Menu("Job Portal", mainOptions, '+'); // Create main menu

			int choice = 0;
			boolean quit = false;

			// Take in user input and process their choice
			do {
				choice = mainMenu.getUserChoice();
				quit = processChoice(choice);
			} while (!quit);

			// Message printed when application is closed/terminated
			System.out.println("\nAll done - Goodbye!");

			con.close();

		} catch (SQLException ex) {
			System.err.println("SQLException: " + ex.getMessage());
		}
	}

	private static boolean processChoice(int choice) {

		boolean quit = false;
		switch (choice) {
		case 1:
			views(); // Open views sub menu
			break;
		case 2:
			insert(); // Open insert sub menu
			break;
		case 3:
			quit = true; // quit the application
		}
		return quit;
	}

	// VIEWS

	private static void views() {

		System.out.println();

		String[] viewOptions = { "Information technology jobs", "Job application count",
				"Candidates application status", "Jobs posted in last 30 days", "Close Menu" }; // Options

		Menu viewsMenu = new Menu("Views", viewOptions, '-'); // Create views sub menu

		int choice = 0;
		boolean quit = false;

		// Take in user input and process their choice
		do {
			choice = viewsMenu.getUserChoice();
			quit = processViewsMenuChoice(choice);
		} while (!quit);

		// Message printed when sub menu closed
		System.out.println("\nViews Menu Closed\n");

	}

	private static boolean processViewsMenuChoice(int choice) {

		boolean quit = false;
		switch (choice) {
		case 1:
			whereClause(); // Open information technology jobs
			break;
		case 2:
			aggregateFunction(); // Open job application count
			break;
		case 3:
			joins(); // Open candidates application status
			break;
		case 4:
			filteringRecords(); // Open jobs posted in last 30 days
			break;
		case 5:
			quit = true; // Quit the menu
		}
		return quit;
	}

	// Where clause view

	private static void whereClause() {

		try {

			System.out.println();
			System.out.println("Information technology jobs:\n");
			String statement = "SELECT * FROM information_technology_jobs"; // Get the information_technology_jobs view

			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(statement);

			// Table output formatting
			String leftAlignFormat = "| %-39s | %-64s | %-10s | %-33s | %-13s | %-13s |%n";

			// Create table headings
			System.out.format(
					"+-----------------------------------------+------------------------------------------------------------------+------------+-----------------------------------+---------------+---------------+%n");
			System.out.format(
					"| Job Title                               | Job Description                                                  | Salary     | Location                          | Date Posted   | Closing Date  |%n");
			System.out.format(
					"+-----------------------------------------+------------------------------------------------------------------+------------+-----------------------------------+---------------+---------------+%n");

			while (rs.next()) {

				String jobTitle = rs.getString("Job Title");
				String jobDescription = rs.getString("Job Description");
				float salary = rs.getFloat("Salary");
				String location = rs.getString("Location");
				Date datePosted = rs.getDate("Date Posted");
				Date closingDate = rs.getDate("Closing Date");

				System.out.format(leftAlignFormat, jobTitle, jobDescription, salary, location, datePosted, closingDate);
			}

			// Close off bottom of table
			System.out.format(
					"+-----------------------------------------+------------------------------------------------------------------+------------+-----------------------------------+---------------+---------------+%n");

		} catch (SQLException e) {
			System.out.println();
			e.printStackTrace();
		}

		System.out.println();
	}

	// Aggregate function view

	private static void aggregateFunction() {

		try {

			System.out.println();
			System.out.println("Job application count:\n");
			String statement = "SELECT * FROM job_application_count"; // Get the job_application_count view

			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(statement);

			// Table output formatting
						String leftAlignFormat = "| %-35s | %-39s | %-31s | %-10s | %-20s |%n";

						// Create table headings
						System.out.format(
								"+-------------------------------------+-----------------------------------------+---------------------------------+------------+----------------------+%n");
						System.out.format(
								"| Employer                            | Job Title                               | Sector                          | Salary     | Application Status   |%n");
						System.out.format(
								"+-------------------------------------+-----------------------------------------+---------------------------------+------------+----------------------+%n");

						while (rs.next()) {

							String employer = rs.getString("Employer");
							String job = rs.getString("Job");
							String sector = rs.getString("Sector");
							float salary = rs.getFloat("Salary");
							int applicationCount = rs.getInt("Application Count");

							System.out.format(leftAlignFormat, employer, job, sector, salary, applicationCount);
						}

						// Close off bottom of table
						System.out.format(
								"+-------------------------------------+-----------------------------------------+---------------------------------+------------+----------------------+%n");

		} catch (SQLException e) {
			System.out.println();
			e.printStackTrace();
		}

		System.out.println();
	}

	// Joins view

	private static void joins() {

		try {

			System.out.println();
			System.out.println("Candidates application status:\n");
			String statement = "SELECT * FROM candidates_application_status"; // Get the candidates_application_status
																				// view

			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(statement);

			// Table output formatting
			String leftAlignFormat = "| %-15s | %-15s | %-39s | %-10s | %-31s | %-20s |%n";

			// Create table headings
			System.out.format(
					"+-----------------+-----------------+-----------------------------------------+------------+---------------------------------+----------------------+%n");
			System.out.format(
					"| First Name      | Last Name       | Job Title                               | Salary     | Sector                          | Application Status   |%n");
			System.out.format(
					"+-----------------+-----------------+-----------------------------------------+------------+---------------------------------+----------------------+%n");

			while (rs.next()) {

				String firstName = rs.getString("First Name");
				String lastName = rs.getString("Last Name");
				String jobTitle = rs.getString("Job Title");
				float salary = rs.getFloat("Salary");
				String sector = rs.getString("Sector");
				String applicationStatus = rs.getString("Application Status");

				System.out.format(leftAlignFormat, firstName, lastName, jobTitle, salary, sector, applicationStatus);
			}

			// Close off bottom of table
			System.out.format(
					"+-----------------+-----------------+-----------------------------------------+------------+---------------------------------+----------------------+%n");

		} catch (SQLException e) {
			System.out.println();
			e.printStackTrace();
		}

		System.out.println();
	}

	// Filtering records view

	private static void filteringRecords() {

		try {

			System.out.println();
			System.out.println("Jobs posted in last 30 days:\n");
			String statement = "SELECT * FROM jobs_posted_in_last_30_days"; // Get the jobs_posted_in_last_30_days view

			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(statement);

			// Table output formatting
			String leftAlignFormat = "| %-39s | %-64s | %-31s | %-10s | %-13s | %-13s |%n";

			// Create table headings
			System.out.format(
					"+-----------------------------------------+------------------------------------------------------------------+---------------------------------+------------+---------------+---------------+%n");
			System.out.format(
					"| Job Title                               | Job Description                                                  | Sector                          | Salary     | Date Posted   | Closing Date  |%n");
			System.out.format(
					"+-----------------------------------------+------------------------------------------------------------------+---------------------------------+------------+---------------+---------------+%n");

			while (rs.next()) {

				String jobTitle = rs.getString("Job Title");
				String jobDescription = rs.getString("Job Description");
				String sector = rs.getString("Sector");
				float salary = rs.getFloat("Salary");
				Date datePosted = rs.getDate("Date Posted");
				Date closingDate = rs.getDate("Closing Date");

				System.out.format(leftAlignFormat, jobTitle, jobDescription, sector, salary, datePosted, closingDate);
			}

			// Close off bottom of table
			System.out.format(
					"+-----------------------------------------+------------------------------------------------------------------+---------------------------------+------------+---------------+---------------+%n");

		} catch (SQLException e) {
			System.out.println();
			e.printStackTrace();
		}

		System.out.println();
	}

	// INSERT

	private static void insert() {

		System.out.println();

		String[] insertOptions = { "Insert new application", "Insert new candidate", "Insert new contract",
				"Insert new employer", "Insert new job", "Insert new job contract", "Insert new location",
				"Insert new sector", "Close Menu" }; // Options

		Menu insertMenu = new Menu("Insert", insertOptions, '-'); // Create insert sub menu

		int choice = 0;
		boolean quit = false;

		// Take in user input and process their choice
		do {
			choice = insertMenu.getUserChoice();
			quit = processInsertMenuChoice(choice);
		} while (!quit);

		// Message printed when sub menu closed
		System.out.println("\nInsert Menu Closed\n");

	}

	private static boolean processInsertMenuChoice(int choice) {

		boolean quit = false;
		switch (choice) {
		case 1:
			insertApplication(); // Insert a new application
			break;
		case 2:
			insertCandidate(); // Insert a new candidate
			break;
		case 3:
			insertContract(); // Insert a new contract
			break;
		case 4:
			insertEmployer(); // Insert a new employer
			break;
		case 5:
			insertJob(); // Insert a new job
			break;
		case 6:
			insertJobContract(); // Insert a new job contract
			break;
		case 7:
			insertLocation(); // Insert a new location
			break;
		case 8:
			insertSector(); // Insert a new sector
			break;
		case 9:
			quit = true; // quit the application
		}
		return quit;
	}

	// Application

	private static void insertApplication() {

		System.out.println();

		try {

			boolean ok;

			// Get user input using scanner
			Scanner input = new Scanner(System.in);

			// Job ID
			ok = false;
			String jobID;
			do {

				System.out.print("Enter job ID: ");
				jobID = input.nextLine();

				if (jobID.trim().length() > 0) {
					ok = true;
				}
			} while (!ok);

			// Candidate ID
			ok = false;
			String candidateID;
			do {

				System.out.print("Enter candidate ID: ");
				candidateID = input.nextLine();

				if (candidateID.trim().length() > 0) {
					ok = true;
				}
			} while (!ok);

			// Application Status
			ok = false;
			String applicationStatus;
			do {

				System.out.print("Enter application status: ");
				applicationStatus = input.nextLine();

				if (applicationStatus.trim().length() > 0) {
					ok = true;
				}
			} while (!ok);

			// Carry out SQL INSERT statement with user input

			Statement stmt = con.createStatement();
			stmt.executeUpdate("INSERT INTO application (job_id, candidate_id, application_status) VALUES ('" + jobID
					+ "', '" + candidateID + "', '" + applicationStatus + "')");
			
			System.out.println("\nRecord successfully inserted");

			// Close statement
			stmt.close();

		} catch (SQLException e) {
			System.out.println();
			e.printStackTrace();
		}

		System.out.println();
	}

	// Candidate

	private static void insertCandidate() {

		System.out.println();

		try {

			boolean ok;

			// Get user input using scanner
			Scanner input = new Scanner(System.in);

			// First Name
			ok = false;
			String firstName;
			do {

				System.out.print("Enter first name: ");
				firstName = input.nextLine();

				if (firstName.trim().length() > 0) {
					ok = true;
				}
			} while (!ok);

			// Last Name
			ok = false;
			String lastName;
			do {

				System.out.print("Enter last name: ");
				lastName = input.nextLine();

				if (lastName.trim().length() > 0) {
					ok = true;
				}
			} while (!ok);

			// Address Line
			ok = false;
			String addressLine;
			do {

				System.out.print("Enter address line: ");
				addressLine = input.nextLine();

				if (addressLine.trim().length() > 0) {
					ok = true;
				}
			} while (!ok);

			// City
			ok = false;
			String city;
			do {

				System.out.print("Enter city: ");
				city = input.nextLine();

				if (city.trim().length() > 0) {
					ok = true;
				}
			} while (!ok);

			// Postal Code
			ok = false;
			String postalCode;
			do {

				System.out.print("Enter postal code: ");
				postalCode = input.nextLine();

				if (postalCode.trim().length() > 0) {
					ok = true;
				}
			} while (!ok);

			// Country
			ok = false;
			String country;
			do {

				System.out.print("Enter country: ");
				country = input.nextLine();

				if (country.trim().length() > 0) {
					ok = true;
				}
			} while (!ok);

			// Email
			ok = false;
			String email;
			do {

				System.out.print("Enter email: ");
				email = input.nextLine();

				if (email.trim().length() > 0) {
					ok = true;
				}
			} while (!ok);

			// Contact Number
			ok = false;
			String contactNumber;
			do {

				System.out.print("Enter contact number: ");
				contactNumber = input.nextLine();

				if (contactNumber.trim().length() > 0) {
					ok = true;
				}
			} while (!ok);

			// Date Of Birth
			ok = false;
			String dateOfBirth;
			do {

				System.out.print("Enter date of birth: ");
				dateOfBirth = input.nextLine();

				if (dateOfBirth.trim().length() > 0) {
					ok = true;
				}
			} while (!ok);

			// Currently Seeking
			ok = false;
			String currentlySeeking;
			do {

				System.out.print("Enter currently seeking (yes or no): ");
				currentlySeeking = input.nextLine();

				if (currentlySeeking.trim().length() > 0) {

					if (currentlySeeking.equals("yes")) {
						currentlySeeking = "1";
					} else if (currentlySeeking.equals("no")) {
						currentlySeeking = "0";
					}

					ok = true;
				}
			} while (!ok);

			// Carry out SQL INSERT statement with user input

			Statement stmt = con.createStatement();
			stmt.executeUpdate(
					"INSERT INTO candidate (first_name, last_name, address_line, city, postal_code, country, email, contact_number, date_of_birth, currently_seeking) VALUES ('"
							+ firstName + "', '" + lastName + "', '" + addressLine + "', '" + city + "', '" + postalCode
							+ "', '" + country + "', '" + email + "', '" + contactNumber + "', '" + dateOfBirth + "', '"
							+ currentlySeeking + "')");
			
			System.out.println("\nRecord successfully inserted");

			// Close statement
			stmt.close();

		} catch (SQLException e) {
			System.out.println();
			e.printStackTrace();
		}

		System.out.println();
	}

	// Contract

	private static void insertContract() {

		System.out.println();

		try {

			boolean ok;

			// Get user input using scanner
			Scanner input = new Scanner(System.in);

			// Contract Name
			ok = false;
			String contractName;
			do {

				System.out.print("Enter contract name: ");
				contractName = input.nextLine();

				if (contractName.trim().length() > 0) {
					ok = true;
				}
			} while (!ok);

			// Carry out SQL INSERT statement with user input

			Statement stmt = con.createStatement();
			stmt.executeUpdate("INSERT INTO contract (contract_name) VALUES ('" + contractName + "')");
			
			System.out.println("\nRecord successfully inserted");

			// Close statement
			stmt.close();

		} catch (SQLException e) {
			System.out.println();
			e.printStackTrace();
		}

		System.out.println();
	}

	// Employer

	private static void insertEmployer() {

		System.out.println();

		try {

			boolean ok;

			// Get user input using scanner
			Scanner input = new Scanner(System.in);

			// Employer Name
			ok = false;
			String employerName;
			do {

				System.out.print("Enter employer name: ");
				employerName = input.nextLine();

				if (employerName.trim().length() > 0) {
					ok = true;
				}
			} while (!ok);

			// Employer Description
			ok = false;
			String employerDescription;
			do {

				System.out.print("Enter employer description: ");
				employerDescription = input.nextLine();

				if (employerDescription.trim().length() > 0) {
					ok = true;
				}
			} while (!ok);

			// Email
			ok = false;
			String email;
			do {

				System.out.print("Enter email: ");
				email = input.nextLine();

				if (email.trim().length() > 0) {
					ok = true;
				}
			} while (!ok);

			// Contact Number
			ok = false;
			String contactNumber;
			do {

				System.out.print("Enter contact number: ");
				contactNumber = input.nextLine();

				if (contactNumber.trim().length() > 0) {
					ok = true;
				}
			} while (!ok);

			// Sector ID
			ok = false;
			String sectorID;
			do {

				System.out.print("Enter sector ID: ");
				sectorID = input.nextLine();

				if (sectorID.trim().length() > 0) {
					ok = true;
				}
			} while (!ok);

			// Carry out SQL INSERT statement with user input

			Statement stmt = con.createStatement();
			stmt.executeUpdate(
					"INSERT INTO employer (employer_name, employer_description, email, contact_number, sector_id) VALUES ('"
							+ employerName + "', '" + employerDescription + "', '" + email + "', '" + contactNumber
							+ "', '" + sectorID + "')");
			
			System.out.println("\nRecord successfully inserted");

			// Close statement
			stmt.close();

		} catch (SQLException e) {
			System.out.println();
			e.printStackTrace();
		}

		System.out.println();
	}

	// Job

	private static void insertJob() {

		System.out.println();

		try {

			boolean ok;

			// Get user input using scanner
			Scanner input = new Scanner(System.in);

			// Job Title
			ok = false;
			String jobTitle;
			do {

				System.out.print("Enter job title: ");
				jobTitle = input.nextLine();

				if (jobTitle.trim().length() > 0) {
					ok = true;
				}
			} while (!ok);

			// Job Description
			ok = false;
			String jobDescription;
			do {

				System.out.print("Enter job description: ");
				jobDescription = input.nextLine();

				if (jobDescription.trim().length() > 0) {
					ok = true;
				}
			} while (!ok);

			// Salary
			ok = false;
			String salary;
			do {

				System.out.print("Enter salary: ");
				salary = input.nextLine();

				if (salary.trim().length() > 0) {
					ok = true;
				}
			} while (!ok);

			// Closing Date
			ok = false;
			String closingDate;
			do {

				System.out.print("Enter closing date: ");
				closingDate = input.nextLine();

				if (closingDate.trim().length() > 0) {
					ok = true;
				}
			} while (!ok);

			// Sector ID
			ok = false;
			String sectorID;
			do {

				System.out.print("Enter sector ID: ");
				sectorID = input.nextLine();

				if (sectorID.trim().length() > 0) {
					ok = true;
				}
			} while (!ok);

			// Employer ID
			ok = false;
			String employerID;
			do {

				System.out.print("Enter employer ID: ");
				employerID = input.nextLine();

				if (employerID.trim().length() > 0) {
					ok = true;
				}
			} while (!ok);

			// Location ID
			ok = false;
			String locationID;
			do {

				System.out.print("Enter location ID: ");
				locationID = input.nextLine();

				if (locationID.trim().length() > 0) {
					ok = true;
				}
			} while (!ok);

			// Carry out SQL INSERT statement with user input

			Statement stmt = con.createStatement();
			stmt.executeUpdate(
					"INSERT INTO job (job_title, job_description, salary, closing_date, sector_id, employer_id, location_id) VALUES ('"
							+ jobTitle + "', '" + jobDescription + "', '" + salary + "', '" + closingDate + "', '"
							+ sectorID + "', '" + employerID + "', '" + locationID + "')");
			
			System.out.println("\nRecord successfully inserted");

			// Close statement
			stmt.close();

		} catch (SQLException e) {
			System.out.println();
			e.printStackTrace();
		}

		System.out.println();
	}

	// Job Contract

	private static void insertJobContract() {

		System.out.println();

		try {

			boolean ok;

			// Get user input using scanner
			Scanner input = new Scanner(System.in);

			// Job ID
			ok = false;
			String jobID;
			do {

				System.out.print("Enter job ID: ");
				jobID = input.nextLine();

				if (jobID.trim().length() > 0) {
					ok = true;
				}
			} while (!ok);

			// Contract ID
			ok = false;
			String contractID;
			do {

				System.out.print("Enter contract ID: ");
				contractID = input.nextLine();

				if (contractID.trim().length() > 0) {
					ok = true;
				}
			} while (!ok);

			// Carry out SQL INSERT statement with user input

			Statement stmt = con.createStatement();
			stmt.executeUpdate(
					"INSERT INTO job_contract (job_id, contract_id) VALUES ('" + jobID + "', '" + contractID + "')");
			
			System.out.println("\nRecord successfully inserted");

			// Close statement
			stmt.close();

		} catch (SQLException e) {
			System.out.println();
			e.printStackTrace();
		}

		System.out.println();
	}

	// Location

	private static void insertLocation() {

		System.out.println();

		try {

			boolean ok;

			// Get user input using scanner
			Scanner input = new Scanner(System.in);

			// Location Name
			ok = false;
			String locationName;
			do {

				System.out.print("Enter location name: ");
				locationName = input.nextLine();

				if (locationName.trim().length() > 0) {
					ok = true;
				}
			} while (!ok);

			// Country
			ok = false;
			String country;
			do {

				System.out.print("Enter country: ");
				country = input.nextLine();

				if (country.trim().length() > 0) {
					ok = true;
				}
			} while (!ok);

			// Carry out SQL INSERT statement with user input

			Statement stmt = con.createStatement();
			stmt.executeUpdate(
					"INSERT INTO location (location_name, country) VALUES ('" + locationName + "', '" + country + "')");
			
			System.out.println("\nRecord successfully inserted");

			// Close statement
			stmt.close();

		} catch (SQLException e) {
			System.out.println();
			e.printStackTrace();
		}

		System.out.println();
	}

	// Sector

	private static void insertSector() {

		System.out.println();

		try {

			boolean ok;

			// Get user input using scanner
			Scanner input = new Scanner(System.in);

			// Sector Name
			ok = false;
			String sectorName;
			do {

				System.out.print("Enter sector name: ");
				sectorName = input.nextLine();

				if (sectorName.trim().length() > 0) {
					ok = true;
				}
			} while (!ok);

			// Carry out SQL INSERT statement with user input

			Statement stmt = con.createStatement();
			stmt.executeUpdate("INSERT INTO sector (sector_name) VALUES ('" + sectorName + "')");
			
			System.out.println("\nRecord successfully inserted");

			// Close statement
			stmt.close();

		} catch (SQLException e) {
			System.out.println();
			e.printStackTrace();
		}

		System.out.println();
	}

}