<%@ page import="grubspot.Eatery" %>
<html>
<head>
    <meta name="layout" content="main">
    <title>Create an Eatery</title>
</head>
<body>
    <div class="row">
        <div class="col-md-3">
            <g:form action="save" class="form-horizontal" role="form">
                <fieldset>
                    <legend>Create an Eatery</legend>
                    %{--Eatery Name--}%
                    <div class="form-group">
                        <label for="name">Eatery Name:</label>
                        <g:textField class="form-control input-sm" name="name" required="" value="${eateryInstance?.name}"/>
                    </div>
                    %{--Eatery Phone--}%
                    <div class="form-group">
                        <label for="phone">Eatery Phone:</label>
                        <g:textField class="form-control input-sm" name="phone" required="" value="${eateryInstance?.phone}"/>
                    </div>
                    %{--Location Street--}%
                    <div class="form-group">
                        <label for="location.street">Street Address:</label>
                        <g:textField class="form-control input-sm" name="location.street" value="${eateryInstance?.location?.street}"/>
                    </div>
                    %{--Location City--}%
                    <div class="form-group">
                        <label for="location.city">City:</label>
                        <g:textField class="form-control input-sm" name="location.city" value="${eateryInstance?.location?.city}"/>
                    </div>
                    %{--Location State and zip--}%
                    <div class="form-group">
                        <div class="col-md-5">
                            <label for="location.state">State</label>
                            <g:textField class="form-control input-sm " name="location.state" value="${eateryInstance?.location?.state}"/>
                        </div>
                        <div class="col-md-7">
                            <label for="location.zip">Zip</label>
                            <g:textField class="form-control input-sm" name="location.zip" value="${eateryInstance?.location?.zip}"/>
                        </div>
                        <p class="help-block"><small>Use two character state code. Ex: CA for California</small></p>
                    </div>
                    %{--Tags--}%
                    <div class="form-group">
                        <label for="tags">Tags:</label>
                        <g:textField class="form-control input-sm tm-input" name="tags" data-provide="typeahead" data-source='${tagList}' autocomplete="off" value="${eateryInstance?.tags}"/>
                        <p class="help-block"><small>Separate tags with a comma.</small></p>
                        <div id="tag-container"></div>
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