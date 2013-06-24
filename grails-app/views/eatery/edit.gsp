
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
  <title></title>
</head>
<body>
<div class="row">
    <div class="span12">
        <g:form action="update" class="form-horizontal">
            <fieldset>
                <legend>Edit an Eatery</legend>
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
                        <p class="help-block">Use two character state code. Ex: CA for California</p>
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
                        <g:textField name="tags" value="${eateryInstance?.tags.tagName.join(", ")}"/>
                        <p class="help-block"><small>Separate tags with a comma.</small></p>
                    </div>
                </div>
                %{--Form Controls--}%
                <div class="form-actions">
                    <g:submitButton name="update" action="update" class="btn btn-primary" value="Update"/>
                    <g:submitButton name="delete" action="delete" class="btn btn-danger" value="Delete"/>
                </div>
            </fieldset>
        </g:form>
    </div>
</div>

</body>
</html>