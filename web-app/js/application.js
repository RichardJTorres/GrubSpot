function saveSuccess() {
    //reset the form data
    $("#save-form")[0].reset();
    $("div#tag-container").html("");
    $("input[type='hidden'][name='hidden-tags']").val("");
    showPane();
    reloadList();
}
function showPane() {
    $('#hidden-panel').show();
}

function reloadList() {
    $('#panel-list').load("/GrubSpot/eatery/list");
}

$(document).ready(function(){
    //set up tagmanager
    $(".tm-input").tagsManager({
        preventSubmitOnEnter: true,
        tagsContainer: $('#tag-container')
    });
    //toggle collapse glyphicon
    $("span.glyphicon").click(function(){
        $(this).toggleClass("glyphicon-plus glyphicon-minus");
    });
    $('#hidden-panel').hide();
});