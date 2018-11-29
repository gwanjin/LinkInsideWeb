<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
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
	
	<!-- 기존 css -->
	<link href="./assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="./assets/js/bootstrap-datepicker/css/datepicker.css" />
    <link rel="stylesheet" type="text/css" href="./assets/js/bootstrap-daterangepicker/daterangepicker.css" />
     <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
     <link href="./assets/css/style.css" rel="stylesheet">
    <link href="./assets/css/style-responsive.css" rel="stylesheet"> 
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="./script/jquery-3.1.1.min.js"></script>

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
<script>
    var idcheck = false;	
    var phonecheck = true;
    
    
    function validateEmail(email) {
    	  var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    	  return re.test(email);
    	};
    	

    $(document).ready(function () {
         $('#applicantid').on("change keyup", function () { 
        	 $.ajax({
        		url: "applicantIdCheck",
        		data: {"applicant.applicantid" : $('#applicantid').val()},
        		dataType: "json",
        		success: function(rsp){
        			if(rsp.applicant==null && validateEmail($('#applicantid').val())){
                		$('#validmessage').html('使用できます。').removeClass('invalid').addClass('valid');        				        				
                		$('#checkicon').css("display", "inherit");
                		$('#cancelicon').css("display", "none");
                		idcheck = true;
        			}else if($('#applicantid').val().length<1){
        				$('#validmessage').html("");
                		$('#checkicon').css("display", "none");
                		$('#cancelicon').css("display", "none");
                		idcheck = false;
        			}else if(rsp.applicant==null){
                		$('#validmessage').html('形式に合わせて入力してください。').removeClass('valid').addClass('invalid');
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
   
     	/* $('#sendphone').on("click", function(){
     		
			if($('#sendphone').val()!=null){
	    		$.ajax({
	    			url: "requestApplicant",
	    			data: {"phone" : $('#applicantphone').val()},
	    			dataType: "json",
	    			success: function(rsp){
	    				if(rsp.status=="0"){
	    					$('#applicantphone').attr('readonly', true);	    					
	    				};
	     			}
	    		})
			}
     	});
    	
     	$('#sendverify').on("click", function(){
     		$.ajax({
    			url: "verifyComp",
    			data: {"number" : $('#verify').val() },
    			dataType: "json",
    			success: function(rsp){
    				if(rsp.status=="0"){
    					alert("認証しました。");
    					$('#verifygroup').css("display", "none");
    					$('#sendphone').css("display","none");
    					phonecheck=true;
    				}else{
    					var er = rsp.error_text;
    					alert("error: " + rsp.status + " text: " + rsp.error_text);
    					$('#verify').addClass('error').focus();
    					$('#errormsg').html(er).css("display","inherit");
    					phonecheck=false;
    					
    				}
    			}		
     		}) 
     	}); */
     	
		
         $('#applicantForm').on('submit', function(){
        	 /* alert(idcheck + "id Check");
        	 alert(phonecheck + "phone check"); */
        	 if(idcheck==true && phonecheck==true){
        		 /* alert("서브밋 성공"); */
        		return true; 
        	 }else{
        		 /* alert("에러"); */
        		 return false;
        	 }
         });
         
         
         $('#applicantbday').datepicker({
             changeMonth: true, 
              changeYear: true,
              dayNames: ['月曜日', '火曜日', '水曜日', '木曜日', '金曜日', '土曜日', '日曜日'],
              dayNamesMin: ['月', '火', '水', '木', '金', '土', '日'], 
              dateFormat: "yy-mm-dd",
              yearRange: '1900:' + new Date().getFullYear()
          });

         $('#form').submit(function(){
        	          	/* alert("summiting"); */
        	         	if(idcheck==false){
        	         		$(window).scrollTop($('#applicantid').position().top);
        	         		$('#applicantid').focus();
        	         		alert("id error");
        	         	}else if(phonecheck==false){
        	         		$('#applicantphone').focus();
        	         		alert("phonecheck error");
        	         		
        	         	}else if($('#password').val().length < 8){
        	   				alert("password length error");   
        	   				alert($('#password').val().length);
        	   				$(window).scrollTop($('#password').position().top);
        	   				$('#password').focus();
        	   				
        	          	}else if($('#password').val() != $('#passcheck').val()){
        	   				alert("password error");      	
        	   				$(window).scrollTop($('#password').position().top);
        	   				$('#password').focus();
        	          	}else{
        	          		return true;
        	          	} 
        	         	return false;
        	          });
    });
    
    </script>	
</head>
<body>
	<section id="intro" class="home-slide text-light">
	</section>
	<%@include file="../applicant/applicant_head.jsp"%>
	
	<section id="about" class="home-section3 color-dark bg-white">
			<div class="container marginbot-50" >
			<div class="row" >
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow flipInY" data-wow-offset="0" data-wow-delay="0.4s">
					<div class="section-heading text-center">
					<h2 class="h-bold">sign up</h2>
					<div class="divider-header"></div>
					<p class="title" >個人会員加入</p>
					</div>
					</div>
				</div>
			</div>

		</div>
		
		
		<div class="container">
			<div class="row">
				 <div class="col-lg-12">
	               <div class="form-panel" >
                  	
                      <form id="form" class="form-horizontal style-form" method="post" action="insertApplicant" >
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">メールアドレス</label>
                              <div class="col-sm-10">
                                  <input type="text" class="form-control" name="applicant.applicantid" id="applicantid" placeholder="ex) xxxx@xxxx.com" style="width:470px" required="required">
                                   <img alt="" src="./icon/checkmark2.png" id="checkicon" class="check"><img alt="" src="./icon/cancel2.png" class="cancel" id="cancelicon" height="30px">
                                  <span class="help-block" id="validmessage"></span>
                              </div>
                          </div>
                          <div class="form-group">
                          		<label class="col-sm-2 col-sm-2 control-label">パスワード</label>
                              <div class="col-sm-10">
                                  <input type="password"  class="form-control"placeholder="Minimum 8" style="width:470px" name="applicant.applicantpassword" id="password" required="required">
                              </div>
                             
                          </div>
                          <div class="form-group">
                          		<label class="col-sm-2 col-sm-2 control-label">パスワード（確認）</label>
                              <div class="col-sm-10">
                                  <input type="password"  class="form-control" placeholder="" id="passcheck" style="width:470px">
                                <!--   <span class="help-block">パスワードが違います。</span> -->
                              </div>
                             
                          </div>
                           <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">性</label>
                              <div class="col-sm-10">
                                  <input type="text"  class="form-control" placeholder="placeholder" style="width:470px" name="applicant.applicantfirst" id="applicantfirst" required="required"> 
                              </div>
                          </div>
                           <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">名</label>
                              <div class="col-sm-10">
                                  <input type="text"  class="form-control" placeholder="placeholder" style="width:470px" name="applicant.applicantlast" id="applicantlast" required="required"> 
                              </div>
                          </div>
                           <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">電話番号</label>
                              <div class="col-sm-10">
                                  <input type="text"  class="form-control" placeholder="ex) 8210xxxxyyyy" style="width:470px" name="applicant.applicantphone" id="applicantphone" required="required">
	                              <input type="button" id="sendphone" value="認証番号送信"/> 
                              </div>
                          </div>
                          <div class="form-group" id="verifygroup">
                              <label class="col-sm-2 col-sm-2 control-label">認証番号</label>
                              <div class="col-sm-10">
                                  <input type="text"  class="form-control" placeholder="placeholder" style="width:470px" id="verify">
                                  <input type="button" id="sendverify" value="認証番号確認">
                                  <br><span class="help-block" id="errormsg">aaaaaaa</span>
                                  <input type="hidden" value=""> 
                              </div>
                          </div>
                           <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">生年月日</label>
                              <div class="col-sm-10">
                                  <input type="text"  class="form-control" placeholder="placeholder" style="width:470px" name="applicant.applicantbday" id="applicantbday" required="required"> 
                              </div>
                          </div>
                           <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">性別</label>
                              <div class="col-sm-10">
                                  <input type="radio"  name="applicant.applicantgender" id="applicantgender" value="M" checked="checked">男性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                              	  <input type="radio"  name="applicant.applicantgender" id="applicantgender" value="F">女性
                              </div>
                          </div>
                             
                              <div class="col-sm-10_h">
                                  <input type="submit"  value="Next" style="width:100px;"> 
                              </div>
                      </form>
                	</div>
                  </div>
          		</div>

        </div>		

	</section>
	
    <%@include file="../applicant/applicant_foot.jsp" %>
    
    
	
	<script src="./assets/js/jquery.js"></script>
    <script src="./assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="./assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="./assets/js/jquery.scrollTo.min.js"></script>
    <script src="./assets/js/jquery.nicescroll.js" type="text/javascript"></script>

    <!--common script for all pages-->
    <script src="./assets/js/common-scripts.js"></script>

    <!--script for this page-->
    <script src="./assets/js/jquery-ui-1.9.2.custom.min.js"></script>

	<!--custom switch-->
	<script src="./assets/js/bootstrap-switch.js"></script>
	
	<!--custom tagsinput-->
	<script src="./assets/js/jquery.tagsinput.js"></script>
	
	<!--custom checkbox & radio-->
	<script src="new_css_js/js/wow.min.js"></script>
	<script src="new_css_js/js/custom.js"></script>
	
	<script type="text/javascript" src="assets/js/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
    <script type="text/javascript" src="assets/js/bootstrap-daterangepicker/date.js"></script>
   <script type="text/javascript" src="assets/js/bootstrap-daterangepicker/daterangepicker.js"></script>
	
	<script type="text/javascript" src="./assets/js/bootstrap-inputmask/bootstrap-inputmask.min.js"></script>
	
	
	<script src="./assets/js/form-component.js"></script>    
	
</body>
</html>