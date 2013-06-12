package grubspot

class Location {
	String street
	String city
	String state
	Integer zip

	static belongsTo = [eatery: Eatery]
    static constraints = {
//        state size: 2..2
    }

	public String toString() {
		return street + ' ' +  city + ' ' + state + ', ' + zip
	}
}