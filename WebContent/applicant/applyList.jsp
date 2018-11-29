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
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>Link Inside</title>
	<style type="text/css">
		#row1,#row2{
			width: 95%;
			margin-left:30px;
		}
		
		
	</style>
    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="assets/js/bootstrap-datepicker/css/datepicker.css" />
    <link rel="stylesheet" type="text/css" href="assets/js/bootstrap-daterangepicker/daterangepicker.css" />
        
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

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
  </head>

  <body>
  <section id="intro" class="home-slide text-light">
  </section>
	
	
    <%@include file="applicant_head.jsp"%>
    <form id="dataform">
		
	</form>
	<section id="TOP" class="home-section color-dark bg-white" style="padding-bottom:150px;">
		<div class="container marginbot-50">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow flipInY" data-wow-offset="0" data-wow-delay="0.4s">
						<div class="section-heading text-center">
							<h2 class="h-bold">My List</h2>
							<div class="divider-header"></div>
							<p class="title">自分が志望した企業のリスト</p>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="container" style="margin-top:150px;">
			<div class="row">
				<table class="table table-striped table-advance table-hover">
           	  	  <hr/>
                      <thead>
                      <tr>
                          <th style="width:14%;"><i class="fa fa-bullhorn"></i> 企業名 </th>
                          <th style="width:14%;"><i class="fa fa-user"></i> 求人タイトル </th>
                          <th class="hidden-phone" style="width:30%;"><i class="fa fa-question-circle"></i> 業務詳細情報 </th>
                          <th style="width:12%;" ><i class=" fa fa-calendar"></i> 募集人数 </th>
                          <th style="width:10%;"><i class=" fa fa-display"></i> 現在志望者 </th>
                          <th style="width:14%;"><i class=" fa fa-pencil"></i> マッチング率 </th>
                          <th style="width:6%">志望</th>
                      </tr>
                      </thead>
                      <tbody>
                      <s:if test="%{map.size() == 0}">
                      	<tr>
                      		<td colspan="5" style="text-align: center;"> 登録した情報がありません。 </td>
                      	</tr>
                      </s:if>
                      <s:else>
                      	<s:iterator value="map" var="m" status="status">
							<s:set var="v" value="value"/>
							<tr id="<s:property value="#v.JOBID"/>">
								<td> <s:property value="#v.COMPNAME" /> </td>
								<td> <s:property value="#v.JOBTITLE" /> </td>
								<td> <div style="overflow:hidden; white-space:nowrap; text-overflow:ellipsis; width:130px;"> <s:property value="#v.JOBDESC" /> </div></td>
								<td> <s:property value="#v.JOBTO" /> </td>
								<td> <s:property value="#v.JOBAPPLIED" /> </td>
								<td> <s:property value="#v.TOTALPER" />% </td>
								<td>
									<s:if test='#v.STATUS == "B"'>
										<button class="btn btn-primary btn-xs">志望中</button>
									</s:if>
									<s:else>
										<button class="btn btn-xs">志望完了</button>
									</s:else>
						        </td>
							</tr>
                      	</s:iterator>
                      </s:else>
                      </tbody>
                  </table>
			</div>
		</div>
		<!-- /row -->
	</section>
	
	<section  class="home-section color-dark bg-white" style="padding-bottom:150px;" id="detailsection">
		
		
		
			
		
	</section>


    <%@include file="applicant_foot.jsp" %>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="assets/js/jquery.scrollTo.min.js"></script>
    <script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>


    <!--common script for all pages-->
    <script src="assets/js/common-scripts.js"></script>
    <!--script for this page-->
    <script src="assets/js/jquery-ui-1.9.2.custom.min.js"></script>
	<script src="/assets/js/form-component.js"></script>    
    <script src="assets/js/bootstrap-switch.js"></script>
   <!--custom tagsinput-->
    <script src="assets/js/jquery.tagsinput.js"></script>
    
   <!--custom checkbox & radio-->
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
   
   
   <script type="text/javascript" src="assets/js/bootstrap-inputmask/bootstrap-inputmask.min.js"></script>
   
   
   <script src="assets/js/form-component.js"></script>    
   <script type="text/javascript">
   
   	$(function(){
   		$("table tr").css("cursor", "pointer");
		var index = 0;
	     $("table tr").on("click", function(){
	    	 if($("table tr").index(this) > 0){
	    		if( index == $("table tr").index(this) ){
	    			$("#detailsection").children().remove();
    				$("#detailsection").children().remove();
    				var position=$('#TOP').offset(); // 위치값
					$('html,body').animate({scrollTop:position.top},100); // 이동
	    			return;
	    		}else{
	    			index = $("table tr").index(this);
	    		}
	    		 var jobid = $(this).attr("id");
	    		 $.ajax({
	    			 url:'myProfile',
	    			 method:"post",
	    			 data: {"id":jobid},
	    			 dataType:"json",
	    			 success: function(resp){
	    				 
	    				 var header ='<div class="container marginbot-10"><div class="row"><div class="col-lg-8 col-lg-offset-2"><div class="wow flipInY" data-wow-offset="0" data-wow-delay="0.4s">'
	    				 			+'<div class="section-heading text-center"><h2 class="h-bold">履歴書</h2></div></div></div></div></div>';
	    				 
	    				 
	    				 var base = '<div class="container" id="detail"><div class="form-panel" style="padding-left: 0; padding-right: auto;">'
	    						+'<h6 class="mb">'
	    						+'<div class="form-horizontal style-form values">'
	    							+'<div class="form-group"><label class="col-sm-2 control-label">志望者名前</label>'
	    							+'<div class="col-sm-10"><input type="text" class="form-control round-form modal_read" id="name" readonly="readonly">'
	    						+'</div></div>'
	    						+'<div class="form-group"><label class="col-sm-2 control-label">電話番号</label><div class="col-sm-10">'
	    						+'<input type="text" class="form-control round-form modal_read" id="phone" readonly="readonly"></div></div>'
	    						+'<div class="form-group"><label class="col-sm-2 control-label">生年月日</label><div class="col-sm-10"><input type="text" class="form-control round-form modal_read" id="bday" readonly="readonly">'
	    						+'</div></div><div class="form-group"><label class="col-sm-2 control-label">専攻</label><div class="col-sm-10">'
	    						+'<input type="text" class="form-control round-form modal_read" id="major" readonly="readonly"></div></div><div class="form-group">'
	    						+'<label class="col-sm-2 control-label">学校名</label><div class="col-sm-10"><input type="text" class="form-control round-form modal_read" id="uniname" readonly="readonly"></div>'
	    						+'</div><div class="form-group"><label class="col-sm-2 control-label">学位</label><div class="col-sm-10">	<input type="text" class="form-control round-form modal_read" id="diploma" readonly="readonly">'
	    						+'</div></div><div class="form-group"><label class="col-sm-2 control-label">卒業日</label><div class="col-sm-10"><input type="text" class="form-control round-form modal_read" id="graduDate" readonly="readonly">'
	    						+'</div></div><div class="form-group"><label class="col-sm-2 control-label">勤め先</label><div class="col-sm-10">'
	    						+'<input type="text" class="form-control round-form modal_read" id="workname" readonly="readonly"></div></div>'
	    						+'<div class="form-group"><label class="col-sm-2 control-label">業務</label><div class="col-sm-10"><input type="text" class="form-control round-form modal_read" id="worktitle" readonly="readonly">'
	    						+'</div></div><div class="form-group"><label class="col-sm-2 control-label">在職期間</label><div class="col-sm-10">'
	    						+'<input type="text" class="form-control round-form modal_read" id="period" readonly="readonly"></div></div>'
	    						+'<div class="form-group"><label class="col-sm-2 control-label">スキル名</label><div class="col-sm-10"><input type="text" class="form-control round-form modal_read" id="skillname" readonly="readonly">'
	    						+'</div></div><div class="form-group"><label class="col-sm-2 control-label">スキルレベル</label><div class="col-sm-10">'
	    						+'<input type="text" class="form-control round-form modal_read" id="skilllevel" readonly="readonly"></div></div><div class="form-group"><label class="col-sm-2 control-label">資格名</label>'
	    						+'<div class="col-sm-10"><input type="text" class="form-control round-form modal_read" id="certname" readonly="readonly"></div></div><div class="form-group">'
	    						+'<label class="col-sm-2 control-label">取得日</label><div class="col-sm-10"><input type="text" class="form-control round-form modal_read" id="certdate" readonly="readonly">'
	    						+'</div></div></div></h6></div></div>';
	    				
	    						
	    				/* var button = '<button>다음</button>'; */
	    				$("#detailsection").children().remove();
	    				$("#detailsection").children().remove();
	    				
	    				
    					if(resp.obj[4] != null && resp.obj[4].length != 0){
    						var body =  "";
    						body+='<div class="container marginbot-10"><div class="row"><div class="col-lg-8 col-lg-offset-2"><div class="wow flipInY" data-wow-offset="0" data-wow-delay="0.4s">'
    				 				+'<div class="section-heading text-center"><h2 class="h-bold">自己紹介書</h2></div></div></div></div></div>';
    						$.each(resp.obj[4], function(i, value){
    							body += '<div class="container" style="height:800px; text-align:center;">'
								+ '<h3 style="text-align: left;">Q'+ (i+1) + '. ' + value.question + '</h3>'
								+'<textarea class="content" style="width:90%; height:600px; resize:none;" readonly="readonly">'
								+ value.answer+'</textarea>'
								+'</div>';
        					});
    						
    						base += body;
	    		 		}
    					
    					$("#detailsection").append(header);
	    				$("#detailsection").append(base);
	    				 
	    				 
	    				$('#name').val(resp.obj[0].applicantfirst);
 						$('#phone').val(resp.obj[0].applicantphone);
 						$('#bday').val(resp.obj[0].applicantbday);
 						$('#gender').val(resp.obj[0].applicantgender);
	    			 
	    				
    					$.each(resp.obj[1], function(i, value){//Education VO
    						$('#uniname').val(value.name);
    						$('#major').val(value.major);
    						$('#diploma').val(value.diploma);
    						$('#graduDate').val(value.enddate);
    					});
    					
    					$.each(resp.obj[2], function(i, value){//Experience VO
    						$('#workname').val(value.workname);
    						$('#worktitle').val(value.workjobtitle);
    						$('#period').val(value.enddate+" ~ "+value.startdate);
    					});
    					$.each(resp.obj[3], function(i, value){//Skills VO
    						$('#skillname').val(value.skillname);
    						$('#skilllevel').val(value.skilllevel);
    						$('#certname').val(value.certname);
    						$('#certdate').val(value.certdate);
    					});
    					
    					var position=$('#detailsection').offset(); // 위치값
    					$('html,body').animate({scrollTop:position.top},100); // 이동

    					
	    			 }
	    		 });
	    	 }
	     });
   		
   	});
   
   
   
   </script>
     

  </body>
</html>