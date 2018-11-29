/**
 * 
 */

$(function(){
	var extraversion = 0, emotional = 0, openness = 0, conscientiousness = 0, agreeableness = 0;
	
	
	var nowPage = 0;
	$("div#page"+nowPage).css("display", "");
	$("div#page"+nowPage).append('<div style="margin-top:20px">1 / 5&nbsp;&nbsp;<button type="button" class="btn btn-success" id="next">Next</button></div>');
	
	$("div#innerLine").on("click", "button.btn", function(){
		if($(this).attr("id") == "prev"){
			$("div#page"+nowPage).css("display", "none");
			nowPage -= 10;
			$("div#page"+nowPage).css("display", "");
			$(this).parent().remove();
			var insertValue = "";
			
			if(nowPage > 0 && nowPage < 40){
				insertValue += '<div style="margin-top:20px"><button type="button" class="btn btn-warning" id="prev">Previous</button>&nbsp;&nbsp;';
				insertValue += (nowPage+10)/10 + ' / 5';
				insertValue += '&nbsp;&nbsp;<button type="button" class="btn btn-success" id="next">Next</button></div>';
			}else if(nowPage == 0){
				insertValue += '<div style="margin-top:20px">';
				insertValue += (nowPage+10)/10 + ' / 5';
				insertValue += '&nbsp;&nbsp;<button type="button" class="btn btn-success" id="next">Next</button></div>';
			}
			
			$("div#page"+nowPage).append(insertValue);
			var position=$('#about').offset(); // 위치값
			$('html,body').animate({scrollTop:position.top},100); // 이동
			
		}else if($(this).attr("id") == "next"){
			
			for(var i=nowPage; i<nowPage+10; i++){
				$('h6#ques'+i).css("color","");
				if($(':radio[id=answ'+i+']:checked').val() == null){
					$('h6#ques'+i).css("color","red");
					if(i==0)
						var quesPosition=$('#about').offset(); // 위치값
					else
						var quesPosition=$('#ques'+(i-1)).offset(); // 위치값
					
					$('html,body').animate({scrollTop:quesPosition.top},100); // 이동
					alert("全部　答えてください。");
					return false;
				}
			}
			
			
			$("div#page"+nowPage).css("display", "none");
			nowPage += 10;
			$("div#page"+nowPage).css("display", "");
			$(this).parent().remove();
			var insertValue = "";
			
			if(nowPage > 0 && nowPage < 40){
				insertValue += '<div style="margin-top:20px"><button type="button" class="btn btn-warning" id="prev">Previous</button>&nbsp;&nbsp;';
				insertValue += (nowPage+10)/10 + ' / 5';
				insertValue += '&nbsp;&nbsp;<button type="button" class="btn btn-success" id="next">Next</button></div>';
			}else if(nowPage == 40){
				insertValue += '<div style="margin-top:20px"><button type="button" class="btn btn-warning" id="prev">Previous</button>&nbsp;&nbsp;';
				insertValue += (nowPage+10)/10 + ' / 5';
				insertValue += '&nbsp;&nbsp;<button type="button" class="btn btn-danger" id="finish">Finish</button></div></div>';
			}
			
			$("div#page"+nowPage).append(insertValue);
			var position=$('#about').offset(); // 위치값
			$('html,body').animate({scrollTop:position.top},100); // 이동
			
		}else if($(this).attr("id") == "finish"){
			
			for(var i=nowPage; i<nowPage+10; i++){
				$('h6#ques'+i).css("color", "");
				if($(':radio[id=answ'+i+']:checked').val() == null){
					$('h6#ques'+i).css("color","red");
					if(i==0)
						var quesPosition=$('#about').offset(); // 위치값
					else
						var quesPosition=$('#ques'+(i-1)).offset(); // 위치값
					
					$('html,body').animate({scrollTop:quesPosition.top},100); // 이동
					alert("全部　答えてください。");
					return false;
				}
			}
			
			for(var j = 0; j < 50; j++){
				if($('h6#ques'+j).attr("title") == "Extraversion"){
					extraversion += Number($(':radio[id=answ'+j+']:checked').val());
				}else if($('h6#ques'+j).attr("title") == "Emotional"){
					emotional += Number($(':radio[id=answ'+j+']:checked').val());
				}else if($('h6#ques'+j).attr("title") == "Openness"){
					openness += Number($(':radio[id=answ'+j+']:checked').val());
				}else if($('h6#ques'+j).attr("title") == "conscientiousness"){
					conscientiousness += Number($(':radio[id=answ'+j+']:checked').val());
				}else if($('h6#ques'+j).attr("title") == "agreeableness"){
					agreeableness += Number($(':radio[id=answ'+j+']:checked').val());
				}
			}
			var insertInput = "";
			
			extraversion /= 70;
			emotional /= 70;
			openness /= 70;
			conscientiousness /= 70;
			agreeableness /= 70;
			
			insertInput += '<input type="hidden" name="personality.extraversion" value="'+extraversion+'"/>';
			insertInput += '<input type="hidden" name="personality.emotional" value="'+emotional+'"/>';
			insertInput += '<input type="hidden" name="personality.openness" value="'+openness+'"/>';
			insertInput += '<input type="hidden" name="personality.conscientiousness" value="'+conscientiousness+'"/>';
			insertInput += '<input type="hidden" name="personality.agreeableness" value="'+agreeableness+'"/>';
			
			var form = $("#dataform");
			form.append(insertInput);
			form.attr("action", "testResult2");
			form.attr("method","post");
			form.submit();
			
		}
	});
});