<%@ page import="tfcmanager.Documentos" %>



<div class="fieldcontain ${hasErrors(bean: documentosInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="documentos.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descricao" maxlength="80" required="" value="${documentosInstance?.descricao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: documentosInstance, field: 'arquivo', 'error')} ">
	<label for="arquivo">
		<g:message code="documentos.arquivo.label" default="Arquivo" />
		
	</label>
	<g:select id="arquivo" name="arquivo.id" from="${com.lucastex.grails.fileuploader.UFile.list()}" optionKey="id" value="${documentosInstance?.arquivo?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: documentosInstance, field: 'projetoorientacao', 'error')} required">
	<label for="projetoorientacao">
		<g:message code="documentos.projetoorientacao.label" default="Projetoorientacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="projetoorientacao" name="projetoorientacao.id" from="${tfcmanager.ProjetoOrientacao.list()}" optionKey="id" required="" value="${documentosInstance?.projetoorientacao?.id}" class="many-to-one"/>

</div>

