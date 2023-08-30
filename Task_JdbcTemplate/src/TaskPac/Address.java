
package TaskPac;

public class Address {

	private int addressId;
	private String streetAddress;
	private String city;
	private String state;
	private String postalCode;

	// Constructors, getters, and setters

	// Constructor without arguments (default constructor)
	public Address() {
	}

	// Constructor with arguments
	public Address(int addressId, String streetAddress, String city, String state, String postalCode) {
		this.addressId = addressId;
		this.streetAddress = streetAddress;
		this.city = city;
		this.state = state;
		this.postalCode = postalCode;
	}

	// Getters and setters

	public int getAddressId() {
		return addressId;
	}

	public void setAddressId(int addressId) {
		this.addressId = addressId;
	}

	public String getStreetAddress() {
		return streetAddress;
	}

	public void setStreetAddress(String streetAddress) {
		this.streetAddress = streetAddress;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getPostalCode() {
		return postalCode;
	}

	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}
}
