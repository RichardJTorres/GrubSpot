package grubspot

class RandomizerService {

    Eatery getRandomEatery(List<Tag> tagList) {
        List<Eatery> eateryList = Eatery.findAllByTagsInList(tagList)
        Random random = new Random()
        Eatery eatery = eateryList.get(random.nextInt(eateryList.size()))
        return eatery
    }
}
