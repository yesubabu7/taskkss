
package TaskPac;

public class Product {
	private int prodId;
	private String name;
	private String description;
	private String hsncode;
	private String category;
	private String imageUrl;
	private Double price;

	public Product(int prodId, String name, String description, String hsncode, String category, String imageUrl,
			Double price) {
		this.prodId = prodId;
		this.name = name;
		this.description = description;
		this.hsncode = hsncode;
		this.category = category;
		this.imageUrl = imageUrl;
	}

	public int getProdId() {
		return prodId;
	}

	public void setProdId(int prodId) {
		this.prodId = prodId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getHsncode() {
		return hsncode;
	}

	public void setHsncode(String hsncode) {
		this.hsncode = hsncode;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public Double getPrice() {
		return price;

	}

	public void setPrice(double price) {
		this.price = price;

	}
}
