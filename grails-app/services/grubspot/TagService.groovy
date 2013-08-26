package grubspot


class TagService {

    def addTags(String tagString) {
        List<Tag> tags = new ArrayList<>()
        if (!tagString) {
            return tags
        }
        String[] tagList = tagString.split(',') - null - " "
        for (String t in tagList){
            t.trim().toLowerCase()
            tags.add(Tag.findByTagName(t) ?: new Tag(tagName: t).save(flush: true))
        }
        return tags
    }
}
