<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Dashboard">
<meta name="keyword"
	content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

<title>Link Inside</title>
<style type="text/css">
#myModal {
	width: 65%;
	margin-left: auto;
	margin-right: auto;
}
</style>
	<!--external css-->
	<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
	<link rel="stylesheet" type="text/css" href="assets/css/zabuto_calendar.css">
	<link rel="stylesheet" type="text/css" href="assets/js/gritter/css/jquery.gritter.css" />
	<link rel="stylesheet" type="text/css" href="assets/lineicons/style.css">
	
	<!-- Custom styles for this template -->
	<link href="assets/css/style.css" rel="stylesheet">
	<link href="assets/css/style-responsive.css" rel="stylesheet">

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

<script src="assets/js/chart-master/Chart.js"></script>

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
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
								<li class="active"><a href="#TOP" style="font-size: 16px;">Home</a></li>
								<li><a href="#Matching" style="font-size: 16px;">View Matching</a></li>
								<li><a href="#PtestResult" style="font-size: 16px;">Test Result</a></li>
								<li><a href="applyList" style="font-size: 16px;">My applyList</a></li>
								<li><a href="applicantUpdateFrom" style="font-size: 16px;">My Page</a></li>
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
	
	<!-- Section: Top -->
    <section id="TOP" class="home-section color-dark bg-white">
		<div class="container marginbot-50" >
			<div class="row" >
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow flipInY" data-wow-offset="0" data-wow-delay="0.4s">
					<div class="section-heading text-center">
					<h2 class="h-bold">Applicant Main</h2>
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
			    <img src="new_css_js/img/applicant2.jpg" alt="" class="img-responsive"  style="height:380px;"/>
      
           </div>
			
            <div class="col-md-6">		
			<p class="content">
				多様な検査を通じて自分に合っている業務を探してみてください<br/>
				LinkInsideは性格に合わせて業務を探してくれる新しい概念のマッチングサービスを提供します。
			</p>			
				

            </div>
		

        </div>		
		</div>

	</section>
	<!-- /Section: about -->
	
	<!-- /Navigation -->
	
	
	<section id="Matching" class="home-section color-dark bg-white">
		<div class="container marginbot-50" >
			<div class="row" >
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow flipInY" data-wow-offset="0" data-wow-delay="0.4s">
					<div class="section-heading text-center">
					<h2 class="h-bold">View Matching</h2>
					<div class="divider-header"></div>
					<p class="title" >現在、マッチングされた企業結果</p>
					</div>
					</div>
				</div>
			</div>

		</div>
		
		<div class="container">
       		<div class="row">
					<div class="main-chart">						

						<h2>マッチング企業</h2>

						<div class="row mt">
							<!-- SERVER STATUS PANELS -->

							<s:iterator value="map" var="m" status="status">
								<s:set var="v" value="value"/>
									<div class="col-md-4 col-sm-4 mb">
										<div class="white-panel pn donut-chart" id="img1"  style="cursor: pointer;"
																data-toggle="modal" data-target="#myModal" title="<s:property value="#status.index" />">
											
											<input type="hidden" value='<s:property value="#v.COMPID" />'       id="compid<s:property value="#status.index"/>">
											<input type="hidden" value='<s:property value="#v.JOBID" />'    id="jobid<s:property value="#status.index"/>">
											<div class="white-header">
												<h5>
													<s:property value="#v.COMPNAME" />
												</h5>
												<input type="hidden" value = "<s:property value='#v.TOTALPER'/>" id="<s:property value="#status.index"/>" />
											</div>
											<div class="row">
												<div class="col-sm-6 col-xs-6 goleft">
													<p>
														<i class="fa fa-database"></i>
														<s:property value="#v.TOTALPER" />%
													</p>
												</div>
											</div>
											<canvas id="serverstatus<s:property value="#status.index"/>" height="120" width="120"></canvas>
												<script>
												var totalper = '<s:property value="#v.TOTALPER" escapeJavaScript="true"/>';
												var index = '<s:property value="#status.index" escapeJavaScript="true"/>';
												
					                              var doughnutData = [ {
					                                 value : Number(totalper),
					                                 color : "#68dff0"
					                              }, {
					                                 value : Number((100-totalper)),
					                                 color : "#fdfdfd"
					                              } ];
					                              var myDoughnut = new Chart(document.getElementById("serverstatus"+index).getContext("2d")).Doughnut(doughnutData);
					                           </script>
										</div>
										<!--/ donut-chart -->
									</div>
									</s:iterator>
							<!-- /col-md-4-->
							<a href="matchingView" style="float: right;">More...</a>
						</div>
						<!-- /row -->
					</div>
				</div>
				<!--/row -->
		</div>
	</section>
	<!-- /Section: matching result -->
	
	
	<section id="PtestResult" class="home-section color-dark bg-white">
		<div class="container marginbot-50" >
			<div class="row" >
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow flipInY" data-wow-offset="0" data-wow-delay="0.4s">
					<div class="section-heading text-center">
					<h2 class="h-bold">Test Result</h2>
					<div class="divider-header"></div>
					<p class="title" >企業と個人を連結する1:1マッチングサービスプログラム</p>
					</div>
					</div>
				</div>
			</div>

		</div>
		<div class="container">
			<h2>性格検査結果</h2>
			<div class="row mtbox">

				<div class="col-md-2 col-sm-2 col-md-offset-1 box0">
					<div class="box1" style="border: 0;">
						<span class="li_cloud"></span>
						<h3 id="extraversion">
							<s:property value="%{personality.extraversion}" />
						</h3>
					</div>
					<p style="color:black;">外向性</p>
				</div>
				<div class="col-md-2 col-sm-2 box0">
					<div class="box1" style="border: 0;">
						<span class="li_cloud"></span>
						<h3 id="emotional">
							<s:property value="%{personality.emotional}" />
						</h3>
					</div>
					<p style="color:black;">神経性</p>
				</div>
				<div class="col-md-2 col-sm-2 box0">
					<div class="box1" style="border: 0;">
						<span class="li_stack"></span>
						<h3 id="agreeableness">
							<s:property value="%{personality.agreeableness}" />
						</h3>
					</div>
					<p style="color:black;">親和性</p>
				</div>
				<div class="col-md-2 col-sm-2 box0">
					<div class="box1" style="border: 0;">
						<span class="li_news"></span>
						<h3 id="conscientiousness">
							<s:property value="%{personality.conscientiousness}" />
						</h3>
					</div>
					<p style="color:black;">誠実性</p>
				</div>
				<div class="col-md-2 col-sm-2 box0">
					<div class="box1" style="border: 0;">
						<span class="li_data"></span>
						<h3 id="openness">
							<s:property value="%{personality.openness}" />
						</h3>
					</div>
					<p style="color:black;">開放性</p>
				</div>

			</div>
			<!-- /row mt -->
			<!--/row -->
		</div>
		<div class="container">
			<h2>文化検査結果 TOP 3</h2>
			<div class="row mtbox col-md-offset-1" style="text-align: center;">
				<div class="col-md-2 col-sm-2 box0">
					<div class="box1" style="border: 0;">
						<span class="li_heart"></span>
					</div>
					<p id="top1" style="color:black;"><s:property value="%{topValue.get(0).type}"/></p>
				</div>
				<div class="col-md-2 col-sm-2 box0">
					<div class="box1" style="border: 0;">
						<span class="li_cloud"></span>
					</div>
					<p id="top2" style="color:black;"><s:property value="%{topValue.get(1).type}"/></p>
				</div>
				<div class="col-md-2 col-sm-2 box0">
					<div class="box1" style="border: 0;">
						<span class="li_stack"></span>
					</div>
					<p id="top3" style="color:black;"><s:property value="%{topValue.get(2).type}"/></p>
				</div>
			</div>
		</div>
	</section>
	<!-- /Section: personality result -->
		
		<!--main content start-->
				<!--  그래프 모달 뜨는 곳  -->
				<div id="myModal" class="modal fade" style="overflow-x: hidden; background-color: white;">
					<div class="row mt" style="margin-top: 0; overflow-x: hidden;">
						<div class="col-lg-12" style="overflow-y:auto;">
							<div class="form-panel">
								<h4 class="mb">
									<button type="button" class="close" data-dismiss="modal">
										<span aria-hidden="true" id="clickX">×</span><span class="sr-only">Close</span>
									</button>
									<i class="fa fa-angle-right modal_company_name"></i>
								</h4>
								<div class="form-horizontal style-form">
									<div class="form-group">
										<label class="col-sm-2 col-sm-2 control-label">地域</label>
										<div class="col-sm-10">
											<input type="text" class="form-control round-form modal_read" id="modal_compaddress" readonly="readonly">
										</div>
									</div>

									<div class="form-group">
										<label class="col-sm-2 col-sm-2 control-label">規模</label>
										<div class="col-sm-10">
											<input type="text" class="form-control round-form modal_read" id="modal_compsize" readonly="readonly">
										</div>
									</div>

									<div>
										<div class="form-group">
											<label class="col-sm-2 col-sm-2 control-label" style="cursor: pointer;"
												data-toggle="collapse" data-target="#prograss1"
												aria-expanded="false" aria-controls="collapseExample">求職詳細情報</label>
										</div>
										<ul class="collapse" id="prograss1">
											<label class="col-sm-2 col-sm-2 control-label">採用人員</label>
											<div class="col-sm-10">
												<input type="text" class="form-control round-form modal_read" id="modal_jobto" readonly="readonly" >
											</div>
											<label class="col-sm-2 col-sm-2 control-label">専攻</label>
											<div class="col-sm-10">
												<input type="text" class="form-control round-form modal_read" id="modal_edumajor" readonly="readonly" >
											</div>
											<label class="col-sm-2 col-sm-2 control-label">学歴</label>
											<div class="col-sm-10">
												<input type="text" class="form-control round-form modal_read" id="modal_edulevel" readonly="readonly">
											</div>
											<label class="col-sm-2 col-sm-2 control-label">経歴分野</label>
											<div class="col-sm-10">
												<input type="text" class="form-control round-form modal_read"  id="modal_exparea" readonly="readonly" >
											</div>
											<label class="col-sm-2 col-sm-2 control-label">練度</label>
											<div class="col-sm-10">
												<input type="text" class="form-control round-form modal_read" id="modal_explevel" readonly="readonly">
											</div>
										</ul>

										<div class="form-group">
											<label class="col-sm-2 col-sm-2 control-label" style="cursor: pointer;" data-toggle="collapse" data-target="#prograss2"aria-expanded="false" aria-controls="collapseExample">企業文化詳細情報</label>
										</div>


										<!-- 기업 문화 상세보기 하위 div 태그 -->
										<div class="collapse" id="prograss2">
											<label class="col-sm-2 col-sm-2 control-label">Harmony</label>
											<div class="progress">
												<div class="progress-bar progress-bar-success" id="Harmony"
														role="progressbar" aria-valuenow="40" aria-valuemin="0"
															aria-valuemax="100">
													<span class="sr-only"></span>
												</div>
											</div>
											<label class="col-sm-2 col-sm-2 control-label">Curiosity</label>
											<div class="progress">
												<div class="progress-bar progress-bar-info" id="Curiosity"
													role="progressbar" aria-valuenow="20" aria-valuemin="0"
													aria-valuemax="100">
													<span class="sr-only"></span>
												</div>
											</div>
											<label class="col-sm-2 col-sm-2 control-label">Excitement</label>
											<div class="progress">
												<div class="progress-bar progress-bar-warning" id="Excitement"
													role="progressbar" aria-valuenow="60" aria-valuemin="0"
													aria-valuemax="100" >
													<span class="sr-only"></span>
												</div>
											</div>
											<label class="col-sm-2 col-sm-2 control-label">Closeness</label>
											<div class="progress">
												<div class="progress-bar progress-bar-danger" id="Closeness"
													role="progressbar" aria-valuenow="80" aria-valuemin="0"
													aria-valuemax="100" >
													<span class="sr-only"></span>
												</div>
											</div>
											<label class="col-sm-2 col-sm-2 control-label">Self-Expression</label>
											<div class="progress">
												<div class="progress-bar progress-bar-success" id="Expression"
													role="progressbar" aria-valuenow="80" aria-valuemin="0"
													aria-valuemax="100" >
													<span class="sr-only"></span>
												</div>
											</div>
											<label class="col-sm-2 col-sm-2 control-label">Liberty</label>
											<div class="progress">
												<div class="progress-bar progress-bar-info" id="Liberty"
													role="progressbar" aria-valuenow="60" aria-valuemin="0"
													aria-valuemax="100" >
													<span class="sr-only"></span>
												</div>
											</div>
											<label class="col-sm-2 col-sm-2 control-label">Love</label>
											<div class="progress">
												<div class="progress-bar progress-bar-warning" id="Love"
													role="progressbar" aria-valuenow="20" aria-valuemin="0"
													aria-valuemax="100" >
													<span class="sr-only"></span>
												</div>
											</div>
											<label class="col-sm-2 col-sm-2 control-label">Practicality</label>
											<div class="progress">
												<div class="progress-bar progress-bar-danger" id="Practicality"
													role="progressbar" aria-valuenow="20" aria-valuemin="0"
													aria-valuemax="100">
													<span class="sr-only"></span>
												</div>
											</div>
											<label class="col-sm-2 col-sm-2 control-label">Stability</label>
											<div class="progress">
												<div class="progress-bar progress-bar-success" id="Stability"
													role="progressbar" aria-valuenow="20" aria-valuemin="0"
													aria-valuemax="100">
													<span class="sr-only"></span>
												</div>
											</div>
											<label class="col-sm-2 col-sm-2 control-label">Challenge</label>
											<div class="progress">
												<div class="progress-bar progress-bar-info" id="Challenge"
													role="progressbar" aria-valuenow="20" aria-valuemin="0"
													aria-valuemax="100">
													<span class="sr-only"></span>
												</div>
											</div>
											<label class="col-sm-2 col-sm-2 control-label">Structure</label>
											<div class="progress">
												<div class="progress-bar progress-bar-warning" id="Structure"
													role="progressbar" aria-valuenow="20" aria-valuemin="0"
													aria-valuemax="100">
													<span class="sr-only"></span>
												</div>
											</div>
										</div>
										<!--/showback -->
									</div>
								</div>
							</div>
						</div>
						<!-- col-lg-12-->
					</div>
					<!-- /row -->
				</div>
				<!-- modal 끝 -->





	<%@include file="applicant_foot.jsp" %>
	
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
    

	<!-- js placed at the end of the document so the pages load faster -->
	<script src="assets/js/jquery.js"></script>
	<script src="assets/js/jquery-1.8.3.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script class="include" type="text/javascript"
		src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
	<script src="assets/js/jquery.scrollTo.min.js"></script>
	<script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>
	<script src="assets/js/jquery.sparkline.js"></script>


	<!--common script for all pages-->
	<script src="assets/js/common-scripts.js"></script>

	<script type="text/javascript"
		src="assets/js/gritter/js/jquery.gritter.js"></script>
	<script type="text/javascript" src="assets/js/gritter-conf.js"></script>

	<!--script for this page-->
	<script src="assets/js/sparkline-chart.js"></script>
	<script src="assets/js/zabuto_calendar.js"></script>
	<script src="assets/js/jquery-3.1.1.min.js"></script>
	<script type="text/javascript">
   
      $(function(){
           var extraversion = '<s:property value="%{personality.extraversion}" escapeJavaScript="true"/>';
           $("h3#extraversion").html("<h3>"+ (Math.round(Number(extraversion)*100)) +"%</h3>");
           var emotional = '<s:property value="%{personality.emotional}" escapeJavaScript="true"/>';
           $("h3#emotional").html("<h3>"+ (Math.round(Number(emotional)*100)) +"%</h3>");
           var agreeableness = '<s:property value="%{personality.agreeableness}" escapeJavaScript="true"/>';
           $("h3#agreeableness").html("<h3>"+ (Math.round(Number(agreeableness)*100)) +"%</h3>");
           var conscientiousness = '<s:property value="%{personality.conscientiousness}" escapeJavaScript="true"/>';
           $("h3#conscientiousness").html("<h3>"+ (Math.round(Number(conscientiousness)*100)) +"%</h3>");
           var openness = '<s:property value="%{personality.openness}" escapeJavaScript="true"/>';
           $("h3#openness").html("<h3>"+ (Math.round(Number(openness)*100)) +"%</h3>");
           
           
			
           $(".donut-chart").on("click", function(){
        	   
        	 	var needstructure;
        	 	var needchallenge;
        	 	var needstability;
        	 	var needpracticality;
        	 	var needlove;
        	 	var needliberty;
        	 	var needselfexpression;
        	 	var needcloseness;
        	 	var needideal;
        	 	var needcuriosity;
        	 	var needharmony;
        	 	
				var index = $(this).attr("title");
				var compid = $("input#compid"+index).val();
				var jobid = $("input#jobid"+index).val();
				
				/* alert(jobid); */
				
				$.ajax({
					url:'modalMainValue',
					method:'post',
					data:{"id":compid,"request_id":jobid},
					dataType:"json",
					success:function(res){
						
						$("i.modal_company_name").html('<i class="fa modal_company_name"></i>  企業名:　'+ (res.company).compname+ ' <hr>　ジョブタイトル:　' + (res.jobValue).jobtitle);
		        	   	$("input#modal_compaddress").val((res.company).compaddress);
		        	   	var compsize;
		        	   	if((res.company).compsize == 1){
		        	   		compsize = "自営業";
		        	   	}else if((res.company).compsize == 2){
		        	   		compsize = "零細企業";
		        	   	}else if((res.company).compsize == 3){
		        	   		compsize = "中小企業";
		        	   	}else{
		        	   		compsize = "大企業";
		        	   	}
		        	   	$("input#modal_compsize").val(compsize);
		        	   	
		        	    $("input#modal_jobto").val((res.jobValue).jobto);
		        	    $("input#modal_edumajor").val((res.jobValue).edumajor);
		        	    var edu;
		        	    if((res.jobValue).edulevel == 1){
		        	    	edu ='高専卒';
		        	    }else  if((res.jobValue).edulevel == 2){
		        	    	edu ='専門卒';
		        	    }else  if((res.jobValue).edulevel == 3){
		        	    	edu ='短大卒';
		        	    }else  if((res.jobValue).edulevel == 4){
		        	    	edu ='大学卒';
		        	    }else  if((res.jobValue).edulevel == 4){
		        	    	edu ='大学院卒';
		        	    }
		        	    $("input#modal_edulevel").val(edu);
		        	    $("input#modal_exparea").val((res.jobValue).exparea);
		        	    var explev;
		        	    if((res.jobValue).explevel == 1){
		        	    	explev = "A";
		        	    }else if((res.jobValue).explevel == 2){
		        	    	explev = "B";
		        	    }else if((res.jobValue).explevel == 3){
		        	    	explev = "C";
		        	    }else if((res.jobValue).explevel == 4){
		        	    	explev = "D";
		        	    }
		        	    $("input#modal_explevel").val(explev);
		        	   
						
		        	    $("#Harmony").css("width", ((res.culture).needstructure*100)+"%");
		        	   	$("#Challenge").css("width", ((res.culture).needchallenge*100)+"%");
		        	   	$("#Stability").css("width", ((res.culture).needstability*100)+"%");
		        	   	$("#Practicality").css("width", ((res.culture).needpracticality*100)+"%");
		        	   	$("#Love").css("width", ((res.culture).needlove*100)+"%");
		        	   	
		        	   	$("#Liberty").css("width", ((res.culture).needliberty*100)+"%");
		        	   	$("#Expression").css("width", ((res.culture).needselfexpression*100)+"%");
		        	   	$("#Closeness").css("width", ((res.culture).needcloseness*100)+"%");
		        	   	$("#Excitement").css("width", ((res.culture).needideal*100)+"%");
		        	   	$("#Curiosity").css("width", ((res.culture).needcuriosity*100)+"%");
		        	   	
		        	   	$("#Structure").css("width", ((res.culture).needstructure*100)+"%");
						
					}, error:function(res){
						
					}
				});
       		
        	   
           });
      });
   </script>

	<script type="application/javascript">
      
      
        $(document).ready(function () {
            
            
            var icons = {
                  header:  "arrow-down5",
                  activeHeader: "arrow-down5.png"
                };
                $( "#accordion" ).accordion({
                  icons: icons
                });
                $( "#toggle" ).button().on( "click", function() {
                  if ( $( "#accordion" ).accordion( "option", "icons" ) ) {
                    $( "#accordion" ).accordion( "option", "icons", null );
                  } else {
                    $( "#accordion" ).accordion( "option", "icons", icons );
                  }
                });
                 
        });
        
   
   </script>


</body>
</html>