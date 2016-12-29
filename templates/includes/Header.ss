<!DOCTYPE html>
<html lang="en">
	<head>
		<% base_tag %>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="EPI University - A fully responsive, HTML5 based admin template">
		<meta name="keywords" content="Responsive, Web Application, HTML5, Admin, business, professional, University">
		<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> - $SiteConfig.Title</title>

		<!-- Site favicon -->
		<!--link rel='shortcut icon' type='image/x-icon' href='images/favicon.ico' /-->

		<!-- Entypo font stylesheet -->
		<link href="$ThemeDir/css/entypo.css" rel="stylesheet">

		<!-- Font awesome stylesheet -->
		<link href="$ThemeDir/css/font-awesome.min.css" rel="stylesheet">

		<!-- Bootstrap stylesheet min version -->
		<link href="$ThemeDir/css/bootstrap.min.css" rel="stylesheet">

		<!-- Integral core stylesheet -->
		<link href="$ThemeDir/css/integral-core.css" rel="stylesheet">
		<link href="$ThemeDir/plugins/scrollbar/css/perfect-scrollbar.css" rel="stylesheet">
		<link href="$ThemeDir/css/custom-font-styles.css" rel="stylesheet">
		<% if Title == "Edit Profile" %><link href="$ThemeDir/plugins/dropzone/css/dropzone.css" rel="stylesheet"><% end_if %>

		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
      			<script src="$ThemeDir/js/html5shiv.min.js"></script>
      			<script src="$ThemeDir/js/respond.min.js"></script>
		<![endif]-->
	</head>

	<body>

	<!-- Loader Backdrop -->
	<!--div class="loader-backdrop">           
		<!-- Loader -->
		<div class="loader">
			<div class="bounce-1"></div>
			<div class="bounce-2"></div>
		</div>
	</div-->

	<!-- loader backgrop -->

	<!-- Page container -->
	<div class="page-container">