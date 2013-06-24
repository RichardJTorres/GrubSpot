package grubspot

class Tag {
    String tagName

    static constraints = {
    }
    static belongsTo = Eatery
    static hasMany = [eaterys: Eatery]

    public String toString(){
        return id + ", " + tagName
    }
}
