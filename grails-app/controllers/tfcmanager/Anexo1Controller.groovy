package tfcmanager

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_USER','ROLE_ADMIN'])
class Anexo1Controller {

    def index() { }
}
