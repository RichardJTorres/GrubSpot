package grubspot

class EateryController {
    RandomizerService randomizerService
    def index() {
        redirect(action: "create", params: params)
    }

    def create() {
        render (view: "create", model: [eateryInstance: new Eatery(params)])
    }

    def list(){
        if(!params.max) params.max = 10
        render (view: "list", model: [eateryList: Eatery.list(params)])
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
        String tagString = params['tags']
        String[] tagList = tagString.split(',')
        List<Tag> tags = new ArrayList<>()
        for (String t in tagList){
            t.trim().toLowerCase()
            Tag tag = new Tag(tagName: t)
            tags.add(tag)
        }
        eateryInstance.tags = tags

        //relate eatery and location
        eateryInstance.location = locationInstance
        locationInstance.eatery = eateryInstance

        //save and handle errors
        def eaterySuccess = eateryInstance.save()
        if (!eaterySuccess) {
            render(view: "create", model: [eateryInstance: eateryInstance])
        } else {
            flash.message = message(code: 'default.created.message', args: [message(code: 'eatery.label'), eateryInstance.name])
            redirect(action: "show", id: eateryInstance.id)
        }
    }

    def show(Long id) {
        def eateryInstance = Eatery.get(id)
        if (eateryInstance == null) {
            flash.message = message(code: 'grubspot.show.not.found', args: [eateryInstance.name])
        }
        render(view:'show', model: [eateryInstance: eateryInstance])
    }

    def randomizer() {
        List<Tag> tagList = Tag.list()
        render(view:'randomizer', model: [tagList: tagList])
    }

    def randomize(){
        List<Tag> tagList = new ArrayList<Tag>(params['tagName'])
        Eatery randomEatery = randomizerService.getRandomEatery(tagList)
        redirect(action: "show", id: randomEatery.id)
    }
}
