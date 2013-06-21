<%@ page import="grubspot.Tag" %>



<div class="fieldcontain ${hasErrors(bean: tagInstance, field: 'eaterys', 'error')} ">
	<label for="eaterys">
		<g:message code="tag.eaterys.label" default="Eaterys" />
		
	</label>
	
</div>

<div class="fieldcontain ${hasErrors(bean: tagInstance, field: 'tagName', 'error')} ">
	<label for="tagName">
		<g:message code="tag.tagName.label" default="Tag Name" />
		
	</label>
	<g:textField name="tagName" value="${tagInstance?.tagName}"/>
</div>

