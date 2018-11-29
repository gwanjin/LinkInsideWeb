<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

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

<link rel="stylesheet" type="text/css"  href="bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="font-awesome/css/font-awesome.min.css" />

<script type="text/javascript" src="../script/jquery-3.1.1.min.js"></script>

<!-- Bootstrap core CSS -->
<link href="assets/css/bootstrap.css" rel="stylesheet">
<!--external css-->
<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />

<!-- Custom styles for this template -->
<link href="assets/css/style.css" rel="stylesheet">
<link href="assets/css/style-responsive.css" rel="stylesheet">
<style type="text/css">
	div.container textarea{
		width:100%;
		height:400px;
		resize: none;
	}
	
	#counter {
	  color:black;
	  padding: 0 .5em 0 .5em;
	  font-size: 25px;
	}
	
	div.text{
		text-align: right;
	}
	
	button#mybutton{
		background-color: #DDECF3; 
		color:black; 
		border-color: #DDECF3;
	}
	
	button#mybutton:HOVER {
		background-color: #3D5969; 
		color:white; 
		border-color: #3D5969;
	}
</style>
</head>

<body>
	<%@include file="applicant_head.jsp"%>
	
	<section id="Top" class="home-section color-dark bg-white">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow flipInY" data-wow-offset="0" data-wow-delay="0.4s">
						<div class="section-heading text-center">
						<h2 class="h-bold">LETTERS OF INTRODUCTION</h2>
						<div class="divider-header"></div>
						<p class="content"> 下記のような方法でご利用いただけます。</p>
						</div>
					</div>
				</div>
			</div>

		</div>
	</section>
	
	<form id="myform">
	<s:iterator value="selfList" status="status">
		<input type="hidden" name="selfList[<s:property value="#status.index"/>].jobid" value="<s:property value="jobid" />">
		<input type="hidden" name="selfList[<s:property value="#status.index"/>].qnumber" value="<s:property value="qnumber" />">
		<section class="home-section3 color-dark text-center bg-white">
			<div class="container">
				<div class="row" id="innerLine">
		    		<div id='page<s:property value="#status.index" />' class="page">
			    		<h4 id="ques<s:property value="#status.index"/>" style="text-align:center;">Q<s:property value="#status.index+1"/>.&nbsp;&nbsp;&nbsp;<s:property value="question"/></h4>
				    	<div class="container text">
				    		<textarea class="content" name="selfList[<s:property value="#status.index"/>].answer" id="content<s:property value="#status.index"/>" title="<s:property value="#status.index"/>"></textarea>
				    		<input type="button" class="goBigfive" value="エントリシート分析"/>
				    		<span class="counter" id="counter<s:property value="#status.index"/>" title="<s:property value="maxtext" />">0/<s:property value="maxtext" /></span>
				    	</div>
		    		</div>
	            </div>
			</div>
		</section>
     </s:iterator>
     </form>
     
     <section class="home-section3 color-dark text-center bg-white">
		<div class="container">
			<div class="row" id="innerLine">
				<button class="btn-primary btn-lg" id="mybutton" >登&nbsp;&nbsp;録</button>
	    	</div>
	    	
		</div>
	</section>
     
     
     
	<%@include file="applicant_foot.jsp" %>
   
   <!-- js placed at the end of the document so the pages load faster -->
   <script src="assets/js/jquery.js"></script>
   <script src="assets/js/bootstrap.min.js"></script>
   <script src="assets/js/jquery-ui-1.9.2.custom.min.js"></script>
   <script src="assets/js/jquery.ui.touch-punch.min.js"></script>
   <script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
   <script src="assets/js/jquery.scrollTo.min.js"></script>
   <script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>

	<script src="new_css_js/js/jquery.sticky.js"></script>
	<script src="new_css_js/js/jquery.flexslider-min.js"></script>
    <script src="new_css_js/js/jquery.easing.min.js"></script>	
	<script src="new_css_js/js/jquery.scrollTo.js"></script>
	<script src="new_css_js/js/jquery.appear.js"></script>
	<script src="new_css_js/js/stellar.js"></script>
	<script src="new_css_js/js/wow.min.js"></script>
	<script src="new_css_js/js/owl.carousel.min.js"></script>
	<script src="new_css_js/js/nivo-lightbox.min.js"></script>
    <script src="new_css_js/js/custom.js"></script>
    <script src="new_css_js/contactform/contactform.js"></script>

	<!--common script for all pages-->
	<script src="assets/js/common-scripts.js"></script>
   
	<!-- 성격검사 문항 자바스크립트 -->
	<script type="text/javascript">
		$(function(){
			$("textarea.content").keyup(function (e){
				 var index = $(this).attr("title");
				 var max = $("#counter"+index).attr("title");
				 
				  if($(this).val().length > Number(max)) {
			            $(this).val($(this).val().substring(0, Number(max)));
				  }else{
					  var content = $(this).val();
			          $('#counter'+index).html(content.length + '/'+max);
			      }
		    });
			$("button#mybutton").on("click", function(){
				var form = $("#myform");
				form.attr("method", "post");
				form.attr("action", "insertSelf");
				form.submit();
			});
			
			$(".goBigfive").on("click", function(){
				 				var str = $(this).parent().children().first().val();
								var str_encoded = encodeURI(str);
							 	var newWindow = window.open("http://insightzero.mybluemix.net?info="+str_encoded,"mywindow","width=800, height=600"); 
							});	
			

		});
	</script>
</body>
</html>