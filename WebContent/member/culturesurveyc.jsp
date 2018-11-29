<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

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


</head>

<body>
	<section id="intro" class="home-slide text-light">
	</section>
	
	<%@include file="../company/company_aside.jsp"%>
	
	<form id="dataform" action="cultureCompanyResult">
		<input type="hidden" value="<s:property value="%{#session.loginId}"/>" id="compid" name="culture.compid">
	</form>
	
	<section id="about" class="home-section3 color-dark bg-white">
		<div class="container">
			<div class="row" >
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow flipInY" data-wow-offset="0" data-wow-delay="0.4s">
					<div class="section-heading text-center">
					<h2 class="h-bold">company culture survey</h2>
					<div class="divider-header"></div>
					<p class="title" >　企業文化アンケート　</p>
					</div>
					</div>
				</div>
			</div>

		</div>
		
		
		<div class="container" style="text-align: center;">
       	 <div class="row" id="innerLine">
			 <s:iterator value="qlist" status="status">
			    	<s:if test="#status.index % 10 == 0">
			    		<div id='page<s:property value="#status.index" />' style="display:none">
			    	</s:if>
			    	
			    	<h6 id="ques<s:property value="#status.index"/>" title="<s:property value="category"/>"><s:property value="question"/></h6>
			    	<div class="btn-group" data-toggle="buttons">
						<label class="btn btn-primary">1 <input type="radio" name="answ<s:property value="#status.index"/>" id="answ<s:property value="#status.index"/>" autocomplete="off" value="1"/></label> 
						<label class="btn btn-primary">2 <input type="radio" name="answ<s:property value="#status.index"/>" id="answ<s:property value="#status.index"/>" autocomplete="off" value="2"/></label> 
						<label class="btn btn-primary">3 <input type="radio" name="answ<s:property value="#status.index"/>" id="answ<s:property value="#status.index"/>" autocomplete="off" value="3"/></label> 
						<label class="btn btn-primary">4 <input type="radio" name="answ<s:property value="#status.index"/>" id="answ<s:property value="#status.index"/>" autocomplete="off" value="4"/></label> 
						<label class="btn btn-primary">5 <input type="radio" name="answ<s:property value="#status.index"/>" id="answ<s:property value="#status.index"/>" autocomplete="off" value="5"/></label> 
						<label class="btn btn-primary">6 <input type="radio" name="answ<s:property value="#status.index"/>" id="answ<s:property value="#status.index"/>" autocomplete="off" value="6"/></label> 
						<label class="btn btn-primary">7 <input type="radio" name="answ<s:property value="#status.index"/>" id="answ<s:property value="#status.index"/>" autocomplete="off" value="7"/></label>
					</div>
					<s:if test="#status.index % 10 == 9">
			    	</div>
			    	</s:if>
			    </s:iterator>
			    
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
	<script type="text/javascript" src="script/jquery-3.1.1.min.js"></script>
	<script src="new_css_js/js/wow.min.js"></script>
	<script src="new_css_js/js/custom.js"></script>
	

	<!--common script for all pages-->
	<script src="assets/js/common-scripts.js"></script>
   
	<!-- 성격검사 문항 자바스크립트 -->
	<script src="script/culturecompany.js" type="text/javascript"></script>

</body>
</html>