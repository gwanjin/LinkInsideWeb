<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Link Inside</title>
<!-- css -->
    <link href="new_css_js/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="new_css_js/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<link href="new_css_js/css/nivo-lightbox.css" rel="stylesheet" />
	<link href="new_css_js/css/nivo-lightbox-theme/default/default.css" rel="stylesheet" type="text/css" />
	<link href="new_css_js/css/owl.carousel.css" rel="stylesheet" media="screen" />
    <link href="new_css_js/css/owl.theme.css" rel="stylesheet" media="screen" />
	<link href="new_css_js/css/flexslider.css" rel="stylesheet" />
	<link href="new_css_js/css/animate.css" rel="stylesheet" />
    <link href="new_css_js/css/style.css" rel="stylesheet">
	<link href="new_css_js/color/default.css" rel="stylesheet">
	<link href="my_css/linkinside.css" rel="stylesheet">
</head>
<body>
<div id="navigation">
			<nav class="navbar navbar-custom" role="navigation">
				<div class="container">
					<div class="row">
						<div class="col-md-2">
							<div class="site-logo">
								<s:if test="%{#session.loginId != null}">
									<a href="companyView" class="brand"><img alt="" src="">LinkInside</a>
								</s:if>
								<s:else>
									<a href="index" class="brand"><img alt="" src="">LinkInside</a>
						</s:else>
							</div>
						</div>


						<div class="col-md-10">

							<!-- Brand and toggle get grouped for better mobile display -->
							<div class="navbar-header">
								<button type="button" class="navbar-toggle"
									data-toggle="collapse" data-target="#menu">
									<i class="fa fa-bars"></i>
								</button>
							</div>
							<!-- Collect the nav links, forms, and other content for toggling -->
							<div class="collapse navbar-collapse" id="menu">
								<ul class="nav navbar-nav navbar-right">
									<li class="active"><a href="companyView" style="font-size: 16px;">Company Main</a></li>
									<li><a href="applicantTestCompany" style="font-size: 16px;">Post Jobs</a></li>
									<li><a href="updateCompanyForm" style="font-size: 16px;">My Page</a></li>
									<li><a href="logout" style="font-size: 16px;">LOGOUT</a></li>

								</ul>
							</div>
							<!-- /.Navbar-collapse -->

						</div>
					</div>
				</div>
				<!-- /.container -->
			</nav>
		</div>
		<!-- /Navigation -->
</body>
</html>