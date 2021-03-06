
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title></title>
</head>
<body>
<div class="row">
    <div class="col-md-3">
        <g:formRemote url="[controller: 'eatery', action:'randomize']" name="randomizer" update="results">
            <ul class="list-unstyled ">
            <g:each in="${existingTags}">
                <li>
                    <lablel class="checkbox">
                    <g:checkBox name="tagName" value="${it.tagName}"/>${it.tagName.toString()}
                    </lablel>
                </li>
            </g:each>
            </ul>
        <g:actionSubmit name="randomize" class="btn btn-primary" value= "Randomize!"/>
        </g:formRemote>
    </div>
    <div id="results" class="col-md-8"></div>
</div>
</body>
</html>