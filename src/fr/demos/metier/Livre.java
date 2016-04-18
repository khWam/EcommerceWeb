package fr.demos.metier;

import java.sql.Timestamp;

public class Livre extends Product {

	private String isbn;
	private String author;
	private String edition;
	private String genre;
	
	
	public Livre(String name, String description, int price, Category category, String isbn, String author,
			String edition, String genre) {
		this(name, description, price, category, 0, isbn, author, edition, genre);
		
	}
	public Livre(String name, String description, int price, Category category,int quantity, String isbn, String author,
			String edition, String genre) {
		super(name, description, price, category, quantity);
		this.isbn=isbn;
		this.author=author;
		this.edition=edition;
		this.genre=genre;

		
	}
	
	
	public Livre(String name, String description, int price, Timestamp last_update, int quantity, Category category, String isbn, String author,
			String edition, String genre) {
		super(name, description, price, last_update, quantity, category);
		this.isbn=isbn;
		this.author=author;
		this.edition=edition;
		this.genre=genre;	}

	
	
	public String getTitle() {
		return isbn;
	}

	public void setTitle(String isbn) {
		this.isbn = isbn;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getEdition() {
		return edition;
	}

	public void setEdition(String edition) {
		this.edition = edition;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	@Override
	public String toString() {
		return "Livre [isbn=" + isbn + ", author=" + author + ", edition=" + edition + ", genre=" + genre
				+  ", getPrice()=" + getPrice() + ", getName()=" + getName() + ", getId()="
				+ getId() + ", getLast_update()=" + getLast_update() + ", getQuantity()=" + getQuantity()
				+ ", getCategory()=" + getCategory() + "]";
	}

	
	



}
