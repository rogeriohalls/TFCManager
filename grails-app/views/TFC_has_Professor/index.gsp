
<%@ page import="tfcmanager.TFC_has_Professor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'TFC_has_Professor.label', default: 'Orientador')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-TFC_has_Professor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-TFC_has_Professor" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="tipo" title="${message(code: 'TFC_has_Professor.tipo.label', default: 'Tipo')}" />
					
						<th><g:message code="TFC_has_Professor.professor.label" default="Professor" /></th>
					
						<th><g:message code="TFC_has_Professor.tfc.label" default="Tfc" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${TFC_has_ProfessorInstanceList}" status="i" var="TFC_has_ProfessorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${TFC_has_ProfessorInstance.id}">${fieldValue(bean: TFC_has_ProfessorInstance, field: "tipo")}</g:link></td>
					
						<td>${fieldValue(bean: TFC_has_ProfessorInstance, field: "professor")}</td>
					
						<td>${fieldValue(bean: TFC_has_ProfessorInstance, field: "tfc")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${TFC_has_ProfessorInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
