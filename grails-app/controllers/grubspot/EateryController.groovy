package grubspot

import grails.converters.JSON
import org.springframework.dao.DataIntegrityViolationException

class EateryController {
    RandomizerService randomizerService
    TagService tagService

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        if (!params.max) params.max = 10
        render(view: "list", model: [eateryList: Eatery.list(params)])
    }

    def create() {
        List<String> tags = new ArrayList<>()
        for (Tag t in Tag.list()) {
            tags.add(t.tagName)
        }
        render(view: "create", model: [eateryInstance: new Eatery(params), tagList: tags as JSON])
    }

    def save() {
        //build a location
        Location locationInstance = new Location()
        locationInstance.street = params['location.street']
        locationInstance.city = params['location.city']
        locationInstance.state = params['location.state']
        locationInstance.zip = Integer.parseInt(params['location.zip'].toString())

        //build an eatery
        Eatery eateryInstance = new Eatery()
        eateryInstance.name = params['name']
        eateryInstance.phone = params['phone']

        //assign comma delimited tags
        eateryInstance.tags = tagService.addTags(params['hidden-tags'])
        //relate eatery and location
        eateryInstance.location = locationInstance
        locationInstance.eatery = eateryInstance

        //save and handle errors
        if (!eateryInstance.save(flush: true)) {
            render(view: "create", model: [eateryInstance: eateryInstance])
        } else {
            flash.message = message(code: 'default.created.message', args: [message(code: 'eatery.label'), eateryInstance.name])
            redirect(action: "show", id: eateryInstance.id)
        }
    }

    def show(Long id) {
        def eateryInstance = Eatery.get(id)
        List<String> tags = new ArrayList<>()
        for (Tag t in eateryInstance.tags) {
            tags.add(t.tagName)
        }
        if (eateryInstance == null) {
            flash.message = message(code: 'grubspot.show.not.found', args: [eateryInstance.name])
        }
        render(view: 'show', model: [eateryInstance: eateryInstance, tagList: tags as JSON])
    }

    def edit(Long id) {
        def eateryInstance = Eatery.get(id)
        if (!eateryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'eatery.label'), id])
            redirect(action: "list")
            return
        }
        [eateryInstance: eateryInstance]
    }

    def update(Long id, Long version) {
        def eateryInstance = Eatery.get(id)
        if (!eateryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'eatery.label', default: 'Eatery'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (eateryInstance.version > version) {
                eateryInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'eatery.label', default: 'Eatery')] as Object[], "Another user has updated this Eatery while you were editing")
                render(view: "edit", model: [eateryInstance: eateryInstance])
                return
            }
        }

        eateryInstance.name = params['name']
        eateryInstance.phone = params['phone']

        //edit a location
        Location locationInstance = eateryInstance.getLocation()
        locationInstance.street = params['location.street']
        locationInstance.city = params['location.city']
        locationInstance.state = params['location.state']
        locationInstance.zip = Integer.parseInt(params['location.zip'].toString())
        locationInstance.save()
        eateryInstance.tags = tagService.addTags(params['hidden-tags'])
        //relate eatery and location
        eateryInstance.location = locationInstance
        locationInstance.eatery = eateryInstance

        if (!eateryInstance.save()) {
            render(view: "edit", model: [eateryInstance: eateryInstance])
            return
        }

        flash.message = message(code: "default.updated.message", args: [message(code: 'eatery.label', default: 'Tag'), eateryInstance.id])
        redirect(action: "show", id: eateryInstance.id)
    }

    def delete(Long id) {
        def eateryInstance = Eatery.get(id)
        if (!eateryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'eatery.label', default: 'Eatery'), id])
            redirect(action: "list")
            return
        }

        try {
            eateryInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'eatery.label', default: 'Eatery'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'eatery.label', default: 'Eatery'), id])
            redirect(action: "show", id: id)
        }
    }


    def randomizer() {
        List<Tag> tagList = Tag.list()
        render(view: 'randomizer', model: [tagList: tagList])
    }

    def randomize() {
        List<String> tagNameList = params.list('tagName')
        List<Tag> tagList = Tag.findAllByTagNameInList(tagNameList)
        if (!tagList) {
            tagList = Tag.list()
        }
        Eatery randomEatery = randomizerService.getRandomEatery(tagList)
        render(view: "_show", model: [eateryInstance: randomEatery])
    }
}
