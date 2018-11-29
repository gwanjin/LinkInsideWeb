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

    <!-- Bootstrap core CSS -->
    <link href="../assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="../assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="../assets/js/bootstrap-datepicker/css/datepicker.css" />
    <link rel="stylesheet" type="text/css" href="../assets/js/bootstrap-daterangepicker/daterangepicker.css" />
        
    <!-- Custom styles for this template -->
    <link href="../assets/css/style.css" rel="stylesheet">
    <link href="../assets/css/style-responsive.css" rel="stylesheet">

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
    	#title{
    		margin-left: 30px;
    	}
    	
    </style>
    <script type="text/javascript" src="../script/jquery-3.1.1.min.js"></script>
    <script>
    $(document).ready(function () {
    	   	$('.sendphone').on("click", function(){
    	   		var phone = $(this).prev().prev();
    	   		alert(phone);
    	   		alert($(this).attr("id"));
    	   		if($(this).attr("id")=="applicantidfind"){
    	   			alert("applicantidfind");
    	   		}else if($(this).attr("id")=="companyidfind"){
    	   			alert("companyidfind");
    	   		}
/*      			if(phone !=null){
    	    		$.ajax({
    	    			url: "requestComp",
    	    			data: {"phone" : phone.val()},
    	    			dataType: "json",
    	    			success: function(rsp){
    	    				if(rsp.status=="0"){
    	    					phone.attr('readonly', true);	    					
    	    				};
    	    				alert("success");
    	    				alert(rsp.request_id);
    	     			}
    	    		})
    			}   */       	
 		});
        	
    /*      	$('.sendverify').on("click", function(){
        		alert("sendverify");
        		alert($("#verify").val());
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
    	});
    </script>
  </head>
  <body>

  <section id="container" >
      <!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
      <!--header start-->
      <header class="header black-bg">
              
            <!--logo start-->
            <a href="../index" class="logo"><b>Link Inside</b></a>
            <!--logo end-->
           
           
        </header>
      <!--header end-->
      
     
      
      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">

          	<!-- BASIC FORM ELELEMNTS -->
          	<div class="row mt">
          	<h4 class="mb" id="title"><i class="fa fa-angle-right"></i> <a class="find_id">ID探す</a>/<a class="find_pw">パスワード探す</a></h4>
          		
          		<!--find id  -->
          		<div class="col-lg-12" id="form1">
        			
                  <div class="form-panel" >
                  	 <div class="form-group" id="idgroup">
                  		<input type="radio" id="findID" name="findID" class="radioUser" value="applicant" checked>個人
                  		<input type="radio" id="findID" name="findID" class="radioCompany" value="company">企業
                  	 </div>
                  	 <div id="innerform1">
                  	 <form id="idform1">
                      	<div class="form-group">
                           <label class="col-sm-2 col-sm-2 control-label">電話番号</label>
                         
                            <div class="col-sm-10">
                                <input type="text"  class="form-control" placeholder="placeholder" style="width:300px" name="applicant.applicantphone" id="applicantphone"> 
                          		<span class="help-block">電話番号情報がありません。</span>
                          		 <input type="button" value="認証番号送信" class="sendphone" id="applicantidfind">
                          </div>
                         </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">認証番号</label>
                              <div class="col-sm-10">
                                  <input type="text"  class="form-control" placeholder="SMSで届いた認証番号入力してください" style="width:300px" name="applicant.applicantfirst" id="applicantfirst"> 
                              		<span class="help-block">認証番号が違います。</span>
                              		 <input type="button" value="認証番号送信" class="sendphone">
                              </div>
                          </div>
                           <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">性</label>
                              <div class="col-sm-10">
                                  <input type="text"  class="form-control" placeholder="placeholder" style="width:300px" name="applicant.applicantfirst" id="applicantfirst"> 
                              		<span class="help-block">情報がありません。</span>
                              </div>
                          </div>
                           <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">名</label>
                              <div class="col-sm-10">
                                  <input type="text"  class="form-control" placeholder="placeholder" style="width:300px" name="applicant.applicantlast" id="applicantlast"> 
                              		<span class="help-block">情報がありません。</span>
                              </div>
                          </div>
                          
                                     <button  class="find" style="width:100px;">探す</button> 
                         </form>
                          </div>

							<!-- Company innerForm -->
							<div id="innerform2">
								<form id="idform2">
									<div class="form-group">
										<label class="col-sm-2 col-sm-2 control-label">電話番号</label>

										<div class="col-sm-10">
											<input type="text" class="form-control"
												placeholder="placeholder" style="width: 300px"
												name="company.compphone" id="companyphone">
											<span class="help-block">電話番号情報がありません。</span> 
											<input type="button" value="認証番号送信" class="sendphone" id="companyidfind">
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 col-sm-2 control-label">認証番号</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" placeholder="placeholder" style="width: 300px" name="applicant.applicantfirst" id="applicantfirst">
											<span class="help-block">認証番号が違います。</span> 
											<input type="button" value="認証番号確認" >
										</div>
									</div>
									<div class="form-group">
                             			 <label class="col-sm-2 col-sm-2 control-label">事業者番号</label>
                             			 <div class="col-sm-10">
                                	  <input type="text"  class="form-control" placeholder="placeholder" style="width:300px" name="company.compnum" id="compnum_id"> 
                             	 </div>
                          </div>

									  <button  class="find" style="width:100px;">探す</button>  
							</form>	

							</div>
						</div>
                  </div>
                <!-- col-lg-12--> 
                  	<!--find id END -->
                  
                
                  
                  	<!--find pw  -->
                  <div class="col-lg-12"  id="form2">
                   <div class="form-panel">
                       <div class="form-group">
                  	    	<input type="radio" id="pw_findID" name="pw_findID" class="pw_radioUser" checked>個人
                  			<input type="radio" id="pw_findID" name="pw_findID" class="pw_radioCompany">企業
                  	 </div>
                  	 <div id="pw_innerform1"><!-- 개인 -->
                  	
                  			<div class="form-group">	
                            <label class="col-sm-2 col-sm-2 control-label">メールアドレス</label>
                             <div class="col-sm-10">
                               <input type="email" class="form-control" name="applicant.applicantid" id="applicantid" placeholder="" style="width:300px">
                              <!--  <span class="help-block">존재하지 않는 아이디입니다.</span> -->
                              <br>
                              </div>
                          </div>
                                                	<div class="form-group">
                           <label class="col-sm-2 col-sm-2 control-label">電話番号</label>
                         
                            <div class="col-sm-10">
                                <input type="text"  class="form-control" placeholder="placeholder" style="width:300px" name="applicant.applicantphone" id="applicantphone"> 
                          		<span class="help-block">電話番号情報がありません。</span>
                          		 <input type="button" value="認証番号送信" class="sendphone" id="applicantpassfind">
                          </div>
                         </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">認証番号</label>
                              <div class="col-sm-10">
                                  <input type="text"  class="form-control" placeholder="SMSで届いた認証番号入力してください" style="width:300px" name="applicant.applicantfirst" id="applicantfirst"> 
                              		<span class="help-block">認証番号が違います。</span>
                              		 <input type="button" value="認証番号送信" class="sendphone">
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">性</label>
                              <div class="col-sm-10">
                                  <input type="text"  class="form-control" placeholder="placeholder" style="width:300px" name="applicant.applicantfirst" id="pw_applicantfirst"> 
                              		<!-- <span class="help-block">등록되지 않은 이름입니다.</span> -->
                              		<br>
                              </div>
                          </div>
                           <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">名</label>
                              <div class="col-sm-10">
                                  <input type="text"  class="form-control" placeholder="placeholder" style="width:300px" name="applicant.applicantlast" id="pw_applicantlast"> 
                              		<!-- <span class="help-block">등록되지 않은 이름입니다.</span> -->
                              		<span class="help-block" id="pw_result">情報がありません。</span> 
                              </div>
                          </div>
                                     <button  class="find" style="width:100px;">探す</button> 
                           
                         </div><!--pw_innerform1  -->
                         
                         
                         <!--pw_innerForm2  -->
                 <div id="pw_innerform2"><!--기업  -->
                  	
                  		<div class="form-group">	
                            <label class="col-sm-2 col-sm-2 control-label">メールアドレス</label>
                             	<div class="col-sm-10">
                               		<input type="email" class="form-control" name="company.compid" id="compid" placeholder="" style="width:300px">
                               		<!-- <span class="help-block">존재하지 않는 아이디입니다.</span> -->
                               		<br>   
                              </div>
                         </div>
                                               	<div class="form-group">
                           <label class="col-sm-2 col-sm-2 control-label">電話番号</label>
                         
                            <div class="col-sm-10">
                                <input type="text"  class="form-control" placeholder="placeholder" style="width:300px" name="applicant.applicantphone" id="applicantphone"> 
                          		<span class="help-block">電話番号情報がありません。</span>
                          		 <input type="button" value="認証番号送信" class="sendphone" id="companypassfind">
                          </div>
                         </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">認証番号</label>
                              <div class="col-sm-10">
                                  <input type="text"  class="form-control" placeholder="SMSで届いた認証番号入力してください" style="width:300px" name="applicant.applicantfirst" id="applicantfirst"> 
                              		<span class="help-block">認証番号が違います。</span>
                              		 <input type="button" value="認証番号送信" class="sendphone">
                              </div>
                          </div>
                         	<div class="form-group">
                             	<label class="col-sm-2 col-sm-2 control-label">事業者番号</label>
                             		<div class="col-sm-10">
                                		<input type="text"  class="form-control" placeholder="placeholder" style="width:300px" name="company.compnum" id="compnum_pw"> 
                            			<!-- <span class="help-block">존재하지 않는 사업자번호 입니다.</span> -->
                            			<span class="help-block" id="pw_result">情報がありません。</span>                 
                            		</div>
                            </div>
                            
                                  <button  class="find" style="width:100px;">探す</button> 
                            
                         </div><!--pw_innerform2  -->
                         
                	 </div><!--form-panel  -->
                	 
                 </div><!-- form2 -->
          	</div><!--row  -->
				
        
          	
		</section><!-- /wrapper -->
      </section><!-- /MAIN CONTENT -->

  </section>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="../assets/js/jquery.js"></script>
    <script src="../assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="../assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="../assets/js/jquery.scrollTo.min.js"></script>
    <script src="../assets/js/jquery.nicescroll.js" type="text/javascript"></script>
	<script src="../script/jquery-3.1.0.min.js" type="text/javascript"></script>

    <!--common script for all pages-->
    <script src="../assets/js/common-scripts.js"></script>

    <!--script for this page-->
    <script src="../assets/js/jquery-ui-1.9.2.custom.min.js"></script>

	<!--custom switch-->
	<script src="../assets/js/bootstrap-switch.js"></script>
	
	<!--custom tagsinput-->
	<script src="../assets/js/jquery.tagsinput.js"></script>
	
	<!--custom checkbox & radio-->
	
	<script type="text/javascript" src="../assets/js/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script type="text/javascript" src="../assets/js/bootstrap-daterangepicker/date.js"></script>
	<script type="text/javascript" src="../assets/js/bootstrap-daterangepicker/daterangepicker.js"></script>
	
	<script type="text/javascript" src="../assets/js/bootstrap-inputmask/bootstrap-inputmask.min.js"></script>
	
	
	<script src="../assets/js/form-component.js"></script>    
    
    
  <script>
      //custom select box

      jQuery(function($){
    	  
    
         /*  $('select.styled').customSelect(); */
          

		$('#form2').css("display",'none');
		
		$('.find_pw').click(function(){
			$('#form1').css("display",'none');
			$('#form2').css("display",'');
		});
		
		
		$('.find_id').click(function(){
			$('#form2').css("display",'none');
			$('#form1').css("display",'');
		});
		
		/* id 개인,기업구분 */
		$('#innerform2').css("display",'none'); 
		
		$('.radioUser').click(function(){
			$('#innerform2').css("display",'none');
			$('#innerform1').css("display",'');
		});
		
		$('.radioCompany').click(function(){
			$('#innerform1').css("display",'none');
			$('#innerform2').css("display",'');
		});
		
		
		/* password 개인,기업구분*/
		
		$('#pw_innerform2').css("display",'none'); 
		$('.help-block').css("display","none");
		
		$('.pw_radioUser').click(function(){
			/* type="pw_applicant"; */
			$('#pw_innerform2').css("display",'none');
			$('#pw_innerform1').css("display",'');
			/* 효민작업중 */
			  jQuery(function($){
			
				$('.find').click(function(){
					var applicantid= $('#applicantid').val();
					var applicantfirst= $('#pw_applicantfirst').val();
					var applicantlast= $('#pw_applicantlast').val();
					var dataResult = {"applicant.applicantid" : applicantid, "applicant.applicantfirst" : applicantfirst,"applicant.applicantlast" :applicantlast};
					$.ajax({
						url:"findApplicant",
						type:"POST",
						data:dataResult,
						datatype:"json",
						success:function(res){
							if(res.company==null){
								 $('.help-block').css("display","");
							}else{
								alert("success");
								location.href="updateApplicant";
							}
						}
					});
				});
			}); 
		});
		
		$('.pw_radioCompany').on("click",function(){
			/* type="pw_company"; */
			$('#pw_innerform1').css("display",'none');
			$('#pw_innerform2').css("display",'');
			
			 jQuery(function($){
				 $('.help-block').css("display","none");
				$('.find').click(function(){
					var compid= $('#compid').val();
					var compnum= $('#compnum_pw').val();
					var dataResult1 = {"company.compid" : compid, "company.compnum" : compnum};
					
					$.ajax({
						url:"findCompany",
						type:"POST",
						data:dataResult1,
						datatype:"json",
						success:function(res){
							if(res.company==null){
								 $('.help-block').css("display","");
							}else{
							alert("success");
							location.href="updateCompany";
							}
						}
					});
				});
			});
			 
		});

    });

  </script>

  </body>
</html>
