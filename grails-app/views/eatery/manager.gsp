
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
  <title></title>
</head>
<body>
<div class="row">

    <div class="col-md-4">

        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Create an Eatery<a href="#" class="pull-right" data-toggle="collapse" data-target="#panel-create"><span class="glyphicon glyphicon-minus "></span></a></h3>
            </div>
            <div id="panel-create" class="panel-body in">
                <g:render template="create"/>
            </div>
        </div>
    </div>
    <div class="col-md-8">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Show Eatery<a href="#" class="pull-right" data-toggle="collapse" data-target="#panel-show"><span id="panel-show-toolbar" class="glyphicon glyphicon-plus"></span></a></h3>
            </div>
            <div id="panel-show" class="panel-body collapse">
                <g:render template="show"/>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">List Eateries<a href="#" class="pull-right" data-toggle="collapse" data-target="#panel-list"><span class="glyphicon glyphicon-minus "></span></a></h3>
            </div>
            <div id="panel-list" class="panel-body in">
                <g:render template="list"/>
            </div>
        </div>
    </div>
</div>
<script>
    var saveSuccess = function() {
        $("#save-form")[0].reset();
        $("div#panel-show").toggleClass("collapse in");
        $("div#tag-container").html("");
        $("input[type='hidden'][name='hidden-tags']").val("")
        $("span#panel-show-toolbar").toggleClass("glyphicon-plus glyphicon-minus")
        reloadList();
    };

    var reloadList = function() {
      $('#panel-list').load("/GrubSpot/eatery/list");
    };

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
    });
</script>

</body>
</html>