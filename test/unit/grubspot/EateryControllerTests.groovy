package grubspot



import grails.test.mixin.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.web.ControllerUnitTestMixin} for usage instructions
 */
@TestFor(EateryController)
class EateryControllerTests {

    void testTags() {
        def eateryInstance = new Eatery()
        eateryInstance.name = 'oinkster'
        assert eateryInstance.name == 'oinkster'
        def tagString = "burgers, chicken, call"
        def tagList = tagString.split(',')
        println(tagList)
        for (t in tagList){
            t.trim()
            eateryInstance.tags = new Tag(tagName: t)
        }
    }
}
