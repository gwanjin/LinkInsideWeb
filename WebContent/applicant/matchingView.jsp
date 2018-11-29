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
	<section id="TOP" class="home-section color-dark bg-white">
		<div class="container marginbot-50">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow flipInY" data-wow-offset="0" data-wow-delay="0.4s">
						<div class="section-heading text-center">
							<h2 class="h-bold">Matching Company</h2>
							<div class="divider-header"></div>
							<p class="title">マッチング企業</p>
						</div>
					</div>
				</div>
			</div>

		</div>


		<div class="container">
			<div class="row">
				<table class="table table-striped table-advance table-hover">
           	  	  <h4><i class="fa fa-angle-right"></i> 現況  </h4>
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
							<tr>
								<td> <s:property value="#v.COMPNAME" /> </td>
								<td> <s:property value="#v.JOBTITLE" /> </td>
								<td> <div style="overflow:hidden; white-space:nowrap; text-overflow:ellipsis; width:130px;"> <s:property value="#v.JOBDESC" /> </div></td>
								<td> <s:property value="#v.JOBTO" /> </td>
								<%-- <td> <s:property value="#v.JOBSTART" /> ~ <s:property value="#v.JOBEND" /> </td> --%>
								<td> <s:property value="#v.JOBAPPLIED" /> </td>
								<td> <s:property value="#v.TOTALPER" />% </td>
								<td>
								<!-- A이면 아직 지원하지 않은 상태, B는 지원한 상태 -->
									<s:if test='#v.STATUS == "A"'>
										<button class="btn btn-success btn-xs" id="<s:property value="#v.JOBID" />"><i class="fa fa-check"></i>志望する</button>
									</s:if>
									<s:else>
										<button class="btn btn-primary btn-xs">志望完了</button>
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
     <script>
      //custom select box

      $(function(){
    	  $("a.clickJobId").on("click", function(){
    		  var jobid = $(this).attr("id");
    		  var insertInput = "";
    		  insertInput += "<input type='hidden' value='"+jobid+"' name='jobid' />";
    		  
    		  var form = $("#dataform");
	  			form.append(insertInput);
	  			
	  			form.attr("action", "update_job");
	  			form.attr("method","post");
	  			form.submit(); 
    		  
    	  });
    	  
    	  $("button.btn-success").on("click", function(){
    		  var jobid = $(this).attr("id");
    		  var result = confirm("志望しますか?");
			if(result == true){
				$.ajax({
					url: 'checkSelfPromotion',
					method: 'post',
					data:{"id":jobid},
	    			dataType: 'json',
	    			success: function(res){
	    				
	    				var form = $("form#dataform");
	    				form.append('<input type="hidden" name="id" value="'+jobid+'"/>');
	    				form.attr("method", "post");
	    				if((res.selfList).length == 0){
	    					$.ajax({
	    		    			url:'applyJob',
	    		    			method: 'post',
	    		    			data:{"id":jobid},
	    		    			dataType: 'json',
	    		    			success: function(){
	    		    				alert("応募が成功的に完了しました。");
	    		    				location.href="applyList";
	    		    			},error : function(){
	    		    				
	    		    			}
	    		    			
	    		    		 }); 
	    				}else{
	    					alert("企業のエントリーシートがあります. エントリーシートページに移動します。");
	    					form.attr("action", "writeSelfPromotion");
	    					form.submit();
	    				}
	    			},error : function(res){
	    				
	    			}
				});
				
			}	/* --if   end */
				
    	  });
      });

  </script>

  </body>
</html>