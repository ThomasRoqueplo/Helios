<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="fr">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Evenements</title>

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/modern-business.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

	<!-- Header et Menu de navigation -->
	<c:import url="header1.jsp">
	</c:import>

	<!-- Page Content -->
	<div class="container">

		<!-- Page Heading/Breadcrumbs -->
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">
					Liste des événements <small></small>
				</h1>
			</div>
		</div>
		<!-- /.row -->

		<!-- Portfolio Item Row -->
		<div class="row">

			<div class="col-md-8">
				<div id="carousel-example-generic" class="carousel slide"
					data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">
						<li data-target="#carousel-example-generic" data-slide-to="0"
							class="active"></li>
						<li data-target="#carousel-example-generic" data-slide-to="1"></li>
						<li data-target="#carousel-example-generic" data-slide-to="2"></li>
					</ol>

					<!-- Wrapper for slides -->
					<div class="carousel-inner">
						<div class="item active">
							<img class="img-responsive" src="http://placehold.it/750x500"
								alt="">
						</div>
						<div class="item">
							<img class="img-responsive" src="http://placehold.it/750x500"
								alt="">
						</div>
						<div class="item">
							<img class="img-responsive" src="http://placehold.it/750x500"
								alt="">
						</div>
					</div>

					<!-- Controls -->
					<a class="left carousel-control" href="#carousel-example-generic"
						data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left"></span>
					</a> <a class="right carousel-control" href="#carousel-example-generic"
						data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right"></span>
					</a>
				</div>
			</div>

			<div class="col-md-4">
				<h3>Description</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam
					viverra euismod odio, gravida pellentesque urna varius vitae. Sed
					dui lorem, adipiscing in adipiscing et, interdum nec metus. Mauris
					ultricies, justo eu convallis placerat, felis enim.</p>
				<h3>Details</h3>
				<ul>
					<li>Lorem Ipsum</li>
					<li>Dolor Sit Amet</li>
					<li>Consectetur</li>
					<li>Adipiscing Elit</li>
				</ul>
			</div>

		</div>
		<!-- /.row -->

		<!-- Related Projects Row -->
		<div class="row">

			<div class="col-lg-12">
				<h3 class="page-header">Evénements similaires</h3>
			</div>

			<div class="col-sm-3 col-xs-6">
				<a href="#"> <img class="img-responsive img-hover img-related"
					src="http://placehold.it/500x300" alt="">
				</a>
			</div>

			<div class="col-sm-3 col-xs-6">
				<a href="#"> <img class="img-responsive img-hover img-related"
					src="http://placehold.it/500x300" alt="">
				</a>
			</div>

			<div class="col-sm-3 col-xs-6">
				<a href="#"> <img class="img-responsive img-hover img-related"
					src="http://placehold.it/500x300" alt="">
				</a>
			</div>

			<div class="col-sm-3 col-xs-6">
				<a href="#"> <img class="img-responsive img-hover img-related"
					src="http://placehold.it/500x300" alt="">
				</a>
			</div>

		</div>
		<!-- /.row -->

		<hr>

		<!-- Footer -->

		<c:import url="footer.jsp">
		</c:import>

	</div>
	<!-- /.container -->

	<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>

</body>

</html>
