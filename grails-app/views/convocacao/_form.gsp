<%@ page import="tfcmanager.Convocacao" %>



<div class="fieldcontain ${hasErrors(bean: convocacaoInstance, field: 'ano', 'error')} required">
	<label for="ano">
		<g:message code="convocacao.ano.label" default="Ano" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="ano" type="number" value="${convocacaoInstance.ano}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: convocacaoInstance, field: 'assunto', 'error')} required">
	<label for="assunto">
		<g:message code="convocacao.assunto.label" default="Assunto" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="assunto" maxlength="25" required="" value="${convocacaoInstance?.assunto}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: convocacaoInstance, field: 'mensagem', 'error')} required">
	<label for="mensagem">
		<g:message code="convocacao.mensagem.label" default="Mensagem" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="mensagem" maxlength="80" required="" value="${convocacaoInstance?.mensagem}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: convocacaoInstance, field: 'data', 'error')} required">
	<label for="data">
		<g:message code="convocacao.data.label" default="Data" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="data" precision="day"  value="${convocacaoInstance?.data}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: convocacaoInstance, field: 'numero', 'error')} required">
	<label for="numero">
		<g:message code="convocacao.numero.label" default="Numero" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numero" type="number" value="${convocacaoInstance.numero}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: convocacaoInstance, field: 'professorhasConvocacao', 'error')} ">
	<label for="professorhasConvocacao">
		<g:message code="convocacao.professorhasConvocacao.label" default="Professorhas Convocacao" />
		
	</label>
	<g:select name="professorhasConvocacao" from="${tfcmanager.Professor_has_Convocacao.list()}" multiple="multiple" optionKey="id" size="5" value="${convocacaoInstance?.professorhasConvocacao*.id}" class="many-to-many"/>

</div>

