// Header section 추가
$(document).ready( function() {

	$("#pfpf").load("/ProfileBasicInfo");
	$("#header").load("/header");

});

$('body').append("<script src = 'js/makedFunction.js'>");

var Project = document.getElementById('Project');

var Bridge = document.getElementById('Bridge');

var token;

// GetContentByDB 함수에서 URL 을 json 형태로 변환하여 전달해준다. 그러므로

// 이 함수에서 json 형태를 다시 URL 배열로 풀어서

// 3행짜리 동영상의 table 을 구성한다.

// 현재 제작 과정. post 페이지로 잘 이동한다.
bridgeLogDisplay();
function bridgeLogDisplay(){
	$.ajax({

		url : './token',

		success : function(data) {

			token = data;

		}

	})

	$('#profileBody').text('');
	document.getElementById("profileBody").style.columnWidth="232px";
	$.ajax({

		url : './getContentURL',

		success : function(data) {
			var k = JSON.parse(data);

			for (var i = 0; i < k.length; i++) {
				// url check 후 비디오일 시 썸내일로 전환 후 post
				var url = String(k[i][1]);
				var urlType = urlCheck(url);
				urlCheck_Ssumnail(urlType,url,k,i);

			}// forloop ends

		}

	})

}//bridgeLogDisplay()

// Project.addEventListener("click", function() {	//	<-- 중복 클릭이 되서 .one 이라는 jquery 로 바꿨음. 확인 시 지울것. -soo
	$("#Project").one("click",function(){

	// 토큰값을 가지고 와야한다. 토큰용 php 파일을 하나 만든다.
	bridgeLogDisplay();

});

Bridge.addEventListener("click", function() {

	var Data = {"_token" : token};
	Data['userPK'] = userPK;
	bridge(Data);
});
