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
	<%@include file="../company/company_aside.jsp"%>

	
	<section id="about" class="home-section3 color-dark bg-white">
		<div class="container marginbot-50" >
			<div class="row" >
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow flipInY" data-wow-offset="0" data-wow-delay="0.4s">
					<div class="section-heading text-center">
					<h2 class="h-bold">Notice</h2>
					<div class="divider-header"></div>
					<p class="title" >正確なマッチングのため、企業文化に対するアンケートを実施しています。</p>
					</div>
					</div>
				</div>
			</div>

		</div>
		
		
		<form id="formdata">
			<input type="hidden" value="<s:property value="%{#session.loginId}"/>" name="personality.applicantid">
		</form>
		
		<div class="container">
       	 <div class="row">
		
			<div class="col-md-6">
			    <img src="new_css_js/img/main_image_4.png" alt="" class="img-responsive"  style="height:370px;"/>
      
           </div>
			
            <div class="col-md-6">		
			<p class="content">	
				企業と個人の満足感を高めるため、企業文化に対するアンケートを実施しています。<br/>
				正確なマッチングのために重要なアンケートなので、慎重に臨んでください。
			</p>
			<br/>
			<br/>
					<button type="button" class="btn btn-default btn-lg" id="stopTest">企業文化アンケートを続ける </button>
				
			</div>
            </div>
        </div>		

	</section>
	
	<%@include file="../company/company_footer.jsp" %>

		<!-- js placed at the end of the document so the pages load faster -->
		<script src="assets/js/jquery.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>
		<script src="assets/js/jquery-ui-1.9.2.custom.min.js"></script>
		<script src="assets/js/jquery.ui.touch-punch.min.js"></script>
		<script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
		<script src="assets/js/jquery.scrollTo.min.js"></script>
		<script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>


		<!--common script for all pages-->
		<script src="assets/js/common-scripts.js"></script>

		
		<script type="text/javascript">
			
			$("button#stopTest").on("click", function(){
				$("#formdata").attr("action", "ctestCompany");
				$("#formdata").attr("method", "post");
				$("#formdata").submit();
			});
		</script>
<script src="new_css_js/js/wow.min.js"></script>
<script src="new_css_js/js/custom.js"></script>
</body>
</html>