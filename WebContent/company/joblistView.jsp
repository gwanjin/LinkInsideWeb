<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
<link href="assets/css/bootstrap.css" rel="stylesheet">
<!--external css-->
<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css"
   href="assets/js/bootstrap-datepicker/css/datepicker.css" />
<link rel="stylesheet" type="text/css"
   href="assets/js/bootstrap-daterangepicker/daterangepicker.css" />

<!-- Custom styles for this template -->
<link href="assets/css/style.css" rel="stylesheet">
<link href="assets/css/style-responsive.css" rel="stylesheet">
<style type="text/css">
#row1, #row2 {
   width: 95%;
   margin-left: 30px;
}

.text-left{
   text-align: left;
}

</style>
</head>

<body>
   <section id="intro" class="home-slide text-light">
   </section>
   <%@include file="company_aside.jsp"%>
      
       <section id="Service" class="home-section3 color-dark text-center bg-white">
      <div class="container marginbot-10">
         <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
               <div class="wow flipInY" data-wow-offset="0" data-wow-delay="0.4s">
               <div class="section-heading text-center">
               <h2 class="h-bold">applicant List</h2>
               <div class="divider-header"></div>
               <p class="content">現在、進行中の求人情報と志願者現況</p>
               </div>
                
               </div>
            </div>
         </div>

      </div>

      <div class="container">
         <div class="row">
                <div class="row mt" id="row1">
                  <div class="col content-panel">
                     <table class="table table-striped table-advance table-hover">
                        <hr />
                        <thead>
                           <tr>
                              <th style="width: 16%;"><i class="fa fa-bullhorn"></i>志望者アイディー</th>
                              <th style="width: 16%;"> スキル マッチング率</th>
                              <th style="width: 16%;"> 文化 マッチング率 </th>
                              <th style="width: 16%;"> 職務 マッチング率 </th>
                              <th style="width: 16%;"> マッチング率  </th>
                              <th style="width: 16%;"><i class=" fa fa-pencil"></i> 備考</th>
                           </tr>
                        </thead>
                        <tbody>
                           <s:if test="%{matching.size() == 0}">
                              <tr>
                                 <td colspan="6" style="text-align: center;">  登録した情報がありません。</td>
                              </tr>
                           </s:if>
                           <s:else>
                              <s:iterator value="matching" status="mystatus">
                                 <tr class="text-left">
                                    <td><a href="#" style="cursor: pointer;" data-toggle="modal" data-target="#myModal" title="<s:property value="jobid" />" id="<s:property value="applicantid" />" class="clickJobId"> <s:property value="applicantid" /></a></td>
                                    <td><s:property value="skillper"/>%</td>
                                    <td><s:property value="culper" />%</td>
                                    <td><s:property value="perper" />%</td>
                                    <td><s:property value="totalper" />%</td>
                                    <td>
                                       <s:if test='status == "B"'>
                                          <button class="btn btn-success btn-xs pass" title="<s:property value="jobid" />" id="<s:property value="applicantid" />">
                                          <i class="fa fa-check"></i>合格
                                          </button>
                                          <button class="btn btn-danger btn-xs fail" title="<s:property value="jobid" />"  id="<s:property value="applicantid" />">
                                             <i class="fa fa-trash-o "></i>不合格
                                          </button>
                                       </s:if>
                                       <s:elseif test='status == "AP"'>
                                          <button class="btn btn-success btn-xs">
                                          	   合格
                                          </button>
                                       </s:elseif>
                                       <s:else>
                                          <button class="btn btn-danger btn-xs">
											 不合格
                                          </button>
                                       </s:else>
                                    </td>
                                 </tr>
                              </s:iterator>
                           </s:else>
                        </tbody>
                     </table>
                  </div>
                  <!-- /content-panel -->
               </div>
            </div>
      </div>
		<input type=button value="戻る" onClick="history.back();" style="margin-top: 15px;">
   </section>


      <div id="myModal" class="modal fade container" style="background-color: white;">
      
         
      </div> 
      <!--main content end-->
      <!--footer start-->
      <%@include file="company_footer.jsp"%>
      <!--footer end-->


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

   <!--script for this page-->
   <script src="assets/js/jquery-ui-1.9.2.custom.min.js"></script>

   <!--custom checkbox & radio-->

   <script type="text/javascript" src="assets/js/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
   <script type="text/javascript" src="assets/js/bootstrap-daterangepicker/date.js"></script>
   <script type="text/javascript" src="assets/js/bootstrap-daterangepicker/daterangepicker.js"></script>
   <script type="text/javascript" src="assets/js/bootstrap-inputmask/bootstrap-inputmask.min.js"></script>


   <script src="assets/js/form-component.js"></script>
   
<script type="text/javascript">
   $('.clickJobId').on('click', function() {
      var applicantid = $(this).attr("id");
      var jobid = $(this).attr("title");
      $.ajax({
         type : 'post',
         url : 'findApplicantDetails.action',
         data : {"applicantid" : applicantid, "jobid":jobid},
         dataType : 'json',
         success : function(resp) {
            $("#myModal").children().remove();
            
      var base = '<div class="form-panel" style="padding-left: 0; padding-right: auto;">'
               +'<h6 class="mb"><button type="button" class="close" data-dismiss="modal">'
               +'<span aria-hidden="true">×</span><span class="sr-only">Close</span></button>'
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
               +'</div><div class="form-group"><label class="col-sm-2 control-label">学位</label><div class="col-sm-10">   <input type="text" class="form-control round-form modal_read" id="diploma" readonly="readonly">'
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
               +'</div></div></div></h6></div>';
            
            
            
            if((resp.selfList).length != 0){
               var header = '<div id="carousel-example-generic" class="carousel slide row" data-ride="carousel">'
                           +'<ol class="carousel-indicators" id="carousel-indicators">'
                           +'<li data-target="#carousel-example-generic" data-slide-to="0" class="active" style="background-color:black;"></li>';
                           for(var i=1; i<=(resp.selfList).length; i++){
                              header+= '<li data-target="#carousel-example-generic" data-slide-to="' + i +'" style="background-color:black;"></li>';
                           }
                           header+='</ol>';
               
               var self = header + '<div class="carousel-inner" id="carousel-inner">'
                        +'<div class="item active">'
                           +base 
                        + '</div>';
                     
            var body =  "";
                     for(var i=0; i<(resp.selfList).length; i++){
                        body += '<div class="item" style="height:800px; text-align:center;">'
                              +'<h6 style="text-align:right"><button type="button" class="close" data-dismiss="modal" style="margin-right:50px;">'
                              +'<span aria-hidden="true">×</span><span class="sr-only">Close</span></button></h6>'
                              + '<h3>'+ resp.selfList[i].question +'</h3>'
                              +'<textarea class="content" style="width:90%; height:600px; resize:none;" readonly="readonly">'
                              + resp.selfList[i].answer+'</textarea>'
                              +'</div>';
                     }
                     
                     
               
                     
            self += body + ' <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">'
                      +'<span class="glyphicon glyphicon-chevron-left" ></span></a>'
                     +'<a class="right carousel-control" href="#carousel-example-generic" data-slide="next">'
                      +'<span class="glyphicon glyphicon-chevron-right"></span></a></div>';
               
               $("#myModal").append(self);
               
            }else{
               $("#myModal").append(base);
            }
            $.each(resp.obj[0], function(i, value){//Applicant VO
               $('#name').val(value.applicantfirst);
               $('#phone').val(value.applicantphone);
               $('#bday').val(value.applicantbday);
               $('#gender').val(value.applicantgender);
            });
            $.each(resp.obj[1], function(i, value){//Education VO
               $('#uniname').val(value.name);
               $('#major').val(value.major);
               $('#diploma').val(value.diploma);
               $('#graduDate').val(value.enddate);
            });
            $.each(resp.obj[2], function(i, value){//Experience VO
               $('#workname').val(value.workname);
               $('#worktitle').val(value.workjobtitle);
               var start = new Date(value.startdate);
               var end = new Date(value.enddate);
               $('#period').val(value.enddate+" ~ "+value.startdate);
            });
            $.each(resp.obj[3], function(i, value){//Skills VO
               $('#skillname').val(value.skillname);
               $('#skilllevel').val(value.skilllevel);
               $('#certname').val(value.certname);
               $('#certdate').val(value.certdate);
            });
         }
      });
   });
   
   $(".pass").on('click',function(){
      if(confirm("合格ですか?")){
         var jobid = $(this).attr("title");
         var applicantid = $(this).attr("id");
         
         var passornot = 'pass';
         $.ajax({
            type : 'post',
            url : 'updateStatus',
            data : {'jobid': jobid,'applicantid':applicantid,'passornot':passornot},
            dataType : 'json',
            success : function(reponse){
            }
         });
         $(this).parent().children().eq(1).remove();
         $(this).off('click'); 
      }
   });
   $(".fail").on('click',function(){
      if(confirm("不合格ですか?")){
         var jobid = $(this).attr("title");
         var applicantid = $(this).attr("id");
         /* alert(jobid);
         alert(applicantid); */
         var passornot = 'fail';
         $.ajax({
            type : 'post',
            url : 'updateStatus',
            data : {'jobid': jobid,'applicantid':applicantid,'passornot':passornot},
            dataType : 'json',
            success : function(reponse){
            }
         });
         $(this).parent().children().eq(0).remove();
         $(this).off('click'); 
      }
   });
</script>
<script src="new_css_js/js/wow.min.js"></script>
<script src="new_css_js/js/custom.js"></script>
</body>
</html>