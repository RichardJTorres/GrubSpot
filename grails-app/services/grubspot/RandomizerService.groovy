package grubspot

class RandomizerService {

    Eatery getRandomEatery(List<Tag> tagList) {
        def c = Eatery.createCriteria()
        def results = c.list {
            tags {
                inList('id', tagList.collect{ it.id })
            }
        }
        print results
        Collections.shuffle(results)
        print results
        def eatery = results[0]

        return eatery
    }
}
