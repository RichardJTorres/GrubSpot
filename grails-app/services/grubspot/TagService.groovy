package grubspot


class TagService {

    def addTags(String tagString) {
        String[] tagList = tagString.split(',') - null - " "
        List<Tag> tags = new ArrayList<>()
        for (String t in tagList){
            t.trim().toLowerCase()
            tags.add(Tag.findByTagName(t) ?: new Tag(tagName: t).save(flush: true))
        }
        return tags
    }
}
