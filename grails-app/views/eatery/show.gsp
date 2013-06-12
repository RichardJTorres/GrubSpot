
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <g:set var="entityName" value="${message(code: 'eatery.label')}"/>
    <meta name="layout" content="main">
    <title><g:message code="default.show.label" args="[entityName]"/></title>
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAKwc7nP8speZB9_XTeDO6wUpw-P4l0zvQ&sensor=false">
    </script>
    <g:javascript src="maps.js"/>
</head>
<body>
<div class="row">
    <div class="span12">
        <div class="row">
            <div class="span12">
                <h2>${eateryInstance.name}</h2>
            </div>
        </div>
        <div class="row">
            <div class="span3">
                <div id="map-canvas"></div>
            </div>
            <div class="span7">
                <div class="form-horizontal">
                    %{--Eatery Phone--}%
                    <g:if test="${eateryInstance.phone}">
                    <div class="control-group">
                        <label class="control-label" for="name">Eatery Phone:</label>
                        <div class="controls">
                            <span class="input-large uneditable-input">${eateryInstance.phone}</span>
                        </div>
                    </div>
                    </g:if>
                    %{--Eatery Location--}%
                    <g:if test="${eateryInstance.location}">
                    <div class="control-group">
                        <label class="control-label" for="phone">Location:</label>
                        <div class="controls">
                            <span id="address" class="input-large uneditable-input">${eateryInstance?.location?.encodeAsHTML()}</span>
                        </div>
                    </div>
                    </g:if>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    initialize();
    codeAddress();
</script>
</body>
</html>