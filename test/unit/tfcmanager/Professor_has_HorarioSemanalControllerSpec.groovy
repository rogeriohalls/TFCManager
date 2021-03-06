package tfcmanager



import grails.test.mixin.*
import spock.lang.*

@TestFor(Professor_has_HorarioSemanalController)
@Mock(Professor_has_HorarioSemanal)
class Professor_has_HorarioSemanalControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.professor_has_HorarioSemanalInstanceList
            model.professor_has_HorarioSemanalInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.professor_has_HorarioSemanalInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            def professor_has_HorarioSemanal = new Professor_has_HorarioSemanal()
            professor_has_HorarioSemanal.validate()
            controller.save(professor_has_HorarioSemanal)

        then:"The create view is rendered again with the correct model"
            model.professor_has_HorarioSemanalInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            professor_has_HorarioSemanal = new Professor_has_HorarioSemanal(params)

            controller.save(professor_has_HorarioSemanal)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/professor_has_HorarioSemanal/show/1'
            controller.flash.message != null
            Professor_has_HorarioSemanal.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def professor_has_HorarioSemanal = new Professor_has_HorarioSemanal(params)
            controller.show(professor_has_HorarioSemanal)

        then:"A model is populated containing the domain instance"
            model.professor_has_HorarioSemanalInstance == professor_has_HorarioSemanal
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def professor_has_HorarioSemanal = new Professor_has_HorarioSemanal(params)
            controller.edit(professor_has_HorarioSemanal)

        then:"A model is populated containing the domain instance"
            model.professor_has_HorarioSemanalInstance == professor_has_HorarioSemanal
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/professor_has_HorarioSemanal/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def professor_has_HorarioSemanal = new Professor_has_HorarioSemanal()
            professor_has_HorarioSemanal.validate()
            controller.update(professor_has_HorarioSemanal)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.professor_has_HorarioSemanalInstance == professor_has_HorarioSemanal

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            professor_has_HorarioSemanal = new Professor_has_HorarioSemanal(params).save(flush: true)
            controller.update(professor_has_HorarioSemanal)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/professor_has_HorarioSemanal/show/$professor_has_HorarioSemanal.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/professor_has_HorarioSemanal/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def professor_has_HorarioSemanal = new Professor_has_HorarioSemanal(params).save(flush: true)

        then:"It exists"
            Professor_has_HorarioSemanal.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(professor_has_HorarioSemanal)

        then:"The instance is deleted"
            Professor_has_HorarioSemanal.count() == 0
            response.redirectedUrl == '/professor_has_HorarioSemanal/index'
            flash.message != null
    }
}
