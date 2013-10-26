
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
  <title></title>
</head>
<body>
<div class="row">
    <div class="col-md-4">
        <div id="panel-form" class="panel panel-default">
            <g:render template="create"/>
        </div>
    </div>
    <div class="col-md-8">
        <div id="hidden-panel" class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Show Eatery<a href="#" class="pull-right" data-toggle="collapse" data-target="#panel-show"><span id="panel-show-toolbar" class="glyphicon glyphicon-minus"></span></a></h3>
            </div>
            <div id="panel-show" class="panel-body in">
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
<script src="/"></script>

</body>
</html>