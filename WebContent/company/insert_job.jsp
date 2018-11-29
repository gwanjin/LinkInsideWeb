<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="assets/js/bootstrap-datepicker/css/datepicker.css" />
    <link rel="stylesheet" type="text/css" href="assets/js/bootstrap-daterangepicker/daterangepicker.css" />
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />    
    <!-- Custom styles for this template -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    
<script src="script/jquery-ui.min.js"></script>
<script src="script/jquery-3.1.0.min.js" type="text/javascript"></script>
<script type="text/javascript">
   $(function(){
        var skillIndex;
        var certIndex;
        
      $.ajax({
            url: "bringIndex",
             dataType: "json",
             success: function(rsp){ 
                /* alert("aaa"); */
               skillIndex = $.parseJSON(rsp.jsonskillindex);
               certIndex = $.parseJSON(rsp.jsoncertindex);
               /* alert(skillIndex);
               alert(certIndex); */
             },
             complete: function(){
                $( ".skillIndex" ).autocomplete({
                  source: skillIndex
                });
                
                $(".certIndex").autocomplete({
                   source: certIndex
                })
             }
         });
         
      $('#plus1').on('click', function(){
         $('#table1').append('<tr><td><input type="text" class="form-control skillIndex" name="skills['+$('#table1 tr').last().index()+'].skillname"></td>'+
         '<td><input type="text" class="form-control" maxlength="1" name="skills['+$('#table1 tr').last().index()+'].skilllevel"></td></tr>');
         /*  alert("plus!");
          alert(skillIndex); */
         $( ".skillIndex" ).autocomplete({
               source: skillIndex
             });
      });
      
      $('#minus1').on('click', function(){
          if($('#table1 tr').last().index()>0){
            $('#table1 tr').last().remove(); 
         }
      });
      
      $('#plus2').on('click', function(){
         $('#table2').append('<tr><td><input type="text" class="form-control certIndex" name="skills['+$('#table2 tr').last().index()+'].certname"></td>'+
         '<td><input type="text" class="form-control" name="skills['+$('#table2 tr').last().index()+'].certfrom"></td></tr>');
          
          $(".certIndex").autocomplete({
             source: certIndex
          })
      });
      $('#minus2').on('click', function(){
          if($('#table2 tr').last().index()>1){
            $('#table2 tr').last().remove(); 
         }
      });
      
       $('#acquisition').datepicker({
            changeMonth: true, 
             changeYear: true,
             dayNames: ['月曜日', '火曜日', '水曜日', '木曜日', '金曜日', '土曜日', '日曜日'],
             dayNamesMin: ['月', '火', '水', '木', '金', '土', '日'], 
             dateFormat: "yy-mm-dd"
         });
       
      
          var dateFormat = "mm/dd/yy",
            from = $( "#startday" )
              .datepicker({
                defaultDate: "+1w",
                changeMonth: true,
                dateFormat: "yy-mm-dd"
              })
              .on( "change", function() {
                to.datepicker( "option", "minDate", getDate( this ) );
              }),
            to = $( "#endday" ).datepicker({
              defaultDate: "+1w",
              changeMonth: true,
              dateFormat: "yy-mm-dd"
            })
            .on( "change", function() {
              from.datepicker( "option", "maxDate", getDate( this ) );
            });
       
          function getDate( element ) {
            var date;
            try {
              date = $.datepicker.parseDate( dateFormat, element.value );
            } catch( error ) {
              date = null;
            }
       
            return date;
          }
          $("button.btn-lg").on("click", function(){
               
             $("#myModal").css("display","block");
            $("#myModal").modal({backdrop: "static"}); 
            
               
         });
          
          $("button.btn-default2").on("click",function(){
             if($(this).attr("id") == 'yes_btn'){
                $("input#str").val("add");
             }else{
                $("input#str").val("no");
             }
            $("form#myform").submit();
          });
   });
</script>
  </head>

  <body>
   <section id="intro" class="home-slide text-light">
   </section>
   <%@include file="company_aside.jsp" %>
   
   
   <section id="Service" class="home-section3 color-dark text-center bg-white">
      <div class="container">
         <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
               <div class="wow flipInY" data-wow-offset="0" data-wow-delay="0.4s">
               <div class="section-heading text-center">
               <h2 class="h-bold">post jobs</h2>
               <div class="divider-header"></div>
               <p class="content">企業の詳細情報を入力してください。</p>
               </div>
                
               </div>
            </div>
         </div>

      </div>

      <div class="container"  >
         <div class="row">
                      <form class="form-horizontal style-form" id="myform" method="post" action="jobInsert">
                         <input type="hidden" name="str" id="str"/>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">業務名</label>
                              <div class="col-sm-10">
                                  <input type="text" class="form-control" name="job.jobtitle">
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">業務詳細情報</label>
                              <div class="col-sm-10">
                                  <textarea class="form-control" rows="4" cols="86%" name="job.jobdesc"></textarea>
                                  <!-- <span class="help-block">A block of help text that breaks onto a new line and may extend beyond one line.</span> -->
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">採用人数</label>
                              <div class="col-sm-10">
                                  <input type="text" class="form-control round-form" name="job.jobto">
                              </div>
                          </div>
                         
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">専攻</label>
                              <div class="col-sm-10">
                                  <input class="form-control" id="disabledInput" type="text" name="job.edumajor">
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">学歴</label>
                              <div class="col-sm-10">
                                  <select name="job.edulevel" class="form-control">
										<option value="1">高専卒</option>
										<option value="2">専門卒</option>
										<option value="3">短大卒</option>
										<option value="4">大学卒</option>
										<option value="5">大学院卒</option>
									</select>
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">経歴分野</label>
                              <div class="col-sm-10">
                                  <input type="text"  class="form-control" placeholder="" name="job.exparea">
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-lg-2 col-sm-2 control-label">経歴期間</label>
                              <div class="col-lg-10">
                              	<select name="job.expduration" class="form-control">
									<option value="1">1ヶ月</option>
									<option value="2">2ヶ月</option>
									<option value="3">3ヶ月</option>
									<option value="4">4ヶ月</option>
									<option value="5">5ヶ月</option>
									<option value="10">6月~1年</option>
									<option value="20">1年~2年</option>
									<option value="28">2年以上</option>
								</select>
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-lg-2 col-sm-2 control-label">連度</label>
                              <div class="col-lg-10">
                                  <select name="job.explevel" class="form-control">
									<option value="1">A</option>
									<option value="2">B</option>
									<option value="3">C</option>
									<option value="4">D</option>
								</select>
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-lg-2 col-sm-2 control-label" >募集期間</label>
                              <div class="col-lg-4">
                                  <input type="text"  placeholder="開始日" name="job.jobstart" id="startday"> &nbsp;&nbsp; ~ &nbsp;&nbsp;
                                  <input type="text"   placeholder="終了日" name="job.jobend" id="endday">
                              </div>
                          </div>
                          <div class="form-group">
                             <label class="col-sm-2 col-sm-2 control-label">要求スキル</label><br>
                             <div class="col-lg-10">
                     <table id="table1" style="border-spacing:10px; border-collapse: separate;">
                        <tr>
                           <td><input type="text" placeholder="スキル名" class="form-control skillIndex" name="skills[0].skillname"></td> 
                           <td><input type="text" placeholder="スキルレベル" class="form-control" maxlength="1" name="skills[0].skilllevel"></td>
                        </tr>
                     </table>
                        <input type="button" value="+" id="plus1">  &nbsp;&nbsp;
                        <input type="button" value="-" id="minus1">
                     </div>
                   </div>
                    <div class="form-group">
                       <label class="col-sm-2 col-sm-2 control-label" >要求資格</label><br>
                        <div class="col-lg-10">
                        <table id="table2" style="border-spacing:10px; border-collapse: separate;">
                           <tr>
                              <td><input type="text" placeholder="資格名" class="form-control certIndex" name="skills[0].certname"></td>
                              <!-- <td><input type="text" placeholder="取得日" class="form-control" name="skills[0].certdate" id="acquisition"></td> -->
                              <td><input type="text" placeholder="発給機関" class="form-control" name="skills[0].certfrom"></td>
                           </tr>
                        </table>
                        <input type="button" value="+" id="plus2">  &nbsp;&nbsp;
                        <input type="button" value="-" id="minus2">
                        </div>
                      </div>
            </form>
            
          </div>
      </div>

      <div style="text-align:center;">
         <button class="btn-primary btn-lg" id="next">NEXT</button>
      </div>
      
      </section>
         
              <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" id="closex" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title">追加登録</h4>
                        </div>
                        <div class="modal-body">
                    <div class="login-wrap">
                        <span id="result" style="text-align:center;">追加質問を登録しますか？<br>
                                       		この質問は自己紹介書に適用されます。                  
                        </span>
                    </div>
            
      
                        </div>
                        <div class="modal-footer">
                             <button data-dismiss="modal" class="btn btn-default2" type="button" id="yes_btn">yes</button>
                            <button data-dismiss="modal" class="btn btn-default2" type="button" id="no_btn">no</button>
                          <!--   <button class="btn btn-theme" type="button">Submit</button> -->
                        </div>
                    </div>
                </div>
            </div>
           <!--  </form> -->
         

   
     
      <!--footer start-->
      <%@include file="company_footer.jsp" %>
      <!--footer end-->
 

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