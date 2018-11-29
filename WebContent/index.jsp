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
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<link href="css/nivo-lightbox.css" rel="stylesheet" />
	<link href="css/nivo-lightbox-theme/default/default.css" rel="stylesheet" type="text/css" />
	<link href="css/owl.carousel.css" rel="stylesheet" media="screen" />
    <link href="css/owl.theme.css" rel="stylesheet" media="screen" />
	<link href="css/flexslider.css" rel="stylesheet" />
	<link href="css/animate.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet">
	<link href="color/default.css" rel="stylesheet">
	<link href="./assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
   

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="./script/jquery-3.1.1.min.js"></script> 
<script>
		$(function(){
			
			$("#result").css('display','none'); 
			
			$('a#company').on('click',function(){
				 $("#myModal").css("display","block");
				  $("#myModal").modal({backdrop: "static"});
				  $('#hidden').val("com");
			});
			$('a#applicant').on('click',function(){
				 $("#myModal").css("display","block");
				  $("#myModal").modal({backdrop: "static"});
				  $('#hidden').val("app");
			});
			
			$("#login").on("click", function(){
				var go;
				var id = $('#loginId').val();
				var password = $('#loginPw').val();
				var mydata;
				if($('#hidden').val()=="com"){
					go = "selectCompanyLoginID";
					mydata = {"company.compid":id,"company.comppassword":password};
					
				}else{
					go = "selectApplicantLoginID";
					mydata = {"applicant.applicantid":id,"applicant.applicantpassword":password};
				}
				$.ajax({
					url: go,
					type:"POST",
					data: mydata,
					dataType:'json',
					success:function(response){
							if($('#hidden').val()=="com"){
								if(response.company==null){
									$('#result').css("display",'block');
								}else{
									location.href="companyView.action";
								}
							}else{
								if(response.applicant==null){
									$('#result').css("display",'block');	
								}else{								
									location.href="applicantView.action";	
								}
							}
						}				
				});
			});	
			
			
			$("#join").on("click", function(){
				/* alert("injoin");
				
				alert($('#hidden').val()); */
				
				if($('#hidden').val()=="com"){
					location.href="joinformComp.action";
				}else{
					 location.href="joinformApplicant.action";
				} 
			});
		
		});
</script>

<style>
.font_style{
	font-family:MS PGothic; 		
}

#join{
	color:#DF4020; 
	cursor: pointer; 
	font-weight: bold; 
	font-family:MS PGothic;
	text-align:center;
}
</style>

</head>
<body>

	<section id="intro" class="home-slide text-light">

		<!-- Carousel -->
    	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
			  	<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
			</ol>
			<!-- Wrapper for slides -->
			<div class="carousel-inner">
			    <div class="item active">
			    	<img src="new_css_js/img/img03.jpg" alt="First slide">
                    <!-- Static Header -->
                    <div class="header-text hidden-xs">
                        <div class="col-md-12 text-center">
                            <h2>
                            	<span>Welcome to LinkInside</span>
                            </h2>
                            <br>
                            <h3>
                            	<span></span>
                            </h3>
                            <br>
                            <div class="">
                                 <a class="btn btn-theme btn-sm btn-min-block"  id="company">企業会員</a><a class="btn btn-theme btn-sm btn-min-block" href="#works" id="applicant">個人会員</a></div>
                        </div>
                    </div><!-- /header-text -->
			    </div>
			    <div class="item">
			    	<img src="new_css_js/img/img02.jpg" alt="Second slide">
			    	<!-- Static Header -->
                    <div class="header-text hidden-xs">
                        <div class="col-md-12 text-center">
                            <h2>
                                <span>Welcome to LinkInside</span>
                            </h2>
                            <br>
                            <h3>
                            	<span><!-- 新しい概念の求人就職サイトLinklnsideにお越しくださいましてありがとうございます。 --></span>
                            </h3>
                            <br>
                            <div class="">
                                 <a class="btn btn-theme btn-sm btn-min-block" id="company">企業会員</a><a class="btn btn-theme btn-sm btn-min-block" href="#works" id="applicant">個人会員</a></div>
                        </div>
                    </div><!-- /header-text -->
			    </div>
			</div>
			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
		    	<span class="glyphicon glyphicon-chevron-left"></span>
			</a>
			<a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
		    	<span class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div><!-- /carousel -->

	</section>
	<!-- /Section: intro -->

	<!-- Navigation -->
	<div id="navigation">
		<nav class="navbar navbar-custom" role="navigation">
			<div class="container">
				<div class="row">
					<div class="col-md-2">
						<div class="site-logo">
							<a href="index" class="brand"><img alt="" src="">LinkInside</a>
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
								<li class="active"><a href="#intro"
									style="font-size: 17px;">Home</a></li>
								<li><a href="#about" style="font-size: 17px;">About Us</a></li>
								<li><a href="#Service" style="font-size: 17px;">How to
										use</a></li>
								<li><a href="#Products" style="font-size: 17px;">Products</a></li>

							</ul>
						</div>
						<!-- /.Navbar-collapse -->

					</div>
				</div>
			</div>
			<!-- /.container -->
		</nav>
	</div>
	<!-- /Navigation -->

	<!-- Section: about -->
    <section id="about" class="home-section color-dark bg-white">
		<div class="container marginbot-50">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow flipInY" data-wow-offset="0" data-wow-delay="0.4s">
					<div class="section-heading text-center">
					<h2 class="h-bold">About</h2>
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
			    <img src="new_css_js/img/about_img.jpg" alt="" class="img-responsive"  style="height:380px;"/>
      
           </div>
			
            <div class="col-md-6">		
			<p class="content">
			正確な性格検査を通じて自分に合う業務を探してみませんか。<br>
			LinkInsideは性格に合わせて業務を探してくれる新しい概念のマッチングサービスを提供します。
			</p>			
			<div class="progress progress-striped active">
			  <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
				40% - 誠実性
			  </div>
			</div>
			<div class="progress progress-striped active">
			  <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
				20% - 神経性
			  </div>
			</div>
			<div class="progress progress-striped active">
			  <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
				60% - 親和性
			  </div>
			</div>
			<div class="progress progress-striped active">
			  <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
				80% - 外向性
			  </div>
			</div>
			<div class="progress progress-striped active">
			  <div class="progress-bar progress-bar-danger2" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width: 70%">
				70% - 開放性
			  </div>
			</div>

            </div>
		

        </div>		
		</div>

	</section>
	<!-- /Section: about -->
	
	
	<!-- Section: works -->
    <section id="Service" class="home-section color-dark text-center bg-white">
		<div class="container marginbot-10">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow flipInY" data-wow-offset="0" data-wow-delay="0.4s">
					<div class="section-heading text-center">
					<h2 class="h-bold">How to use</h2>
					<div class="divider-header"></div>
					<p class="content"> 下記のような方法でご利用いただけます。</p>
					</div>
					 
					</div>
				</div>
			</div>

		</div>

		<div class="container">
			<div class="row">
                <div class="col-sm-12 col-md-12 col-lg-12" >
                <img src="new_css_js/img/using1.jpg" class="img-responsive" alt="img" style="width:100%; height:350px;">
					<div class="wow bounceInUp" data-wow-delay="0.4s">
					</div>
                </div>
            </div>
		</div>

	</section>
	<!-- /Section: works -->
	
	<!-- Section: services -->
    <section id="Products" class="home-section color-dark bg-gray">
		<div class="container marginbot-50">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow flipInY" data-wow-offset="0" data-wow-delay="0.4s">
					<div class="section-heading text-center">
					<h2 class="h-bold">Products</h2>
					<div class="divider-header"></div>
					<p class="content"> LinkInsideプロジェクトチームを紹介します。</p>
					</div>
					</div>
				</div>
			</div>

		</div>

		<div class="text-center">
		<div class="container">

        <div class="row">
            <div class="col-md-3">
				<div class="wow fadeInLeft" data-wow-delay="0.2s">
                <div class="service-box">
					<div class="service-icon">
					<img alt="" src="new_css_js/img/saya.jpg" style="height: 200px;border: none;">	
					</div>
					<div class="service-desc">						
						<h5>イ・サヤ</h5>
						<!-- <p>
						Ad denique euripidis signiferumque vim, iusto admodum quo cu. No tritani neglegentur mediocritatem duo.
						</p> -->
					
					</div>
                </div>
				</div>
            </div>
			<div class="col-md-3">
				<div class="wow fadeInUp" data-wow-delay="0.2s">
                <div class="service-box">
					<div class="service-icon">
					<img alt="" src="new_css_js/img/seongjeon.jpg" style="height: 200px;border: none;">
					<!-- 	<span class="fa fa-camera fa-5x"></span>  -->
					</div>
					<div class="service-desc">
						<h5>アン・ソンゾン</h5>
						<!-- <p>
						Ad denique euripidis signiferumque vim, iusto admodum quo cu. No tritani neglegentur mediocritatem duo.
						</p>
					 -->
					</div>
                </div>
				</div>
            </div>
			<div class="col-md-3">
				<div class="wow fadeInUp" data-wow-delay="0.2s">
                <div class="service-box">
					<div class="service-icon">
						<img alt="" src="new_css_js/img/Jeong.jpg" style="height: 200px;border: none;">
						<!-- <span class="fa fa-laptop fa-5x"></span>  -->
					</div>
					<div class="service-desc">
						<h5>ジョン・グァンジン</h5>
						<!-- <p>
						Ad denique euripidis signiferumque vim, iusto admodum quo cu. No tritani neglegentur mediocritatem duo.
						</p> -->
						
					</div>
                </div>
				</div>
            </div>
			<div class="col-md-3">
				<div class="wow fadeInRight" data-wow-delay="0.2s">
                <div class="service-box">
					<div class="service-icon">
						<img alt="" src="new_css_js/img/hyom.jpg" style="height: 200px;">
					<!-- 	<span class="fa fa-mobile-phone fa-5x"></span>  -->
					</div>
					<div class="service-desc">
						<h5>ジャン・ヒョミン</h5>
						<!-- <p>
						Ad denique euripidis signiferumque vim, iusto admodum quo cu. No tritani neglegentur mediocritatem duo.
						</p> -->
					</div>
                </div>
				</div>
            </div>
        </div>		
		</div>
		</div>
	</section>
	<!-- /Section: services -->
	
	
	
	 <!-- Modal -->
    <!--   <form class="form-login"> -->
      <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
          <div class="modal-dialog">
              <div class="modal-content">
                  <div class="modal-header">
                      <button type="button" class="close" id="closex" data-dismiss="modal" aria-hidden="true">&times;</button>
                      <h4 class="modal-title">LOGIN</h4>
                  </div>
                  <div class="modal-body">
                      
		        <!-- <h2 class="form-login-heading">Sign in Now</h2> -->
		        <div class="login-wrap">
		            <input type="text" class="form-control" placeholder="User ID" autofocus id="loginId" >
		            <br>
		            <input type="password" class="form-control" placeholder="Password" id="loginPw" >
		            <br>
		            <span id="result">&nbsp;&nbsp;IDまたはパスワードが違います。</span>
		            <button class="btn btn-theme2 btn-block font_style" type="submit" id="login"><i class="fa fa-lock" >ログイン</i> </button>
		             <label class="checkbox">
		                <span class="pull-right">
		                <input type="hidden" id="hidden">
		                    <a data-toggle="modal" href="member/findID_PW" class="madal-atag font_style" >パスワード忘れた方はこちら</a>
		
		                </span>
		            </label>
		            <hr>
		           
		            <div class="registration font_style"style="text-align:center;"> はじめの方はこちらから登録してください<br/>
		                <a id="join" class="madal-atag" >今すぐメールアドレス登録</a>
		            </div>
		
		        </div>
		

                  </div>
                  <div class="modal-footer">
                      <button data-dismiss="modal" class="btn btn-default2" type="button" id="close_btn">Cancel</button>
                    <!--   <button class="btn btn-theme" type="button">Submit</button> -->
                  </div>
              </div>
          </div>
      </div>
     <!--  </form> -->
      <!-- modal -->

    
    <!-- Footer -->
    <footer>
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-md-offset-3">
					
					<div class="text-center">
						<a href="#intro" class="totop"><i class="fa fa-angle-up fa-3x"></i></a>
						<p>&copy; LinkInside- All Rights Reserved</p>
                        <div class="credits">
                            <!-- 
                                All the links in the footer should remain intact. 
                                You can delete the links only if you purchased the pro version.
                                Licensing information: https://bootstrapmade.com/license/
                                Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Shuffle
                            -->
                            <a href="https://bootstrapmade.com/">Free Bootstrap Themes</a> by <a href="https://bootstrapmade.com/">BootstrapMade</a>
                        </div>
					</div>
				</div>
			</div>	
		</div>
	</footer>
    
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    

	
</body>
</html>