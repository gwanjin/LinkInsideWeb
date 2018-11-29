<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>jQuery UI Autocomplete - Default functionality</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  
  $( function() {
	  var skillIndex;
	  var certIndex;
	  alert("asdfdsfsda");
	  
	$.ajax({
			url: "bringIndex",
    		dataType: "json",
    		success: function(rsp){ 
    			alert("aaa");
				skillIndex = $.parseJSON(rsp.jsonskillindex);
				certIndex = $.parseJSON(rsp.jsoncertindex);
				alert(skillIndex);
				alert(certIndex);
    		},
    		complete: function(){
			    $( ".skillIndex" ).autocomplete({
			      source: skillIndex
			    });
			    
			    $(".certIndex").autocomplete({
			    	source: certIndex
			    })
    		}
		})
  });
  
      
  </script>
</head>
<body>
 
<div class="ui-widget">
  <label for="skillIndex">Skill: </label>
  <input id="skillIndex" class="skillIndex">
  <label for="certIndex">Certificate: </label>
  <input id="certIndex" class="certIndex">
</div>

<form action="updateStatus">
<input type="text" name="applicantid" value="aa@gmail.com"/>
<input type="text" name="jobid" value="aa@gmail.com"/>
<input type="text" name="passornot" value="pass"/>
<input type="submit"/>
</form>
 
 
</body>
</html>