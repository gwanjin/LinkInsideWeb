<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
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
	<section id="intro" class="home-slide text-light">
	</section>
	<div id="navigation">
			<nav class="navbar navbar-custom" role="navigation" >
				<div class="container">
					<div class="row">
						<div class="col-md-2">
							<div class="site-logo">
								<a href="companyView" class="brand"><img alt="" src="">LinkInside</a>
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
									<li class="active"><a href="#about" style="font-size: 16px;">Company Main</a></li>
									<li><a href="#detail" style="font-size: 16px;">View Jobs</a></li>
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
		
		
	
		<!-- Section: about -->
    <section id="about" class="home-section color-dark bg-white">
		<div class="container marginbot-50" >
			<div class="row" >
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow flipInY" data-wow-offset="0" data-wow-delay="0.4s">
					<div class="section-heading text-center">
					<h2 class="h-bold">Company Main</h2>
					<div class="divider-header"></div>
					<p class="title" >企業と個人を連結する1:1マッチングサービスプログラム</p>
					</div>
					</div>
				</div>
			</div>

		</div>
		
		
		<div class="container">
       	 <div class="row">
		
			<div class="col-md-6">
			    <img src="new_css_js/img/comp3.jpg" alt="" class="img-responsive"  style="height:360px;"/>
      
           </div>
			
            <div class="col-md-6">		
			<p class="content">
			業務にぴったりの人材を探していますか?<br/>
			今すぐ求人登録してみてください。LinkInsideが貴社に合う人材をお勧めして差し上げます。
			</p>			
				
			<button id="applicantTestCompany" class="btn btn-default btn-lg">求人登録</button>

            </div>
		

        </div>		
		</div>

	</section>
	<!-- /Section: about -->

	
	<!-- Section: works -->
    <section id="detail" class="home-section color-dark text-center bg-white">
		<div class="container marginbot-10">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow flipInY" data-wow-offset="0" data-wow-delay="0.4s">
					<div class="section-heading text-center">
					<h2 class="h-bold">View Jobs</h2>
					 <div class="divider-header"></div>
					<p class="content">貴社の業務登録の現況です。</p>
					</div>
					 
					</div>
				</div>
			</div>

		</div>

		<div class="container">
			<div class="row">
               <s:if test="%{jobList.size() == 0}">
                  <div class="row mtbox"　style="margin-top: 10px; margin-left: 20px;">
                     <h3 style="font-family: MS PGothic;">登録情報がありません。</h3>
                  </div>
                 
               </s:if>


                  <s:else>
                  
					 <div class="container">
						<div class="row">
							<table class="table table-striped table-advance table-hover" id="table">
			           	  	  <hr/>
			                      <thead>
			                      <tr>
			                          <th style="width:14%;"><i class="fa fa-bullhorn"></i> 求人タイトル  </th>
			                          <th style="width:14%;"><i class="fa fa-user"></i> 詳細情報 </th>
			                          <th class="hidden-phone" style="width:25%;"><i class="fa fa-question-circle"></i> 募集人数 </th>
			                          <th style="width:15%;" ><i class=" fa fa-calendar"></i> 募集期間 </th>
			                          <th style="width:10%;"><i class=" fa fa-display"></i> 現在志望者 </th>
			                          <th style="width:6%">志望</th>
			                      </tr>
			                      </thead>
			                      <tbody>
			                      <s:if test="%{jobList.size() == 0}">
			                      	<tr>
			                      		<td colspan="5" style="text-align: center;"> 登録した情報がありません。 </td>
			                      	</tr>
			                      </s:if>
			                      <s:else>
			                      	<s:iterator value="jobList" status="status">
										<tr id="<s:property value="jobid" />">
											<td> <s:property value="jobtitle" /> </td>
											<td> <div style="overflow:hidden; white-space:nowrap; text-overflow:ellipsis; width:130px;"><s:property value="jobdesc" /></div> </td>
											<td> <s:property value="jobto" /> </td>
											<td> <s:property value="jobstart" /> ~ <s:property value="jobend" /> </td>
											<td> <s:property value="jobapplied" />人　</td>
											<td> </td>
										</tr>
			                      	</s:iterator>
			                      </s:else>
			                      </tbody>
			                  </table>
						</div>
					</div>
               </s:else>
            </div>
            <!--row -->
       	  </div><!-- container end -->

	</section>
	
	
	
		<!--footer start-->
		<%@include file="company_footer.jsp"%>
		<!--footer end-->
	

	<!-- js placed at the end of the document so the pages load faster -->
	<script src="assets/js/chart-master/Chart.js"></script>
	<script type="text/javascript" src="./script/jquery-3.1.1.min.js"></script> 


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
   <%--  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> --%>

	<script src="assets/js/jquery.js"></script>
	<script src="assets/js/jquery-1.8.3.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
	<script src="assets/js/jquery.scrollTo.min.js"></script>
	<script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>
	<script src="assets/js/jquery.sparkline.js"></script>

	<!--common script for all pages-->
	<script src="assets/js/common-scripts.js"></script>

	<script type="text/javascript"src="assets/js/gritter/js/jquery.gritter.js"></script>
	<script type="text/javascript" src="assets/js/gritter-conf.js"></script>

	<!--script for this page-->
	<script src="assets/js/sparkline-chart.js"></script>
	<script src="assets/js/zabuto_calendar.js"></script>
	
	
	<script type="text/javascript">
		$(function() {
			$("table tr").css("cursor", "pointer");
			
		     $("table tr").on("click", function(){
		    	 if($("#table tr").index(this) > 0){
		    		 location.href="findAppliedApplicant?jobid="+$(this).attr("id");
		    		 
		    	 }
		     });
		     
		     $("#applicantTestCompany").on("click", function(){
		    	 location.href="applicantTestCompany";
		     });
		});
		/* function show(str) {
			$.ajax({
				type : 'post',
				url : 'findAppliedApplicant',
				data : {
					"jobid" : str
				},
				dataType : 'json',
				success : function(resp) {

			}
		});
	
		}
		function sendValue(str) {
			location.href = "findAppliedApplicant.action?jobid=" + str;
		} */
	 </script>

</body>
</html>
