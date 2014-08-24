package tfcmanager



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ProjetoOrientacaoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ProjetoOrientacao.list(params), model:[projetoOrientacaoInstanceCount: ProjetoOrientacao.count()]
    }

    def show(ProjetoOrientacao projetoOrientacaoInstance) {
        respond projetoOrientacaoInstance
    }

    def create() {
        respond new ProjetoOrientacao(params)
    }

    @Transactional
    def save(ProjetoOrientacao projetoOrientacaoInstance) {
        if (projetoOrientacaoInstance == null) {
            notFound()
            return
        }

        if (projetoOrientacaoInstance.hasErrors()) {
            respond projetoOrientacaoInstance.errors, view:'create'
            return
        }

        projetoOrientacaoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'projetoOrientacao.label', default: 'ProjetoOrientacao'), projetoOrientacaoInstance.id])
                redirect projetoOrientacaoInstance
            }
            '*' { respond projetoOrientacaoInstance, [status: CREATED] }
        }
    }

    def edit(ProjetoOrientacao projetoOrientacaoInstance) {
        respond projetoOrientacaoInstance
    }

    @Transactional
    def update(ProjetoOrientacao projetoOrientacaoInstance) {
        if (projetoOrientacaoInstance == null) {
            notFound()
            return
        }

        if (projetoOrientacaoInstance.hasErrors()) {
            respond projetoOrientacaoInstance.errors, view:'edit'
            return
        }

        projetoOrientacaoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ProjetoOrientacao.label', default: 'ProjetoOrientacao'), projetoOrientacaoInstance.id])
                redirect projetoOrientacaoInstance
            }
            '*'{ respond projetoOrientacaoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ProjetoOrientacao projetoOrientacaoInstance) {

        if (projetoOrientacaoInstance == null) {
            notFound()
            return
        }

        projetoOrientacaoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ProjetoOrientacao.label', default: 'ProjetoOrientacao'), projetoOrientacaoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'projetoOrientacao.label', default: 'ProjetoOrientacao'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}