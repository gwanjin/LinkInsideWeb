<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Link Inside</title>

<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="font-awesome/css/font-awesome.min.css" />

<script type="text/javascript" src=script/jquery-3.1.1.min.js"></script>

<!-- Bootstrap core CSS -->
<link href="assets/css/bootstrap.css" rel="stylesheet">
<!--external css-->
<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />

<!-- Custom styles for this template -->
<link href="assets/css/style.css" rel="stylesheet">
<link href="assets/css/style-responsive.css" rel="stylesheet">
<style type="text/css">
#main-content{
	margin-left: auto;
	margin-right:auto;
	width:800px;
}
</style>

</head>

<body>
<form id="formdata">
	<input type="hidden" value="<s:property value="%{#session.loginId}"/>" name="personality.applicantid">
</form>
	<section id="main-content">
		<header class="header black-bg" style="background-image: url('images/applicant.png'); background-size: 100% 100%;">
			<!--logo start-->
			<a href="index" class="logo"><img src="images/linkinsideLogo.png" style="width:100px; height:40px;"></a>
            <!--logo end-->
		</header>
		<section class="wrapper">
			<div class="showback">
				<h4>
					<i class="fa fa-angle-right"></i>	done with the personality2 test。
				</h4>
				<h4>
					<i class="fa fa-angle-right"></i> Culture test now
				</h4>
				<p>
					<button type="button" class="btn btn-default btn-lg" id="stopTest"> 이키마스! </button>
				</p>
			</div>
		</section>
	</section>
		<!-- js placed at the end of the document so the pages load faster -->
		<script src="assets/js/jquery.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>
		<script src="assets/js/jquery-ui-1.9.2.custom.min.js"></script>
		<script src="assets/js/jquery.ui.touch-punch.min.js"></script>
		<script class="include" type="text/javascript"
			src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
		<script src="assets/js/jquery.scrollTo.min.js"></script>
		<script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>


		<!--common script for all pages-->
		<script src="assets/js/common-scripts.js"></script>

		
		<script type="text/javascript">
			
			$("button#stopTest").on("click", function(){
				$("#formdata").attr("action", "educationpage");
				$("#formdata").attr("method", "post");
				$("#formdata").submit();
			});
		</script>
</body>
</html>