
<%@ page import="tfcmanager.Usuario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-usuario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-usuario" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list usuario">
			
				<g:if test="${usuarioInstance?.login}">
				<li class="fieldcontain">
					<span id="login-label" class="property-label"><g:message code="usuario.login.label" default="Login" /></span>
					
						<span class="property-value" aria-labelledby="login-label"><g:fieldValue bean="${usuarioInstance}" field="login"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.nomecompleto}">
				<li class="fieldcontain">
					<span id="nomecompleto-label" class="property-label"><g:message code="usuario.nomecompleto.label" default="Nomecompleto" /></span>
					
						<span class="property-value" aria-labelledby="nomecompleto-label"><g:fieldValue bean="${usuarioInstance}" field="nomecompleto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.projetoorientacao}">
				<li class="fieldcontain">
					<span id="projetoorientacao-label" class="property-label"><g:message code="usuario.projetoorientacao.label" default="Projetoorientacao" /></span>
					
						<span class="property-value" aria-labelledby="projetoorientacao-label"><g:link controller="projetoOrientacao" action="show" id="${usuarioInstance?.projetoorientacao?.id}">${usuarioInstance?.projetoorientacao?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.senha}">
				<li class="fieldcontain">
					<span id="senha-label" class="property-label"><g:message code="usuario.senha.label" default="Senha" /></span>
					
						<span class="property-value" aria-labelledby="senha-label"><g:fieldValue bean="${usuarioInstance}" field="senha"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:usuarioInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${usuarioInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
