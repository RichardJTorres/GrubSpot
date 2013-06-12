package grubspot

class Location {
	String street
	String city
	String state
	Integer zip

	static belongsTo = [eatery: Eatery]

	public String toString() {
		return street + ' ' +  city + ' ' + state + ' ' + zip
	}
}