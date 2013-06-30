<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title></title>
</head>
<body>
<div class="row">
    <div class="span8">
        <h1>Eatery List</h1>
        <g:if test="${flash.message}">
            <div class="alert">
                ${flash.message} <button type="button" class="close" data-dismiss="alert">&times;</button>
            </div>
        </g:if>
        <div class="btn-toolbar">
            <g:link class="btn btn-small btn-primary" action="create">New Eatery</g:link>
        </div>
        <table class="table">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Location</th>
                    <th>Phone</th>
                    <th>Tags</th>
                </tr>
            </thead>
            <tbody>
            <g:each in="${eateryList}" var="eateryInstance">
                <tr>
                    <td><g:link action="show" id="${eateryInstance.id}">${eateryInstance.name}</g:link></td>
                    <td>${eateryInstance.location}</td>
                    <td>${eateryInstance.phone}</td>
                    <td>
                        <g:each in="${eateryInstance.tags}" var="t">
                            ${t.tagName} &nbsp
                        </g:each>
                    </td>
                    <td><g:link action="edit" id="${eateryInstance.id}"><i class="icon-pencil"></i></g:link>
                        <g:link action="delete" id="${eateryInstance.id}"><i class="icon-remove"></i></g:link>
                    </td>
                </tr>
            </g:each>
            </tbody>
        </table>

    </div>
</div>
</body>
</html>