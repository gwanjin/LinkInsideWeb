
$(function(){
	var closeness = 0, excitement = 0, challenge = 0, love = 0, self_expression = 0;
	var liberty = 0, practicality = 0, stability = 0, structure = 0, harmony = 0;
	var curiosity = 0;
	
	var nowPage = 0;
	$("div#page"+nowPage).css("display", "");
	$("div#page"+nowPage).append('<div style="margin-top:20px">1 / 6&nbsp;&nbsp;<button type="button" class="btn btn-success" id="next">Next</button></div>');
	
	$("div#innerLine").on("click", "button.btn", function(){
		if($(this).attr("id") == "prev"){
			$("div#page"+nowPage).css("display", "none");
			nowPage -= 10;
			$("div#page"+nowPage).css("display", "");
			$(this).parent().remove();
			var insertValue = "";
			
			if(nowPage > 0 && nowPage < 50){
				insertValue += '<div style="margin-top:20px"><button type="button" class="btn btn-warning" id="prev">Previous</button>&nbsp;&nbsp;';
				insertValue += (nowPage+10)/10 + ' / 6';
				insertValue += '&nbsp;&nbsp;<button type="button" class="btn btn-success" id="next">Next</button></div>';
			}else if(nowPage == 0){
				insertValue += '<div style="margin-top:20px">';
				insertValue += (nowPage+10)/10 + ' / 6';
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
			
			if(nowPage > 0 && nowPage < 50){
				insertValue += '<div style="margin-top:20px"><button type="button" class="btn btn-warning" id="prev">Previous</button>&nbsp;&nbsp;';
				insertValue += (nowPage+10)/10 + ' / 6';
				insertValue += '&nbsp;&nbsp;<button type="button" class="btn btn-success" id="next">Next</button></div>';
			}else if(nowPage == 50){
				insertValue += '<div style="margin-top:20px"><button type="button" class="btn btn-warning" id="prev">Previous</button>&nbsp;&nbsp;';
				insertValue += (nowPage+10)/10 + ' / 6';
				insertValue += '&nbsp;&nbsp;<button type="button" class="btn btn-danger" id="finish">Finish</button></div></div>';
			}
			
			$("div#page"+nowPage).append(insertValue);
			var position=$('#about').offset(); // 위치값
			$('html,body').animate({scrollTop:position.top},100); // 이동
			
		}else if($(this).attr("id") == "finish"){
			
			for(var i=nowPage; i<nowPage+2; i++){
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
			
			for(var j = 0; j < 52; j++){
				if($('h6#ques'+j).attr("title") == "Closeness"){
					closeness += Number($(':radio[id=answ'+j+']:checked').val());
				}else if($('h6#ques'+j).attr("title") == "Excitement"){
					excitement += Number($(':radio[id=answ'+j+']:checked').val());
				}else if($('h6#ques'+j).attr("title") == "Challenge"){
					challenge += Number($(':radio[id=answ'+j+']:checked').val());
				}else if($('h6#ques'+j).attr("title") == "Love"){
					love += Number($(':radio[id=answ'+j+']:checked').val());
				}else if($('h6#ques'+j).attr("title") == "Self-expression"){
					self_expression += Number($(':radio[id=answ'+j+']:checked').val());
				}else if($('h6#ques'+j).attr("title") == "Liberty"){
					liberty += Number($(':radio[id=answ'+j+']:checked').val());
				}else if($('h6#ques'+j).attr("title") == "Practicality"){
					practicality += Number($(':radio[id=answ'+j+']:checked').val());
				}else if($('h6#ques'+j).attr("title") == "Stability"){
					stability += Number($(':radio[id=answ'+j+']:checked').val());
				}else if($('h6#ques'+j).attr("title") == "Structure"){
					structure += Number($(':radio[id=answ'+j+']:checked').val());
				}else if($('h6#ques'+j).attr("title") == "Harmony"){
					harmony += Number($(':radio[id=answ'+j+']:checked').val());
				}else if($('h6#ques'+j).attr("title") == "Curiosity"){
					curiosity += Number($(':radio[id=answ'+j+']:checked').val());
				}
			}
			var insertInput = "";
			
			closeness /= 35;
			excitement /= 35;
			challenge /= 35;
			love /= 42;
			self_expression /= 35;
			
			liberty /= 28;
			practicality /= 35;
			stability /= 35;
			structure /= 35;
			harmony /= 28;
			
			curiosity /= 21;
			
			
			insertInput += '<input type="hidden" name="culture.needcloseness" value="'+closeness+'"/>';
			insertInput += '<input type="hidden" name="culture.needideal" value="'+excitement+'"/>';
			insertInput += '<input type="hidden" name="culture.needchallenge" value="'+challenge+'"/>';
			insertInput += '<input type="hidden" name="culture.needlove" value="'+love+'"/>';
			insertInput += '<input type="hidden" name="culture.needselfexpression" value="'+self_expression+'"/>';
			
			insertInput += '<input type="hidden" name="culture.needpracticality" value="'+practicality+'"/>';
			insertInput += '<input type="hidden" name="culture.needharmony" value="'+harmony+'"/>';
			insertInput += '<input type="hidden" name="culture.needcuriosity" value="'+curiosity+'"/>';
			insertInput += '<input type="hidden" name="culture.needstability" value="'+stability+'"/>';
			insertInput += '<input type="hidden" name="culture.needstructure" value="'+structure+'"/>';
			
			insertInput += '<input type="hidden" name="culture.needliberty" value="'+liberty+'"/>';
						
			
			var form = $("#dataform");
			form.append(insertInput);
			
			
			form.attr("method","post");
			form.submit();
			
		}
	});
});