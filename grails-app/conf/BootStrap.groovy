import grubspot.Eatery
import grubspot.Location
import grubspot.Tag

class BootStrap {

    def init = { servletContext ->
        //create eateries
        Eatery eatery1 = new Eatery(name: "Oinkster", phone: "626-265-4555")
        Eatery eatery2 = new Eatery(name: "Coffee Table", phone: "626-265-4443")
        //create locations
        Location location1 = new Location(street: "123 imaginary lane", city: "Los Angeles", state: "CA", zip: 91702)
        Location location2 = new Location(street: "345 imaginary lane", city: "Los Angeles", state: "CA", zip: 91702)
        location1.save()
        location2.save()
        //create tags
        Tag tag1 = new Tag(tagName: "burgers")
        Tag tag2 = new Tag(tagName: "sit down")
        Tag tag3 = new Tag(tagName: "call in")
        tag1.save()
        tag2.save()
        tag3.save()
        //create tag list
        List<Tag> tagList1 = new ArrayList<Tag>()
        tagList1.addAll([tag1, tag2])
        List<Tag> tagList2 = new ArrayList<>()
        tagList2.add(tag1)
        tagList2.add(tag2)
        //relate eateries to property objects
        eatery1.tags = tagList1
        eatery2.tags = tagList2
        eatery1.location = location1
        eatery2.location = location2
        //save eateries
        eatery1.save(flush: true)
        eatery2.save(flush: true)






    }
    def destroy = {
    }
}
