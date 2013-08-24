
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <g:set var="entityName" value="${message(code: 'eatery.label')}"/>
    <meta name="layout" content="main">
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>
<body>
<div class="row">
    <div class="col-md-12">
        <g:render template="show"/>
    </div>
</div>
<div class="row">
    <div class="col-md-09">
        <div class="btn-toolbar">
            <g:hiddenField name="id" value="${eateryInstance?.id}" />
            <g:actionSubmit action="delete" value="Delete" id="${eateryInstance.id}" class="btn btn-danger " onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
            <g:link action="edit" value="Edit" id="${eateryInstance.id}" class="btn btn-primary " >Edit</g:link>
        </div>
    </div>
</div>


</body>
</html>