<%@ page import="grubspot.Eatery" %>
<html>
<head>
    <meta name="layout" content="main">
    <title>Create an Eatery</title>
</head>
<body>
    <div class="row">
        <div class="span12">
            <g:form action="save" class="form-horizontal">
                <fieldset>
                    <legend>Create an Eatery</legend>
                    %{--Eatery Name--}%
                    <div class="control-group">
                        <label class="control-label" for="name">Eatery Name:</label>
                        <div class="controls">
                            <g:textField name="name" required="" value="${eateryInstance?.name}"/>
                        </div>
                    </div>
                    %{--Eatery Phone--}%
                    <div class="control-group">
                        <label class="control-label" for="phone">Eatery Phone:</label>
                        <div class="controls">
                            <g:textField name="phone" required="" value="${eateryInstance?.phone}"/>
                        </div>
                    </div>
                    %{--Location Street--}%
                    <div class="control-group">
                        <label class="control-label" for="location.street">Street Address:</label>
                        <div class="controls">
                            <g:textField name="location.street" value="${eateryInstance?.location?.street}"/>
                        </div>
                    </div>
                    %{--Location City--}%
                    <div class="control-group">
                        <label class="control-label" for="location.city">City:</label>
                        <div class="controls">
                            <g:textField name="location.city" value="${eateryInstance?.location?.city}"/>
                        </div>
                    </div>
                    %{--Location State--}%
                    <div class="control-group">
                        <label class="control-label" for="location.state">State:</label>
                        <div class="controls">
                            <g:textField name="location.state" value="${eateryInstance?.location?.state}"/>
                            <p class="help-block"><small>Use two character state code. Ex: CA for California</small></p>
                        </div>
                    </div>
                    %{--Location Zip--}%
                    <div class="control-group">
                        <label class="control-label" for="location.zip">Zip:</label>
                        <div class="controls">
                            <g:textField name="location.zip" value="${eateryInstance?.location?.zip}"/>
                        </div>
                    </div>
                    %{--Tags--}%
                    <div class="control-group">
                        <label class="control-label" for="tags">Tags:</label>
                        <div class="controls">
                            <g:textField name="tags" class="tm-input" data-provide="typeahead" data-source='${tagList}' autocomplete="off" value="${eateryInstance?.tags}"/>
                            <p class="help-block"><small>Separate tags with a comma.</small></p>
                            <div id="tag-container"></div>
                        </div>
                    </div>
                    %{--Form Controls--}%
                    <div class="form-actions">
                        <g:submitButton name="create" class="btn btn-primary" value="Create"/>
                    </div>
                </fieldset>
            </g:form>
        </div>
    </div>
<script>
    $(".tm-input").tagsManager({
        preventSubmitOnEnter: true,
        tagsContainer: $('#tag-container')
    });
</script>
</body>
</html>