<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
<title>Link Inside</title>

	<link href="../new_css_js/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="../new_css_js/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<link href="../new_css_js/css/nivo-lightbox.css" rel="stylesheet" />
	<link href="../new_css_js/css/nivo-lightbox-theme/default/default.css" rel="stylesheet" type="text/css" />
	<link href="../new_css_js/css/owl.carousel.css" rel="stylesheet" media="screen" />
    <link href="../new_css_js/css/owl.theme.css" rel="stylesheet" media="screen" />
	<link href="../new_css_js/css/flexslider.css" rel="stylesheet" />
	<link href="../new_css_js/css/animate.css" rel="stylesheet" />
    <link href="../new_css_js/css/style.css" rel="stylesheet">
	<link href="../new_css_js/color/default.css" rel="stylesheet">
	<link href="../my_css/linkinside.css" rel="stylesheet">
	
	<link href="../assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
	<link href="../assets/css/style.css" rel="stylesheet">
    <link href="../assets/css/style-responsive.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../assets/js/bootstrap-datepicker/css/datepicker.css" />
    <link rel="stylesheet" type="text/css" href="../assets/js/bootstrap-daterangepicker/daterangepicker.css" />
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"> 

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="./script/jquery-3.1.1.min.js"></script>
<!-- skill부분 -->
<script type="text/javascript">

	$(function(){
		  var skillIndex;
		  var certIndex;
		  
		$.ajax({
				url: "bringIndex",
	    		dataType: "json",
	    		success: function(rsp){ 
					skillIndex = $.parseJSON(rsp.jsonskillindex);
					certIndex = $.parseJSON(rsp.jsoncertindex);
	    		},
	    		complete: function(){
				    $( ".skillIndex" ).autocomplete({
				      source: skillIndex
				    });
				    
				    $(".certIndex").autocomplete({
				    	source: certIndex
				    })
	    		}
			})
			
		$('#plus3').on('click', function(){
			$('#table3').append('<tr><td><input type="text" class="form-control skillIndex" name="skills['+$('#table3 tr').last().index()+'].skillname"></td>'+
			'<td><input type="text" class="form-control" name="skills['+$('#table3 tr').last().index()+'].skilllevel"></td>'+
			'<td><input type="text" class="form-control certIndex" name="skills['+$('#table3 tr').last().index()+'].certname"></td>'+
			'<td><input type="text" class="form-control dateform" name="skills['+$('#table3 tr').last().index()+'].certdate"></td>'+
			'<td><input type="text" class="form-control" name="skills['+$('#table3 tr').last().index()+'].certfrom"></td></tr>');
		});
		$('#minus3').on('click', function(){
			 if($('#table3 tr').last().index()>1){
				$('#table3 tr').last().remove(); 
			}
			    $( ".skillIndex" ).autocomplete({
				      source: skillIndex
				    });
				    
				    $(".certIndex").autocomplete({
				    	source: certIndex
				    })
		});
		$('.dateform1').datepicker({
            changeMonth: true, 
             changeYear: true,
             dayNames: ['月曜日', '火曜日', '水曜日', '木曜日', '金曜日', '土曜日', '日曜日'],
             dayNamesMin: ['月', '火', '水', '木', '金', '土', '日'], 
             dateFormat: "yy-mm-dd",
             yearRange: '1900:' + new Date().getFullYear()
         });
	});
</script>

<!--Education 부분  -->

<script type="text/javascript">
	$(function(){
		$('#plus1').on('click', function(){
			$('#table1').append('<tr><td><input type="text" class="form-control" name="education['+$('#table1 tr').last().index()+'].name"></td>'+
			'<td><input type="text" class="form-control" name="education['+$('#table1 tr').last().index()+'].major"></td>'+
			'<td><input type="text" class="form-control" name="education['+$('#table1 tr').last().index()+'].minor"></td>'+	
			'<td><select class="form-control" name="education['+$('#table1 tr').last().index()+'].diploma"><option>高専卒</option><option>専門卒</option><option>短大卒</option><option>大学卒</option><option>大学院卒</option></select></td>'+	
			'<td><input type="text" class="form-control dateform" name="education['+$('#table1 tr').last().index()+'].startdate"></td>'+
			'<td><input type="text" class="form-control dateform" name="education['+$('#table1 tr').last().index()+'].enddate"></td></tr>');
		});
		$('#minus1').on('click', function(){
			 if($('#table1 tr').last().index()>1){
				$('#table1 tr').last().remove(); 
			}
		});
		
		$('#startdate').datepicker({
            changeMonth: true, 
             changeYear: true,
             dayNames: ['月曜日', '火曜日', '水曜日', '木曜日', '金曜日', '土曜日', '日曜日'],
             dayNamesMin: ['月', '火', '水', '木', '金', '土', '日'], 
             dateFormat: "yy-mm-dd",
             yearRange: '1900:' + new Date().getFullYear()
         });
		
		$('#enddate').datepicker({
            changeMonth: true, 
             changeYear: true,
             dayNames: ['月曜日', '火曜日', '水曜日', '木曜日', '金曜日', '土曜日', '日曜日'],
             dayNamesMin: ['月', '火', '水', '木', '金', '土', '日'], 
             dateFormat: "yy-mm-dd",
             yearRange: '1900:' + new Date().getFullYear()
         });

	});
</script>

<!--Experience  -->
<script>
	$(function(){
$('#plus2').on('click', function(){
			
			$('#table2').append('<tr><td><input type="text" class="form-control" name="experience['+$('#table2 tr').last().index()+'].workname"></td>'+
			'<td><input type="text" class="form-control" name="experience['+$('#table2 tr').last().index()+'].workjobtitle"></td>'+
			'<td><input type="text" class="form-control dateform" name="experience['+$('#table2 tr').last().index()+'].startdate"></td>'+
			'<td><input type="text" class="form-control dateform" name="experience['+$('#table2 tr').last().index()+'].enddate"></td></tr>');
			
		});
		$('#minus2').on('click', function(){
			 if($('#table2 tr').last().index()>1){
				$('#table2 tr').last().remove(); 
			}
		});
		$('.dateform').datepicker({
            changeMonth: true, 
             changeYear: true,
             dayNames: ['月曜日', '火曜日', '水曜日', '木曜日', '金曜日', '土曜日', '日曜日'],
             dayNamesMin: ['月', '火', '水', '木', '金', '土', '日'], 
             dateFormat: "yy-mm-dd",
             yearRange: '1900:' + new Date().getFullYear()
         });
	});
</script>

</head>
<body>
	<section id="intro" class="home-slide text-light">
	</section>
	
	<div id="navigation">
		<nav class="navbar navbar-custom" role="navigation">
			<div class="container">
				<div class="row">
					<div class="col-md-2">
						<div class="site-logo">
							<a href="applicantView" class="brand"><img alt="" src="">LinkInside</a>
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
								<li class="active"><a href="applicantView" style="font-size: 16px;">Applicant Main</a></li>
								<li><a href="#education" style="font-size: 16px;">education</a></li>
								<li><a href="#experience" style="font-size: 16px;">experience</a></li>
								<li><a href="#skill" style="font-size: 16px;">skill</a></li>
								
	
							</ul>
						</div>
						<!-- /.Navbar-collapse -->
	
					</div>
				</div>
			</div>
			<!-- /.container -->
		</nav>
	</div>

	
	<form action="insertSkills" method="post"> 
	<!-- education -->
	<section id="education" class="home-section color-dark bg-white">
		<div class="container marginbot-50" >
			<div class="row" >
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow flipInY" data-wow-offset="0" data-wow-delay="0.4s">
					<div class="section-heading text-center">
					<h2 class="h-bold">education</h2>
					<div class="divider-header"></div>
					<p class="title" >詳細情報を入力してください。</p>
					</div>
					</div>
				</div>
			</div>

		</div>
		
		
		<div class="container">
			<div class="row">
				 <div class="col-lg-12">
	               <div class="form-panel" >
                  	
					<!-- <form class="form-inline" role="form" action="insertEducation" method="post"> -->
	                     
	                      	<table id="table1">
								<tr>
									<th>学校名</th>
									<th>専攻</th>
									<th>副専攻</th>
									<th>学位</th>
									<th>入学日</th>
									<th>卒業日</th></tr>
								<tr>
								<td><input type="text" name="education[0].name" class="form-control" id="education[0].name"></td>
								<td><input type="text" name="education[0].major" class="form-control" id="education[0].major"></td>
								<td><input type="text" name="education[0].minor" class="form-control" id="education[0].minor"></td>
								<td>
									<select name="education[0].diploma" class="form-control">
										<option>高専卒</option>
										<option>専門卒</option>
										<option>短大卒</option>
										<option>大学卒</option>
										<option>大学院卒</option>
									</select> &nbsp;&nbsp;
								</td>
								<td><input type="text" name="education[0].startdate" class="form-control dateform" id="startdate"></td>
								<td><input type="text" name="education[0].enddate" class="form-control dateform" id="enddate"></td>
								 </tr>
							</table>
	                        
								<input type="button" value="+" id="plus1">
								<input type="button" value="-" id="minus1">
			
	                            <div style="text-align: center;">
									<!-- <button type="submit">次へ</button> -->
									<!-- <a href="#experience"><button>次へ</button></a> -->
								</div>
	                   <!--  </form> -->
                	</div>
                  </div>
          		</div>

        </div>		

	</section>
	
	
	
	
	<!-- experience -->
	<section id="experience" class="home-section color-dark bg-white">
		<div class="container marginbot-50" >
			<div class="row" >
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow flipInY" data-wow-offset="0" data-wow-delay="0.4s">
					<div class="section-heading text-center">
					<h2 class="h-bold">experience</h2>
					<div class="divider-header"></div>
					<p class="title" >企業と個人を連結する1:1マッチングサービスプログラム</p>
					</div>
					</div>
				</div>
			</div>

		</div>
		
		
		<div class="container">
       	 <div class="row">
		
			<div class="col-lg-12">
	          			<div class="form-panel">
	                  	  <h4 class="mb"><i class="fa fa-angle-right"></i> Experience</h4>
	                      <!-- <form action="insertExperience.action" method="post"> -->
	                     <%--  <input type="hidden" value="<s:property value="%{#session.loginId}"/>" name="id"> --%>
							<table id="table2">
								<tr>
									<th>勤め先</th>
									<th>業務</th>
									<th>入社日</th>
									<th>退社日</th>
								<tr>
									<td><input type="text" name="experience[0].workname" class="form-control" id="experience[0].workname"></td>
									<td><input type="text" name="experience[0].workjobtitle" class="form-control" id="experience[0].workjobtitle"></td>
									<td><input type="text" name="experience[0].startdate" class="form-control dateform" id="experience[0].startdate"></td>
									<td><input type="text" name="experience[0].enddate" class="form-control dateform" id="experience[0].enddate"></td>
								 </tr>
							</table>
								<input type="button" value="+" id="plus2">
								<input type="button" value="-" id="minus2">
								<br>
								<!-- <div style="text-align: center;">
									<button  class="btn btn-theme">次へ</button>
								</div> -->
	                            
					<!-- 	</form> -->
	          			</div><!-- /form-panel -->
	          		</div><!-- /col-lg-12 -->
		

        </div>		
		</div>

	</section>
	
	<!-- skill -->
	<section id="skill" class="home-section color-dark bg-white">
		<div class="container marginbot-50" >
			<div class="row" >
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow flipInY" data-wow-offset="0" data-wow-delay="0.4s">
					<div class="section-heading text-center">
					<h2 class="h-bold">skill</h2>
					<div class="divider-header"></div>
					<p class="title" >企業と個人を連結する1:1マッチングサービスプログラム</p>
					</div>
					</div>
				</div>
			</div>

		</div>
		
	
		<div class="container">
       	 <div class="row">
		
			<div class="col-lg-12">
					<div class="form-panel">
						<h4 class="mb">
							<i class="fa fa-angle-right"></i> Skill
						</h4>
						<!-- <form action="insertSkills" method="post"> -->
						<%-- <input type="hidden" value="<s:property value="%{#session.loginId}"/>" name="id"> --%>
							<table id="table3">
								<tr>
									<th>スキル名</th>
									<th>スキルレベル</th>
									<th>資格名</th>
									<th>取得日</th>
									<th>発給機関</th>
								<tr>
									<td><input type="text" class="form-control skillIndex" name="skills[0].skillname"></td>
									<td><input type="text" class="form-control" name="skills[0].skilllevel"></td>
									<td><input type="text" class="form-control certIndex" name="skills[0].certname"></td>
									<td><input type="text" class="form-control dateform1" name="skills[0].certdate"></td>
									<td><input type="text" class="form-control" name="skills[0].certfrom"></td>
								</tr>
							</table>
							<input type="button" value="+" id="plus3"> 
							<input type="button" value="-" id="minus3"> <br>
							<div style="text-align: center;">
								<button type="submit" class="btn btn-theme">Next</button>
							</div>
					<!-- 	</form> -->
					</div>
					<!-- /form-panel -->
				</div>
		

        </div>		
		</div>

	</section>

	</form>
	<%@include file="../applicant/applicant_foot.jsp" %>



	<script src="../assets/js/chart-master/Chart.js"></script>
	<script type="text/javascript" src="../script/jquery-3.1.1.min.js"></script> 
 	
 	<script src="../new_css_js/js/jquery.min.js"></script>	 
    <script src="../new_css_js/js/bootstrap.min.js"></script>
	<script src="../new_css_js/js/jquery.sticky.js"></script>
	<script src="../new_css_js/js/jquery.flexslider-min.js"></script>
    <script src="../new_css_js/js/jquery.easing.min.js"></script>	
	<script src="../new_css_js/js/jquery.scrollTo.js"></script>
	<script src="../new_css_js/js/jquery.appear.js"></script>
	<script src="../new_css_js/js/stellar.js"></script>
	<script src="../new_css_js/js/wow.min.js"></script>
	<script src="../new_css_js/js/owl.carousel.min.js"></script>
	<script src="../new_css_js/js/nivo-lightbox.min.js"></script>
    <script src="../new_css_js/js/custom.js"></script>
    <script src="../new_css_js/contactform/contactform.js"></script>
 	
 	
 	<script src="../assets/js/jquery.js"></script>
	<script src="../assets/js/bootstrap.min.js"></script>
	<script class="include" type="text/javascript" src="../assets/js/jquery.dcjqaccordion.2.7.js"></script>
	<script src="../assets/js/jquery.scrollTo.min.js"></script>
	<script src="../assets/js/jquery.nicescroll.js" type="text/javascript"></script>
	

	<!--common script for all pages-->
	<script src="../assets/js/common-scripts.js"></script>
	<script src="../assets/js/jquery-ui-1.9.2.custom.min.js"></script>
	
	<script type="text/javascript"src="../assets/js/gritter/js/jquery.gritter.js"></script>
	<script type="text/javascript" src="../assets/js/gritter-conf.js"></script>

	<!--script for this page-->
	<script src="../assets/js/sparkline-chart.js"></script>
	<script src="../assets/js/zabuto_calendar.js"></script>
	
	<script type="text/javascript" src="../assets/js/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
    <script type="text/javascript" src="../assets/js/bootstrap-daterangepicker/date.js"></script>
   <script type="text/javascript" src="../assets/js/bootstrap-daterangepicker/daterangepicker.js"></script>
	
	<script type="text/javascript" src="../assets/js/bootstrap-inputmask/bootstrap-inputmask.min.js"></script>
</body>
</html>