<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Link Inside</title>
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
	<section id="intro" class="home-slide text-light">
	</section>
	<%@include file="../applicant/applicant_head.jsp"%>

	<form id="formdata">
		<input type="hidden" value="<s:property value="%{#session.loginId}"/>" name="personality.applicantid">
	</form>
	
	<section id="about" class="home-section3 color-dark bg-white">
		<div class="container marginbot-50" >
			<div class="row" >
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow flipInY" data-wow-offset="0" data-wow-delay="0.4s">
					<div class="section-heading text-center">
					<h2 class="h-bold">Notice</h2>
					<div class="divider-header"></div>
					<p class="title" >もっと高いマッチングサービス</p>
					</div>
					</div>
				</div>
			</div>

		</div>
		
		<div class="container">
       	 <div class="row">
		
			<div class="col-md-6">
			    <img src="new_css_js/img/applicant4.jpg" alt="" class="img-responsive"  style="height:370px;"/>
      
           </div>
			
            <div class="col-md-6">		
			<p class="content">	
				50項目を追加選択するともっと高いマッチング企業の確認ができます。
				十分だと思う方は企業文化検査に進んでください。
			</p>
			<br/>
			<br/>
					<button type="button" class="btn btn-default btn-lg" id="moreTest">50項目追加検査に続ける </button>&nbsp;&nbsp;
					<button type="button" class="btn btn-default btn-lg" id="stopTest">企業文化検査に続ける </button>
			</div>
		
            </div>
        </div>		

	</section>
	
	<%@include file="../applicant/applicant_foot.jsp" %>
	
		<!-- js placed at the end of the document so the pages load faster -->
		<script src="assets/js/jquery.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>
		<script src="assets/js/jquery-ui-1.9.2.custom.min.js"></script>
		<script src="assets/js/jquery.ui.touch-punch.min.js"></script>
		<script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
		<script src="assets/js/jquery.scrollTo.min.js"></script>
		<script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>
		<script type="text/javascript" src="script/jquery-3.1.1.min.js"></script>

		<!--common script for all pages-->
		<script src="assets/js/common-scripts.js"></script>
		<script src="new_css_js/js/wow.min.js"></script>
		<script src="new_css_js/js/custom.js"></script>
		
		<script type="text/javascript">
			$("button#moreTest").on("click", function(){
				$("#formdata").attr("action", "ptestApplicant2");
				$("#formdata").attr("method", "post");
				$("#formdata").submit();
			});
			
			$("button#stopTest").on("click", function(){
				$("#formdata").attr("action", "culturesurvey");
				$("#formdata").attr("method", "post");
				$("#formdata").submit();
			});
		</script>
</body>
</html>