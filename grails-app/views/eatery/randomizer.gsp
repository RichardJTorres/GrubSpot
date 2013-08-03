
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
            <ul class="unstyled">
                <li>
                    <lablel class="checkbox">
                    <g:checkBox name="tagName" value="${it.tagName}"/>${it.tagName.toString()}
                    </lablel>
                </li>
            </ul>
            </br>
        </g:each>
        <g:submitButton name="randomize" class="btn btn-primary" value= "Randomize!"/>
        </g:form>
    </div>
</div>


</body>
</html>