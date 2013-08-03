
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
            <ul class="unstyled ">
            <g:each in="${tagList}">
                <li>
                    <lablel class="checkbox">
                    <g:checkBox name="tagName" value="${it.tagName}"/>${it.tagName.toString()}
                    </lablel>
                </li>
            </g:each>
            </ul>
        <g:submitButton name="randomize" class="btn btn-primary" value= "Randomize!"/>
        </g:form>
    </div>
</div>


</body>
</html>