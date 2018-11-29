<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

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
    <!-- Bootstrap core CSS -->
    <link href="./assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="./assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="./assets/js/bootstrap-datepicker/css/datepicker.css" />
    <link rel="stylesheet" type="text/css" href="./assets/js/bootstrap-daterangepicker/daterangepicker.css" />
        
    <!-- Custom styles for this template -->
    <link href="./assets/css/style.css" rel="stylesheet">
    <link href="./assets/css/style-responsive.css" rel="stylesheet">
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
    	
    	#validmessage{
    		display: none;
    	}
    	
    	.col-sm-10{
/*       		background-color: red; */
    	}
    	
     	input[type=text], input[type=email]{
     		margin-right: 10px;
    		float: left;
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
		background-color: pink;
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
    var phonecheck = true;
    
    
    function validateEmail(email) {
    	  var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    	  return re.test(email);
    	};
    	

    $(document).ready(function () {
         $('#compid').on("change keyup", function () { 
        	 $.ajax({
        		url: "companyIdCheck",
        		data: {"company.compid" : $('#compid').val()},
        		dataType: "json",
        		success: function(rsp){
        			if(rsp.company==null && validateEmail($('#compid').val())){
        				$('#validmessage').css("display","inherit");
                		$('#validmessage').html('使用できます。').removeClass('invalid').addClass('valid');        				        				
                		$('#checkicon').css("display", "inherit");
                		$('#cancelicon').css("display", "none");
                		idcheck = true;
        			}else if($('#compid').val().length<1){
        				$('#validmessage').css("display","none");
                		$('#checkicon').css("display", "none");
                		$('#cancelicon').css("display", "none");
                		idcheck = false;
        			}else if(rsp.company==null){
        				$('#validmessage').css("display","inherit");
                		$('#validmessage').html('形式に合わせて入力してください。').removeClass('valid').addClass('invalid');
                		$('#checkicon').css("display", "none");
                		$('#cancelicon').css("display", "inherit");
                		idcheck = false;
        			}else if(rsp.company!=null){
                		$('#validmessage').html('使用できないIDです。').removeClass('valid').addClass('invalid');   
                		$('#checkicon').css("display", "none");
                		$('#cancelicon').css("display", "inherit");
                		idcheck = false;
                	}
        		}
        	 });
     });
         
     	$('#sendphone').on("click", function(){
			if('#sendphone'!=''){
	    		$.ajax({
	    			url: "requestComp",
	    			data: {"phone" : $('#compphone').val()},
	    			dataType: "json",
	    			success: function(rsp){
	    				if(rsp.status=="0"){
	    				};
	    				$('#compphone').attr('readonly', true);	 
	    				/* alert("success" + $('#compphone').val());
	    				alert(rsp.request_id);
	    				alert(request_id); */
	     			}
	    		})
			}
     	});
    	
     	$('#sendverify').on("click", function(){
    		/* alert("sendverify");
    		alert($("#verify").val()); */
     		$.ajax({
    			url: "verifyComp",
    			data: {"number" : $('#verify').val() },
    			dataType: "json",
    			success: function(rsp){
    				if(rsp.status=="0"){
    					alert("認証しました。");
    					$('#verifygroup').css("display", "none");
    					$('#sendphone').css("display","none");
    				}else{
    					var er = rsp.error_text;
    					alert("error: " + rsp.status + " text: " + rsp.error_text);
    					$('#verify').addClass('error').focus();
    					$('#errormsg').html(er).css("display","inherit");
    					
    				}
    			}		
     		}) 
     	});
         
         $('#form').submit(function(){

        	return true;
         });
         
    });
    
    </script>
    
  </head>
  <body>
  	<section id="intro" class="home-slide text-light">
	</section>
	<%@include file="../company/company_aside.jsp"%>
	
		<!-- Section: about -->
    <section id="about" class="home-section3 color-dark bg-white">
		<div class="container marginbot-50" >
			<div class="row" >
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow flipInY" data-wow-offset="0" data-wow-delay="0.4s">
					<div class="section-heading text-center">
					<h2 class="h-bold">sign up</h2>
					<div class="divider-header"></div>
					<p class="title" >企業会員加入</p>
					</div>
					</div>
				</div>
			</div>

		</div>
		
		
		<div class="container">
       	 <div class="row">
		

                  <div class="col-lg-12"  id="form1">
                   <div class="form-panel">
                  <form id="form" class="form-horizontal style-form" method="post" action="insertCompany" >
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label" >メールアドレス</label>
                              <div class="col-sm-10">
                                  <input type="email" class="form-control" name="company.compid" id="compid" placeholder="ex) xxxxxx@yyyyyy.com" style="width:470px" required>
                                  <img alt="" src="./icon/checkmark2.png" class="check" id="checkicon"><img alt="" class="cancel" src="./icon/cancel2.png" id="cancelicon">
                                   <span class="help-block" id="validmessage">使用できないIDです。</span>
                              </div>
                          </div>
                          <div class="form-group">
                          		<label class="col-sm-2 col-sm-2 control-label">パスワード</label>
                              <div class="col-sm-10">
                                  <input type="password"  class="form-control" placeholder="Minimum 8" style="width:470px" name="company.comppassword" id="password" required>
                              </div>
                             
                          </div>
                          <div class="form-group">
                          		<label class="col-sm-2 col-sm-2 control-label">パスワード（確認）</label>
                              <div class="col-sm-10">
                                  <input type="password"  class="form-control" placeholder="" style="width:470px" id="passcheck" required>
                                  <!-- <span class="help-block">パスワードが違います。</span> -->
                              </div>
                             
                          </div>
                           <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">事業者名</label>
                              <div class="col-sm-10">
                                  <input type="text"  class="form-control"  style="width:470px"  name="company.compname" id="compname" required> 
                              </div>
                          </div>
                           <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">分野</label>
                              <div class="col-sm-10">
                                  <input type="text"  class="form-control" placeholder="placeholder" style="width:470px" name="company.comparea" id="comparea" required> 
                              </div>
                          </div>
                           <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">会社規模</label>
                              <div class="col-sm-10">
                              		<select name="company.compsize" id="compsize" class="form-control" style="width:470px" >
										<option value="1">自営業</option>
										<option value="2">零細企業</option>
										<option value="3">中小企業</option>
										<option value="4">大企業</option>
									</select>
                              </div>
                          </div>
                           <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">電話番号</label>
                              <div class="col-sm-10">
                                  <input type="text"  class="form-control" placeholder="821089853113" style="width:470px" name="company.compphone" id="compphone" required>
                                  <input type="button" id="sendphone" value="認証番号送信"/> 
                              </div>
                          </div>
                          <div class="form-group" id="verifygroup">
                              <label class="col-sm-2 col-sm-2 control-label">認証番号</label>
                              <div class="col-sm-10">
                                  <input type="text"  class="form-control" placeholder="" style="width:470px" id="verify" required>
                                  <input type="button" id="sendverify" value="認証番号確認">
                                  <br><span class="help-block" id="errormsg">aaaaaaa</span>
                                  <input type="hidden" value=""> 
                              </div>
                          </div>
                           <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">事業者番号</label>
                              <div class="col-sm-10">
                                  <input type="text"  class="form-control" placeholder="" style="width:470px" name="company.compnum" id="compnum" required> 
                              </div>
                          </div>
                           <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">事業者住所</label>
                              <div class="col-sm-10">
                              	   <input type="text"  class="form-control" placeholder="" style="width:470px" name="company.compaddress" id="compaddress" required> 
                              </div>
                          </div>
                           <div>
                             
                              <div class="col-sm-10" style="text-align: center;">
                                  <input type="submit"  value="Next" style="width:100px;height:35px; font-size:20px;"> 
                              </div>
                          </div>
                         
                      </form>
                   </div>
          		 </div> <!--기업회원 끝 --> 	
          	</div><!-- /row -->
		

        </div>		
	<!-- 	</div> -->

	</section>
	<!-- /Section: about -->
  		<%@include file="../company/company_footer.jsp" %>
  
  
  
    <script src="./assets/js/jquery.js"></script>
    <script src="./assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="./assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="./assets/js/jquery.scrollTo.min.js"></script>
    <script src="./assets/js/jquery.nicescroll.js" type="text/javascript"></script>
<!-- 	<script src="./script/jquery-3.1.1.min.js" type="text/javascript"></script> -->

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
	<script src="new_css_js/js/wow.min.js"></script>
	<script src="new_css_js/js/custom.js"></script>

  </body>
</html>
