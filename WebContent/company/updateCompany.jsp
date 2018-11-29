<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

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
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" type="text/css" href="assets/js/bootstrap-datepicker/css/datepicker.css" />
    <link rel="stylesheet" type="text/css" href="assets/js/bootstrap-daterangepicker/daterangepicker.css" />
        
    <!-- Custom styles for this template -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">
    <style type="text/css">
    	a{
    		cursor: pointer;
    	}
    	
    	a:hover.applicant, a:hover.company{
    		color:red;
    	}
    	
    	.valid{
    		color:green;
    	}
    	
    	.invalid{
    		color:red;
    	}
    	#validmessage{
    		display: none;
    	}
    	
    	#validmessagecomp{
    		display: none;
    	}
    	
    </style>
<script type="text/javascript" src="../script/jquery-3.1.1.min.js"></script>
    
    
  </head>
  <body>
  	<section id="intro" class="home-slide text-light">
	</section>
	<%@include file="company_aside.jsp" %>
	
	<section id="about" class="home-section3 color-dark bg-white">
		<div class="container marginbot-50">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow flipInY" data-wow-offset="0" data-wow-delay="0.4s">
					<div class="section-heading text-center">
					<h2 class="h-bold">My page</h2>
					<div class="divider-header"></div>
					<p class="title" >企業会員情報変更</p>
					</div>
					</div>
				</div>
			</div>

		</div>
		
		
		<div class="container">
       	 <div class="row">
		
                  	<!--기업회원  -->
                  <div class="col-lg-12"  id="form2">
                  <!--  <div class="form-panel"> -->
                  <form id="myform" class="form-horizontal style-form" method="post" action="updateCompany">
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">メールアドレス</label>
                              <div class="col-sm-10">
                             <s:textfield class="form-control" name="company.compid" id="compid" style="width:550px"  readonly="true"/>
                              </div>
                          </div>
                          <div class="form-group">
                          		<label class="col-sm-2 col-sm-2 control-label">パスワード</label>
                              <div class="col-sm-10">
                              <s:password  class="form-control"  style="width:550px" name="company.comppassword" id="comppassword"/>
                              </div>
                             
                          </div>
                          <div class="form-group">
                          		<label class="col-sm-2 col-sm-2 control-label">パスワード（確認）</label>
                              <div class="col-sm-10">
                              	 <s:password  class="form-control"  style="width:550px"  id="comfirmpassword"/>
                                <%--   <span class="help-block" id="comment">パスワードを一致してません。</span> --%>
                              </div>
                             
                          </div>
                           <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">事業者名</label>
                              <div class="col-sm-10">
                              <s:textfield class="form-control"  style="width:550px"  name="company.compname" id="compname"/>
                              </div>
                          </div>
                           <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">分野</label>
                              <div class="col-sm-10">
                              <s:textfield class="form-control" style="width:550px" name="company.comparea" id="comparea" />
                              </div>
                          </div>
                           <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">会社規模</label>
                              <div class="col-sm-10">
                              <s:textfield class="form-control" style="width:550px" name="company.compsize" id="compsize" />         
                              </div>
                          </div>
                           <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">電話番号</label>
                              <div class="col-sm-10">
                              <s:textfield class="form-control" style="width:550px" name="company.compphone" id="compphone" />
                                
                              </div>
                          </div>
                           <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">事業者番号</label>
                              <div class="col-sm-10">
                              	<s:textfield class="form-control" placeholder="placeholder" style="width:550px" name="company.compnum" id="compnum" />
                              
                              </div>
                          </div>
                           <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">事業者住所</label>
                              <div class="col-sm-10">
                              	<s:textfield class="form-control" style="width:550px" name="company.compaddress" id="compaddress" />
                             
                              </div>
                          </div>
                           <div >
                             
                              <div style="text-align: center;">
                              	<input type="button" id="update" value="変更">&nbsp;&nbsp;
                              	<input type="button" id="cancel" value="キャンセル">
                              </div>
                          </div>
                          
                      </form>
                   </div>
          		 </div> <!--기업회원 끝 --> 	
          		 
          		 
          	</div><!-- /row -->

	</section>
	<!-- /Section: about -->  
	<%@include file="company_footer.jsp" %>


    <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="assets/js/jquery.scrollTo.min.js"></script>
    <script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>
	<script src="../script/jquery-3.1.0.min.js" type="text/javascript"></script>

    <!--common script for all pages-->
    <script src="assets/js/common-scripts.js"></script>

    <!--script for this page-->
    <script src="assets/js/jquery-ui-1.9.2.custom.min.js"></script>

	<!--custom switch-->
	<script src="assets/js/bootstrap-switch.js"></script>
	
	<!--custom tagsinput-->
	<script src="assets/js/jquery.tagsinput.js"></script>
	
	<!--custom checkbox & radio-->
	
	<script type="text/javascript" src="assets/js/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script type="text/javascript" src="assets/js/bootstrap-daterangepicker/date.js"></script>
	<script type="text/javascript" src="assets/js/bootstrap-daterangepicker/daterangepicker.js"></script>
	
	<script type="text/javascript" src="assets/js/bootstrap-inputmask/bootstrap-inputmask.min.js"></script>
	
	
	<script src="assets/js/form-component.js"></script>    
	<script src="new_css_js/js/wow.min.js"></script>
    <script src="new_css_js/js/custom.js"></script>
	
<script>
		$(function(){
			
			
			$("input#update").on("click", function(){
				var password = $("#comppassword").val();
				var password2 = $("#comfirmpassword").val();
				
				if(password == ""){
					alert("パスワード 入力してください。");
					$("#comppassword").focus();
					return;
				}
				
				if(password2 == ""){
					alert("もう一度パスワード 入力してください。");
					$("#comfirmpassword").val("");
					$("#comfirmpassword").focus();
					return;
				}
				
				if(password != password2){
					alert("パスワード が違います。確認してください。");
					$("#comfirmpassword").val("");
					$("#comfirmpassword").focus();
					return;
				}
				
				
				
				$("#myform").submit();
				
			});
			
			$("input#cancel").on("click", function(){
				location.href="updateCompanyForm";
			});
			
		});
</script>
    
  </body>
</html>
