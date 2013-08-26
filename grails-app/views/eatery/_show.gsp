<div class="row">
    <div class="col-md-12">
        <h2 id="title">${eateryInstance?.name}</h2>
    </div>
</div>
<g:if test="${flash.message}">
    <div class="row">
        <div class="col-md-7">
            <div class="alert alert-success">
                ${flash.message} <button type="button" class="close" data-dismiss="alert">&times;</button>
            </div>
        </div>
    </div>
</g:if>
<g:if test="${flash.error}">
    <div class="row">
        <div class="col-md-7">
            <div class="alert alert-danger">
                ${flash.error} <button type="button" class="close" data-dismiss="alert">&times;</button>
            </div>
        </div>
    </div>
</g:if>

<div class="row">
    <div class="col-md-5">
        %{--Eatery Phone--}%
            <g:if test="${eateryInstance?.phone}">
                    Eatery Phone:
                        <p>${eateryInstance?.phone}</p>
            </g:if>
        %{--Eatery Location--}%
            <g:if test="${eateryInstance?.location}">
            Location:
            <p>${eateryInstance?.location?.encodeAsHTML()}<p>
            </g:if>
        %{--Eatery Tags--}%
            <g:if test="${eateryInstance?.tags}">
                Tags:
                <p>${eateryInstance?.tags}</p>
            </g:if>
        </div>
    </div>
%{--<g:if test="${eateryInstance?.location}">--}%
    %{--<div class="col-md-3">--}%
        %{--<div id="map-canvas"></div>--}%
    %{--</div>--}%
%{--<script>--}%
    %{--initialize();--}%
    %{--codeAddress();--}%
%{--</script>--}%
%{--</g:if>--}%