<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>Link Inside</title>

    <!-- Bootstrap core CSS -->
    <link href="./assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="./assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="./assets/js/bootstrap-datepicker/css/datepicker.css" />
    <link rel="stylesheet" type="text/css" href="./assets/js/bootstrap-daterangepicker/daterangepicker.css" />
        
    <!-- Custom styles for this template -->
    <link href="./assets/css/style.css" rel="stylesheet">
    <link href="./assets/css/style-responsive.css" rel="stylesheet">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	
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
    	
    	.col-sm-10{
/*      		background-color: red; */
    	}
    	
     	input[type=text]{
    		float: left;
    		margin-right: 10px;
    	}
    	
    	input[type=button]{
    		margin-left: 10px;
    		height: 33px;
    		display: inline-block;
    		padding: auto;
    	}
    	
    	.check, .cancel {
    		display: none;
    	}
    	
    	.error:focus{
    	border-color: #e96565;
 		outline: 0;
    	  -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(233, 101, 101, .6);
          box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(233, 101, 101, .6);
    	}
    	
    #headbar{
		background-color: #66afe9;
	}
	
	#errormsg{
		color: 	#e96565;
		font-size: 12pt;
		display: none;
	}
    	
    </style>
<script type="text/javascript" src="./script/jquery-3.1.1.min.js"></script>
    
    <script>
    var idcheck = false;	
    var phonecheck = false;
    

    $(document).ready(function () {
         $('#applicantid').on("change keyup", function () { 
        	 $.ajax({
        		url: "applicantIdCheck",
        		data: {"applicant.applicantid" : $('#applicantid').val()},
        		dataType: "json",
        		success: function(rsp){
        			 if($('#applicantid').val().length<1){
        				$('#validmessage').html("");
                		$('#checkicon').css("display", "none");
                		$('#cancelicon').css("display", "none");
                		idcheck = false;
        			}else if(rsp.applicant==null){
                		$('#validmessage').html('形式に合わせてアードレスを入力してください。').removeClass('valid').addClass('invalid');
                		$('#checkicon').css("display", "none");
                		$('#cancelicon').css("display", "inherit");
                		idcheck = false;
        			}else if(rsp.applicant!=null){
                		$('#validmessage').html('使用できないIDです。').removeClass('valid').addClass('invalid');   
                		$('#checkicon').css("display", "none");
                		$('#cancelicon').css("display", "inherit");
                		idcheck = false;
                		}
        		}
        	 });
     });
   
     	
    	
         
         
         $('#applicantbday').datepicker({
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
	<%@include file="applicant_head.jsp"%>
      <section id="TOP" class="home-section color-dark bg-white">
		<div class="container marginbot-50">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow flipInY" data-wow-offset="0" data-wow-delay="0.4s">
					<div class="section-heading text-center">
					<h2 class="h-bold">My page</h2>
					<div class="divider-header"></div>
					<p class="title" >個人情報変更</p>
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
                  	  <form id="myform" class="form-horizontal style-form" method="post" action="updateApplicant">
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">メールアドレス</label>
                              <div class="col-sm-10">
                             	 <s:textfield  class="form-control" name="applicant.applicantid" id="applicantid" readonly="true" style="width:550px" />
                              </div>
                          </div>
                          <div class="form-group">
                          		<label class="col-sm-2 col-sm-2 control-label">パスワード</label>
                              <div class="col-sm-10">
                              <s:password  class="form-control" style="width:550px" name="applicant.applicantpassword" id="applicantpassword" required="required"/>
                              </div>
                             
                          </div>
                          <div class="form-group">
                          		<label class="col-sm-2 col-sm-2 control-label">パスワード（確認）</label>
                              <div class="col-sm-10">
                              	 <s:password  class="form-control" style="width:550px" id="applicantpassword2" required="required"/>
                                  <span class="help-block" id="comment">パスワードを一致してません。</span>
                              </div>
                             
                          </div>
                           <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">性</label>
                              <div class="col-sm-10">
                              <s:textfield class="form-control"  style="width:550px" name="applicant.applicantfirst" id="applicantfirst" required="required" />
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">名</label>
                              <div class="col-sm-10">
                              <s:textfield class="form-control" style="width:550px" name="applicant.applicantlast" id="applicantlast" required="required"/>
                              </div>
                          </div>
                        	<div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">電話番号</label>
                              <div class="col-sm-10">
                              	<s:textfield class="form-control"  style="width:550px" name="applicant.applicantphone" id="applicantphone" required="required"/>
                              </div>
                          </div>
                           <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">生年月日</label>
                              <div class="col-sm-10">
                              	<s:textfield class="form-control" style="width:550px" name="applicant.applicantbday" id="applicantbday" required="required"/>
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">性別</label>
                              <div class="col-sm-10">
                              	<s:property value="%{applicant.applicantgender}"/>
                              </div>
                          </div> 
                           
                           <div style="text-align: center;">
                              	<input type="button" id="update" value="変更">&nbsp;&nbsp;
                              	<input type="button" id="cancel" value="キャンセル">
                           </div>
                          
                      </form>
                      
                   </div>
          		 </div>
          	</div><!-- /row -->
		</section>
	
  
		
		<!--  footer -->
		
	<%@include file="applicant_foot.jsp" %>
    <!-- js placed at the end of the document so the pages load faster -->
    <script src="./assets/js/jquery.js"></script>
    <script src="./assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="./assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="./assets/js/jquery.scrollTo.min.js"></script>
    <script src="./assets/js/jquery.nicescroll.js" type="text/javascript"></script>
    
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
    <script src="./assets/js/common-scripts.js"></script>

    <!--script for this page-->
    <script src="./assets/js/jquery-ui-1.9.2.custom.min.js"></script>

	<!--custom switch-->
	<script src="./assets/js/bootstrap-switch.js"></script>
	
	<!--custom tagsinput-->
	<script src="./assets/js/jquery.tagsinput.js"></script>
	
	<!--custom checkbox & radio-->
	
	<script type="text/javascript" src="./assets/js/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script type="text/javascript" src="./assets/js/bootstrap-daterangepicker/date.js"></script>
	<script type="text/javascript" src="./assets/js/bootstrap-daterangepicker/daterangepicker.js"></script>
	
	<script type="text/javascript" src="./assets/js/bootstrap-inputmask/bootstrap-inputmask.min.js"></script>
	
	
	<script src="./assets/js/form-component.js"></script>    
	<script>
		$(function(){
			
			
			$("input#update").on("click", function(){
				var password = $("#applicantpassword").val();
				var password2 = $("#applicantpassword2").val();
				
				if(password == ""){
					alert("パスワード 入力してください。");
					$("#applicantpassword").focus();
					return;
				}
				
				if(password2 == ""){
					alert("もう一度パスワード 入力してください。");
					$("#applicantpassword2").val("");
					$("#applicantpassword2").focus();
					return;
				}
				
				if(password != password2){
					alert("パスワード が違います。確認してください。");
					$("#applicantpassword2").val("");
					$("#applicantpassword2").focus();
					return;
				}
				
				
				$("#myform").submit();
				
			});
			
			$("input#cancel").on("click", function(){
				location.href="applicantUpdateFrom";
			});
			
		});
	</script>

  </body>
</html>
