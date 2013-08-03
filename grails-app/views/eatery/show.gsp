
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
                <h2 id="title">${eateryInstance.name}</h2>
            </div>
        </div>
        <g:if test="${flash.message}" >
        <div class="row">
            <div class="span7">
                <div class="alert">
                    ${flash.message} <button type="button" class="close" data-dismiss="alert">&times;</button>
                </div>
            </div>
        </div>
        </g:if>
        <div class="row">
            <div class="span3">
                <div id="map-canvas"></div>
            </div>
            <div class="span7">
                <div class="form-horizontal">
                    %{--Eatery Phone--}%
                    <g:if test="${eateryInstance.phone}">
                    <div class="control-group">
                        <label class="control-label" >Eatery Phone:</label>
                        <div class="controls">
                            <span class="input-large uneditable-input">${eateryInstance.phone}</span>
                        </div>
                    </div>
                    </g:if>
                    %{--Eatery Location--}%
                    <g:if test="${eateryInstance.location}">
                    <div class="control-group">
                        <label class="control-label" >Location:</label>
                        <div class="controls">
                            <span id="address" class="input-large uneditable-input">${eateryInstance?.location?.encodeAsHTML()}</span>
                        </div>
                    </div>
                    </g:if>
                    %{--Eatery Tags--}%
                    <g:if test="${eateryInstance.tags}">
                        <div class="control-group">
                            <label class="control-label" >Tags:</label>
                            <div class="controls">
                                <input type="hidden" name="tags" class="tm-input tm-input-disabled" />
                                <div id="tag-container"></div>
                                </span>
                            </div>
                        </div>
                    </g:if>

                </div>
            </div>
        </div>

    </div>
    <div class="row">
        <div class="span8">
            <div class="form-actions">
                <g:hiddenField name="id" value="${eateryInstance?.id}" />
                <g:actionSubmit action="delete" value="Delete" id="${eateryInstance.id}" class="btn btn-danger pull-right" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                <g:link action="edit" value="Edit" id="${eateryInstance.id}" class="btn btn-primary pull-right" >Edit</g:link>
            </div>
        </div>
    </div>
</div>
<script>
    initialize();
    codeAddress();
    jQuery(".tm-input").tagsManager({
        tagsContainer: $('#tag-container'),
        prefilled: ${tagList.toString()}
    });
</script>
</body>
</html>