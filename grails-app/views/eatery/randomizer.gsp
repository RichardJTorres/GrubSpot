<%--
  Created by IntelliJ IDEA.
  User: rich
  Date: 6/13/13
  Time: 9:35 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title></title>
</head>
<body>
<div class="row">
    <div class="span12">
        <g:form action="randomize">
        <g:each in="${tagList}">
            <lablel class="checkbox">
            <g:checkBox name="${it.tagName}"/>${it.tagName.toString()}
            </lablel>
        </g:each>
        <g:submitButton name="randomize" class="btn btn-primary" value= "Randomize!"/>
        </g:form>
    </div>
</div>


</body>
</html>