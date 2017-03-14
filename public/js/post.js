// Header section 추가
$(document).ready( function() {

	$("#header").load("/header");

});

var addCreditButton = document.getElementById('addCredit');
var closeButton = document.getElementById('close');

var position = document.getElementById('position');

var creditNameArray = document.getElementsByClassName('nameFrame');

var token;

function post_to_url(path, int, method) {

	method = method || "post"; // 전송 방식 기본값을 POST로

	var form = document.createElement("form");

	form.setAttribute("method", method);

	form.setAttribute("action", path);

	// 히든으로 값을 주입시킨다.
	if(method == "post"){

			var hiddenField = document.createElement("input");

			hiddenField.setAttribute("id", "IDID");

			hiddenField.setAttribute("type", "hidden");

			hiddenField.setAttribute('name', '_token');

			hiddenField.setAttribute('value', token);

			form.appendChild(hiddenField);

	}

	var hiddenField2 = document.createElement("input");

	hiddenField2.setAttribute("id", "intint");

	hiddenField2.setAttribute("type", "hidden");

	hiddenField2.setAttribute('name', "int");

	hiddenField2.setAttribute('value', int);

	form.appendChild(hiddenField2);

	document.body.appendChild(form);

	form.submit();

}

$.ajax({
	url:'./token',
	success:function(data){
		token = data;
	}
})

for (var i = 1;i<creditNameArray.length;i++){
	var numb = creditNameArray[i].id;
	var IDValue = '#'+numb;
	console.log(IDValue);
	$(IDValue).bind('click', function() {

		var t = $(this).attr('id').substr(0,300);

		t *= 1;

		post_to_url("./anotherProfile", t, "get");

	});
}


closeButton.addEventListener("click",function(){
	goBack();
});

$('#first').html(urlCheck(SourceURL));



function imageExists(url, callback) {
	var img = new Image();
	img.onload = function() {
		callback(true);
	};
	img.onerror = function() {
		callback(false);
	};
	img.src = url;
}

function validateImageURL(imageUrl) {
	console.log("checking imageChecker: "+imageUrl);
	imageExists(imageUrl, function(exists) {
			if (exists == true) { //Image 가 맞을 시
				//alert("This is ImageUrl");
//				$("#checkResult").html("This is ImageUrl");
//				$("#testImage").html("<div> <img src='"+imageUrl+"'> </div>");

			} else { //Image 가 아닐 시
				// alert("Invalid URL");
//				$("#checkResult").html("Invalid URL");
//				$("#testImage").html("");
}
});

}

/** validating youtubeUrl (초창기에는 Youtube upload 만 지원한다는 가정을 하고 진행 한다)**/
/** youtube url 인지 체크 **/
function matchYoutubeUrl(url) {
	var p = /^(?:https?:\/\/)?(?:www\.)?(?:youtu\.be\/|youtube\.com\/(?:embed\/|v\/|watch\?v=|watch\?.+&v=))((\w|-){11})(?:\S+)?$/;
	var matches = url.match(p);
	if (matches) {
			return matches[1]; //returns Youtube ID
		}
		return false;
	}
	function matchVimeoUrl(url) {
		//https://vimeo.com/188244587
		var p = /https?:\/\/(?:www\.|player\.)?vimeo.com\/(?:channels\/(?:\w+\/)?|groups\/([^\/]*)\/videos\/|album\/(\d+)\/video\/|video\/|)(\d+)(?:$|\/|\?)/;
		var matches = url.match(p);
		if (matches) {
			return matches[3]; //returns Youtube ID  <- 왜 인덱스 3이야 ㅡ.ㅡ 모르겠다
		}
		return false;
	}

	/** urlCheck**/
	function urlCheck(urlInput) {

		var width = 1050;
		var height = 484;
		var url = urlInput;
//		var url = urlInput.value; //url input 에서 가져오기
		var id = matchYoutubeUrl(url); //youtube url 인지 체크 하고 youtube id 반환
		if (id != false) {
			/** URL 확인하고 생성 공간과 바꾸기**/
			//alert("Youtube Video id: " + id);
//			$("#checkResult").html("Youtube Video id: " + id);
//			$("#testImage")
//					.html(
//							"<div> <iframe width='560' height='315' src='https://www.youtube.com/embed/"+id+ "' frameborder='0' allowfullscreen></iframe> </div>");
return "<iframe width='"+width+"' height='"+height+"' src='https://www.youtube.com/embed/"+id+ "' frameborder='0' allowfullscreen></iframe>";
} else if (matchVimeoUrl(url) != false) {
			id = matchVimeoUrl(url); //vimeo id 반환
//			$("#checkResult").html("Vimeo Video id: " + id);
//			$("#testImage")
//					.html(
//							"<div> <iframe src='https://player.vimeo.com/video/"
//									+ id
//									+ "?title=0&byline=0&portrait=0&badge=0' width='640' height='360' frameborder='0' webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe> </div>");
return "<iframe src='https://player.vimeo.com/video/"
+ id
+ "?title=0&byline=0&portrait=0&badge=0' width='"+width+"' height='"+height+"' frameborder='0' webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>";
} else {
	return "<image class='PostWork'src = " + url + ">";
}
}
function goBack() {
	window.history.back();
}

var fixedButton = document.getElementById('fixed');
var deleteButton = document.getElementById('delete');
if(fixedButton != null){
	fixedButton.addEventListener("click",function(){
			post_to_url('./fixed', ArtPK, 'get');
	});
	var Data3 = {"ArtPK" : ArtPK};
	deleteButton.addEventListener("click",function(){
		$.ajax({
			url:'./delete',
			type:'GET',
			data: Data3,
			success:function(data){
				//alert('글 삭제 성공 메인으로 돌아갑니다.');
				alert(data);
				$(location).attr('href','/main');
			},

			error: function(){
				alert('글 삭제 실패');
			}

		})

	});
}
