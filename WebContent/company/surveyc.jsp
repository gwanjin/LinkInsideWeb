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

      <link href="css/jquery-ui.css" rel="stylesheet">

<style>
*, *:before, *:after {
	margin: 0;
	padding: 0;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

#gal {
	position: relative;
	width: 402px;
	height: 50px;
	margin: 0 auto;
	top: 0px;
	*/ /*  -webkit-box-shadow:0px 0px 0px 10px white,
             5px 5px 0px 10px rgba(0,0,0,0.1);
  -moz-box-shadow:0px 0px 0px 10px white,
             5px 5px 0px 10px rgba(0,0,0,0.1);
  box-shadow:0px 0px 0px 10px white,
             5px 5px 0px 10px rgba(0,0,0,0.1);
  -webkit-transform:translate3d(0, 0, 0);
  -moz-transform:   translate3d(0, 0, 0);
  -ms-transform:    translate3d(0, 0, 0);
  -o-transform:     translate3d(0, 0, 0);
  transform:        translate3d(0, 0, 0); */
}

#gal:after {
	content: '';
	position: absolute;
	bottom: 25px;
	right: 0;
	left: 0;
	width: 100%;
	height: 1px;
	background: rgba(100, 100, 100, 0.35);
	z-index: 3;
}

#gal ul {
	list-style-type: none;
}

input[type="radio"], input[type="radio"]+label {
	position: absolute;
	bottom: 6px;
	display: block;
	width: 30px;
	height: 30px;
	-webkit-border-radius: 50%;
	-moz-border-radius: 50%;
	border-radius: 50%;
	cursor: pointer;
}

input[type="radio"] {
	opacity: 0;
	z-index: 9;
}

input[value=".10"], input[value=".10"]+label {
	left: 52px;
}

input[value=".30"], input[value=".30"]+label {
	left: 119px;
}

input[value=".50"], input[value=".50"]+label {
	left: 186px;
}

input[value=".70"], input[value=".70"]+label {
	left: 253px;
}

input[value=".90"], input[value=".90"]+label {
	right: 52px;
}

input[type="radio"]+label {
	background: rgba(100, 100, 100, 0.35);
	z-index: 7;
	-webkit-box-shadow: 0px 0px 0px 0px rgba(255, 255, 255, 0.15);
	-moz-box-shadow: 0px 0px 0px 0px rgba(255, 255, 255, 0.15);
	box-shadow: 0px 0px 0px 0px rgba(255, 255, 255, 0.15);
	-webkit-transition: all .3s;
	-moz-transition: all .3s;
	-o-transition: all .3s;
	transition: all .3s;
}

input[type="radio"]:hover+label {
	background: rgba(200, 200, 200, 0.6);
}

input[type="radio"]:checked+label {
	background: rgba(135, 206, 250, 0.8);
	-webkit-box-shadow: 0px 0px 0px 3px rgba(135, 206, 250, 0.3);
	-moz-box-shadow: 0px 0px 0px 3px rgba(135, 206, 250, 0.3);
	box-shadow: 0px 0px 0px 3px rgba(135, 206, 250, 0.3);
}

input[type="radio"]:checked+label:before {
	
}

input[type="radio"]:checked ~ figure img {
	z-index: 2;
	-webkit-transform: translatex(0px);
	-moz-transform: translatex(0px);
	-ms-transform: translatex(0px);
	-o-transform: translatex(0px);
	transform: translatex(0px);
	-webkit-transition: all .15s, z-index 0s;
	-moz-transition: all .15s, z-index 0s;
	-o-transition: all .15s, z-index 0s;
	transition: all .15s, z-index 0s;
}

input[type="radio"]:checked ~ figure[class*="entypo-"]:before {
	z-index: 3;
	color: rgba(255, 255, 255, 0.5);
	-webkit-transition: color .5s;
	-moz-transition: color .5s;
	-o-transition: color .5s;
	transition: color .5s;
}

input[type="radio"]:checked ~ figure figcaption {
	z-index: 8;
	-webkit-transform: translateX(0px);
	-moz-transform: translateX(0px);
	-ms-transform: translateX(0px);
	-o-transform: translateX(0px);
	transform: translateX(0px);
	-webkit-transition: all .35s, .7s;
	-moz-transition: all .35s, .7s;
	-o-transition: all .35s, .7s;
	transition: all .35s, .7s;
}

body {
	background: white;
}

html, body {
	width: 100%;
	height: 100%;
}

.left {
	display: inline-block;
	position: relative;
	top: 57px;
	left: 100px;
	margin: 0 auto;
	z-index: 4;
	color: rgba(100, 100, 100, 1);
	font-size: 25px;
	text-align: right;
		opacity: 0.5;
	    transition: opacity .3s ease-in-out;
    -moz-transition: opacity .3s ease-in-out;
    -webkit-transition: opacity .3s ease-in-out;
    -o-transition: opacity .3s ease-in-out;
}

.right {
	display: inline-block;
	position: relative;
	top: 57px;
	left: 496px;
	margin: 0 auto;
	z-index: 4;
	color: rgba(100, 100, 100, 1);
	font-size: 25px;
	text-align: left;
		opacity: 0.5;
	    transition: opacity .3s ease-in-out;
    -moz-transition: opacity .3s ease-in-out;
    -webkit-transition: opacity .3s ease-in-out;
    -o-transition: opacity .3s ease-in-out;
}

.wrap {
	width: 800px;
	height: 500px;
 	margin-right: auto;
 	margin-left: auto;
	
}
.box {
	width: 100px;
	height: 35px;

}

div.footer a{
display:block;
	font-size: 20px;
	text-align: center;
	margin-top:30px;
	margin: auto;
	color: rgba(100, 100, 100, 0.7) !important;
	font-size: 30px;
}

.footer{
	width: 800px;
	height: 50px;
 	margin-right: auto;
 	margin-left: auto;
}
</style>
   <script type="text/javascript" src="script/jquery-3.1.1.min.js"></script>
   <script type="text/javascript" src="script/jquery-ui.js"></script>


<script>
$(function(){
	$("input:radio").click(function(){
		var v = $(this).val();
		var left = $(this).parent().parent().parent().parent().find('.left');
		var right = $(this).parent().parent().parent().parent().find('.right');
		if(v=='.10'){
			left.css('opacity' ,'1');
			right.css('opacity','0.1');
		}else if(v=='.30'){
			left.css('opacity','0.8');
			right.css('opacity','0.3');
		}else if(v=='.50'){
			left.css('opacity','0.5');
			right.css('opacity','0.5');
		}else if(v=='.70'){
			left.css('opacity','0.3');
			right.css('opacity','0.8');
		}else{
			left.css('opacity','0.1');
			right.css('opacity','1');
		}
		var name = $(this).attr('name');
		$('#'+name).attr('value', v);
	})
	
    $( document ).tooltip();
})

function submitForm(){
	/* alert($('#btn1').val()); */
	var form = $("#dataformComp");
	form.attr("action", "testResultComp");
	form.attr("method","post");
	form.submit();
}
/* 
$("input:radio").click(function(){
	alert("aaaa")
}) */


</script>
</head>

<body>
	<section id="intro" class="home-slide text-light">
	</section>
	
	<%@include file="company_aside.jsp"%>
	
	<form id="dataformComp">
		<input type="hidden" id="btn1" name="personality.extraversion" value="0.5"/>
		<input type="hidden" id="btn2" name="personality.emotional" value="0.5"/>
		<input type="hidden" id="btn3" name="personality.openness" value="0.5"/>
		<input type="hidden" id="btn4" name="personality.conscientiousness" value="0.5"/>
		<input type="hidden" id="btn5" name="personality.agreeableness" value="0.5"/>
	</form>
	
	
	<section id="about" class="home-section3 color-dark bg-white">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow flipInY" data-wow-offset="0" data-wow-delay="0.4s">
					<div class="section-heading text-center">
					<h2 class="h-bold">Work personality survey</h2>
					<div class="divider-header"></div>
					<p class="content">業務の性向を把握するため、職務性向に対するアンケート実施</p>
					</div>
					 
					</div>
				</div>
			</div>

		</div>

		<div class="wrap">
			<div id="check">
				<div class="box left" title="忍耐を通じて満足することを求め、実用的とデータ依存的 、そして独断的とクローズ志向であることが特徴とします">内向性</div>
				<div class="box right" title="高い開放性は予測不可能性やフォーカスの欠如として認識する可能性があります。また、高い開放性を有する個人はギャンブル、海外で住、スカイダイビングのような強烈な陶酔経験を求め、特異的に自己実現を追求すると言われています。">外向性</div>
	
			<div id="gal">
				<ul>
					<li></li>
					<li><input type="radio" name="btn1" value=".10" />
						<label for="btn"></label></li>
					<li><input type="radio" name="btn1" value=".30" /> <label
						for="btn"></label></li>
					<li><input type="radio" name="btn1" value=".50" checked="checked" /> <label
						for="btn"></label></li>
					<li><input type="radio" name="btn1" value=".70" /> <label
						for="btn"></label></li>
					<li><input type="radio" name="btn1" value=".90" /> <label
						for="btn"></label></li>
				</ul>
	
			</div>
			</div>
					
			<div>
				<div class="box left" title="低誠実は柔軟と自発的であります。しかし信頼できないです">非神経性</div>
				<div class="box right" title="信頼できる傾向があり、自己規律、誠実に行動、目標意識を見せ、即興行動より計画的なものを好む">神経性</div>
	
			<div id="gal">
				<ul>
					<li></li>
					<li><input type="radio" name="btn2" value=".10" />
						<label for="btn"></label></li>
					<li><input type="radio" name="btn2" value=".30" /> <label
						for="btn"></label></li>
					<li><input type="radio" name="btn2" value=".50" checked="checked" /> <label
						for="btn"></label></li>
					<li><input type="radio" name="btn2" value=".70" /> <label
						for="btn"></label></li>
					<li><input type="radio" name="btn2" value=".90" /> <label
						for="btn"></label></li>
				</ul>
	
			</div>
					</div>
			<div>
				<div class="box left" title="エネルギー、肯定的な感情、 自己主張、社交性や刺激、多弁を追求する傾向。高い外向は大体注目されるのが好きで横暴すると認識されます">非開放性</div>
				<div class="box right" title="外向性は孤高または自己反省する傾向がありますが、補修的、自分の世界に引き込まれる可能性があります">開放性</div>
	
			<div id="gal">
				<ul>
					<li></li>
					<li><input type="radio" name="btn3" value=".10" />
						<label for="btn"></label></li>
					<li><input type="radio" name="btn3" value=".30" /> <label
						for="btn"></label></li>
					<li><input type="radio" name="btn3" value=".50" checked="checked" /> <label
						for="btn"></label></li>
					<li><input type="radio" name="btn3" value=".70" /> <label
						for="btn"></label></li>
					<li><input type="radio" name="btn3" value=".90" /> <label
						for="btn"></label></li>
				</ul>
	
			</div>
					</div>
			<div>
				<div class="box left">柔軟性</div>
				<div class="box right">誠実性</div>
	
			<div id="gal">
				<ul>
					<li></li>
					<li><input type="radio" name="btn4" value=".10"  />
						<label for="btn"></label></li>
					<li><input type="radio" name="btn4" value=".30" /> <label
						for="btn"></label></li>
					<li><input type="radio" name="btn4" value=".50" checked="checked"/> <label
						for="btn"></label></li>
					<li><input type="radio" name="btn4" value=".70" /> <label
						for="btn"></label></li>
					<li><input type="radio" name="btn4" value=".90" /> <label
						for="btn"></label></li>
				</ul>
	
			</div>
					</div>
			<div>
				<div class="box left">挑戦性</div>
				<div class="box right">親和性</div>
	
			<div id="gal">
				<ul>
					<li></li>
					<li><input type="radio" name="btn5" value=".10" />
						<label for="btn"></label></li>
					<li><input type="radio" name="btn5" value=".30" /> <label
						for="btn"></label></li>
					<li><input type="radio" name="btn5" value=".50" checked="checked" /> <label
						for="btn"></label></li>
					<li><input type="radio" name="btn5" value=".70" /> <label
						for="btn"></label></li>
					<li><input type="radio" name="btn5" value=".90" /> <label
						for="btn"></label></li>
				</ul>
			</div>
			</div>
		</div>
		<div class="footer">
			<a href="javascript:submitForm()"  id="next">Next</a>
		</div>
	</section>
	
	<%@include file="company_footer.jsp" %>
	
	<script src="new_css_js/js/jquery.min.js"></script>	 
    <script src="new_css_js/js/bootstrap.min.js"></script>
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
</body>
</html>