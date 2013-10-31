package grubspot



import grails.test.mixin.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.web.ControllerUnitTestMixin} for usage instructions
 */
@TestFor(EateryController)
class EateryControllerTests {

    void testIndex() {
        controller.index()
        assertEquals response.redirectedUrl, '/eatery/manager'
    }
}
