<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
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


<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="script/jquery-3.1.0.min.js" type="text/javascript"></script>
<script type="text/javascript">
	$(function(){
		var index = 1;
		
		$('#plus1').on('click', function(){
			$('#table1').append('<tr><td style="font-size: medium;" name="selfPromotion['+$('#table1 tr').last().index()+'].qnumber">質問'+(++index)+'</td>'+
				'<td><input type="text" class="form-control" name="selfPromotion['+$('#table1 tr').last().index()+'].question"></td>'
				+'<td><input type="text" class="form-control" name="selfPromotion['+$('#table1 tr').last().index()+'].mintext"></td>'
				+'<td><input type="text" class="form-control" name="selfPromotion['+$('#table1 tr').last().index()+'].maxtext"></td>'
				+'</tr>');
			
		});
		
		$('#minus1').on('click', function(){
			 if($('#table1 tr').last().index()>1){
				$('#table1 tr').last().remove();
				--index;
			}
		});
		
		
	});
</script>
  </head>

  <body>
  	<section id="intro" class="home-slide text-light">
	</section>
	<%@include file="company_aside.jsp" %>
	
	
	<section id="Service" class="home-section3 color-dark text-center bg-white">
		<div class="container marginbot-10">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow flipInY" data-wow-offset="0" data-wow-delay="0.4s">
					<div class="section-heading text-center">
					<h2 class="h-bold">追加質問登録</h2>
					<div class="divider-header"></div>
					<p class="content"> 下記の質問は志願者の自己紹介書に適用されます。</p>
					</div>
					 
					</div>
				</div>
			</div>

		</div>


	
		<div class="container">
			<div class="row">
                <form class="form-horizontal style-form" method="post" action="selfPromotionInsert">
                          <div class="form-group">
                       		<div class="col-sm-10">
							<table id="table1" style="width:100%; border-spacing:10px; border-collapse: separate;" >
								<tr>
									<th style="width:10%;"><h4 class="mb"></h4></th>
									<th style="width:70%; text-align: center;"><h5 >質問内容</h5></th>
								</tr>
								<tr>
									<td style="font-size: medium;" name="selfPromotion[0].qnumber">質問1</td>
									<td><input type="text" class="form-control" name="selfPromotion[0].question" placeholder=""></td>
									<td><input type="text" class="form-control" name="selfPromotion[0].mintext" placeholder="最小文字数" style="width:100px;"></td>
									<td><input type="text" class="form-control" name="selfPromotion[0].maxtext" placeholder="最大文字数"  style="width:100px;"></td>
								</tr>
							</table>
							</div>
							<div class="col-sm-10" style="text-align: right; margin-top: 10px;">
							<input type="button" value="+" id="plus1"> &nbsp;&nbsp;
								<input type="button" value="-" id="minus1">
							</div>
						 </div>
							 <div style="text-align:center;">
							 	<button class="btn-primary btn-lg" id="submit">登&nbsp;&nbsp;録</button>
							 </div>
						</form>
            </div>
		</div>

	</section>
     
    <%@include file="company_footer.jsp" %>
      

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
   
   <script type="text/javascript" src="assets/js/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
   <script type="text/javascript" src="assets/js/bootstrap-daterangepicker/date.js"></script>
   <script type="text/javascript" src="assets/js/bootstrap-daterangepicker/daterangepicker.js"></script>
   
   <script type="text/javascript" src="assets/js/bootstrap-inputmask/bootstrap-inputmask.min.js"></script>
   
   
   <script src="assets/js/form-component.js"></script>    
     <script>
      //custom select box

      $(function(){
          $('select.styled').customSelect();
      });

  </script>
	<script src="new_css_js/js/wow.min.js"></script>
    <script src="new_css_js/js/custom.js"></script>
    
  </body>
</html>
