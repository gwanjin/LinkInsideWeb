<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- Bootstrap core CSS -->
<link href="assets/css/bootstrap.css" rel="stylesheet">
<!--external css-->
<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
<!-- Custom styles for this template -->
<link href="assets/css/style.css" rel="stylesheet">
<link href="assets/css/style-responsive.css" rel="stylesheet">
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

</head>
<body>
	<section id="intro" class="home-slide text-light">
	</section>
	<%@include file="../applicant/applicant_head.jsp"%>

		<form id="formdata">
			<input type="hidden" value="<s:property value="%{#session.loginId}"/>" name="id">
		</form>
		
		<section id="about" class="home-section3 color-dark bg-white">
		<div class="container marginbot-50" >
			<div class="row" >
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow flipInY" data-wow-offset="0" data-wow-delay="0.4s">
					<div class="section-heading text-center">
					<h2 class="h-bold">Notice</h2>
					<div class="divider-header"></div>
					<p class="title" >Link Insideのマッチングサービスを利用するためには性格適性検査が必要です。</p>
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
			    <img src="new_css_js/img/applicant3.jpg" alt="" class="img-responsive"  style="height:370px;"/>
      
           </div>
			
            <div class="col-md-6">		
			<p class="content">	
				性格検査を通じて自分の性向に合う業務を探してみてください。
			</p>
			<br/>
			<br/>
					<button type="button" class="btn btn-default btn-lg" id="moreTest">性格適性検査を続ける </button>
				
			</div>
            </div>
        </div>		

	</section>
	
	<%@include file="../applicant/applicant_foot.jsp" %>
	
	<script type="text/javascript" src="script/jquery-3.1.1.min.js"></script>
	<script src="assets/js/jquery.js"></script> 
	<script src="assets/js/bootstrap.min.js"></script> 
	<script src="assets/js/jquery-ui-1.9.2.custom.min.js"></script> 
	<script src="assets/js/jquery.ui.touch-punch.min.js"></script> 
	<script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script> 
	<script src="assets/js/jquery.scrollTo.min.js"></script> 
	<script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>

	<script src="assets/js/common-scripts.js"></script> 
	<script type="text/javascript">
			$("button#moreTest").on("click", function(){
				$("#formdata").attr("action", "ptestApplicant");
				$("#formdata").attr("method", "post");
				$("#formdata").submit();
				
			});
	</script>
	
	<script src="new_css_js/js/wow.min.js"></script>
	<script src="new_css_js/js/custom.js"></script>
</body>
</html>