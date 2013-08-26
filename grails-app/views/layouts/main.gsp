<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Place Pick"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap-tagmanager.css')}" type="text/css">
		<g:layoutHead/>
        <g:javascript src="jquery.js"/>
        <g:javascript src="bootstrap.js"/>
        <g:javascript src="bootstrap-tagmanager.js"/>
        <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAKwc7nP8speZB9_XTeDO6wUpw-P4l0zvQ&sensor=false">
        </script>
        <g:javascript src="maps.js"/>
	</head>
	<body>
        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle pull-left" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Place Pick</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><g:link controller="eatery" action="index">Eateries</g:link></li>
                        <li><g:link controller="eatery" action="randomizer">Randomizer</g:link></li>
                    </ul>
                </div>
            </div>
        </div><!-- end nav -->
        <div class="container">
		    <g:layoutBody/>
        </div>
	</body>
</html>
