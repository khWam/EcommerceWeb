package fr.demos.metier;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
//import java.util.NoSuchElementException;
import java.util.concurrent.atomic.AtomicLong;

import fr.demos.metier.MessageException;

public class CustomerOrder {
	// static int CLASS_ID_INCREMENT;

	private int id;
	private Timestamp date_created;
	private int amount;
	// static final AtomicLong NEXT_ID = new AtomicLong(0);
	// private final long ConfirmationNum =NEXT_ID.getAndIncrement();
	private long ConfirmationNum = this.hashCode();

	private List<Product> product;

	/*-----------------------------------------------------------------------------
	 * 1 Constructeur
	  ----------------------------------------------------------------------------*/
	public CustomerOrder() {
		super();
		// this.id = CLASS_ID_INCREMENT;
		Calendar calendar = Calendar.getInstance();
		Timestamp currentTimestamp = new Timestamp(calendar.getTime().getTime());

		this.date_created = currentTimestamp;
		this.amount = 0;

		this.product = new ArrayList<Product>();

		// incrementation des variables de class pour la prochaine invocation
		// CLASS_ID_INCREMENT++;

	}

	/*
	 * *** faire attention le ID et numéro de confirmation risque de ne pas etre
	 * unique le mieux serait peut etre de les créer à partir des variables de
	 * class
	 **/
	public CustomerOrder(Timestamp date_created, int amount, List<Product> product) {
		super();
		// this.id = CLASS_ID_INCREMENT;
		this.date_created = date_created;
		this.amount = amount;
		this.product = product;

		// incrementation des variables de class pour la prochaine invocation
		// CLASS_ID_INCREMENT++;

	}

	public CustomerOrder(int amount, List<Product> product) {
		super();
		// this.id = CLASS_ID_INCREMENT;
		Calendar calendar = Calendar.getInstance();
		this.date_created = new Timestamp(calendar.getTime().getTime());

		this.amount = amount;

		this.product = product;

		// incrementation des variables de class pour la prochaine invocation
		// CLASS_ID_INCREMENT++;

	}

	public int productCardinale(Product oneProduct) {
		int cardinale = 0;
		if (this.amount == 0 || this.product.isEmpty()) {
			cardinale = 0;
		} else {
			for (Product p : this.product) {
				if (p.equals(oneProduct)) {
					cardinale++;
				}

			}
		}
		return cardinale;
	}

	public void addProduct(Product oneProduct) throws Exception {
		if (oneProduct.getQuantity() > 0) {
			this.product.add(oneProduct);
			this.amount = this.amount + oneProduct.getPrice();
			oneProduct.decrement();
		} else {
			throw new MessageException("le stock du produit est epuisé!");
		}
		;

	}

	public void removeProduct(Product oneProduct) throws Exception {
		if (this.product.isEmpty() || this.amount == 0) {
			throw new MessageException("Le panier est vide !");
		} else if (!this.product.contains(oneProduct)) {
			throw new MessageException("Le panier ne contient pas l'article: " + oneProduct);
		} else {
			this.product.remove(oneProduct);
			this.amount = this.amount - oneProduct.getPrice();
			oneProduct.increment();
		}
	}

	/**
	 * Getter of date_created
	 */
	public Timestamp getDate_created() {
		return date_created;
	}

	/**
	 * Setter of date_created
	 */
	public void setDate_created(Timestamp date_created) {
		this.date_created = date_created;
	}

	/**
	 * Getter of amount
	 */
	public int getAmount() {
		return amount;
	}

	/**
	 * Setter of amount
	 */
	public void setAmount(int amount) {
		this.amount = amount;
	}

	/**
	 * Getter of ConfirmationNum
	 */
	public long getConfirmationNum() {
		return ConfirmationNum;
	}

	/**
	 * Setter of ConfirmationNum
	 */
	// public void setConfirmationNum(long ConfirmationNum) {
	// this.ConfirmationNum = ConfirmationNum;
	// }
	/**
	 * Getter of id
	 */
	public int getId() {
		return id;
	}

	/**
	 * Setter of id
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * Getter of product
	 */
	public List<Product> getProduct() {
		return product;
	}

	/**
	 * Setter of product
	 */
	public void setProduct(List<Product> product) {
		this.product = product;
	}

	@Override
	public String toString() {
		return "CustomerOrder [id=" + id + ", date_created=" + date_created + ", amount=" + amount
				+ ", ConfirmationNum=" + ConfirmationNum + ", product=" + product + ", hashCode()=" + hashCode() + "]";
	}

}