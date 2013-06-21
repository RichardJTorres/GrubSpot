package grubspot

class Eatery {
    String name
    String phone
    //Nice to have, last time visited.
    //Date lastVisited
    List<Tag> tags
    static hasOne = [location: Location]
    static hasMany = [tags: Tag];
    static constraints = {
        name nullable: false, blank: false, unique: true
        phone nullable: true, blank: true, unique: true
        location nullable: true, blank: true, unique: true
        tags nullable: true, blank: true
        //lastVisited nullable: true, blank: true
    }
    public String toString() {
        return name
    }
}
