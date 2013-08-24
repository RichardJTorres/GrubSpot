<div class="row">
    <div class="col-md-12">
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

    <div class="col-md-5">
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
    <div class="col-md-3">
        <div id="map-canvas"></div>
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