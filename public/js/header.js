var Upload = document.getElementById('upload');
var Logout = document.getElementById('logout');
var Login = document.getElementById('login');
var Home = document.getElementById('credImage');
var profileImage = document.getElementById('profileImage');
var profileName = document.getElementById('profileName');
var yourart = document.getElementById('yourart');
var Msg = document.getElementById('msg');
var searchButton = document.getElementById('searchButton');
var searchSlot = document.getElementById('searchSlot');

// var hiddenSearchValue = document.createElement("hiddenSearchValue");


var token;
$.ajax({
	url:'./token',
	success:function(data){
		token = data;
	}
})
if(Upload!=undefined){
	Upload.addEventListener("click", function() {

		$(location).attr('href', './upload');

	});
}

if(Login!=undefined){
	Login.addEventListener("click", function() {

		$(location).attr('href', './login');

	});
}


if(Logout!=undefined){
	Logout.addEventListener("click", function() {

		$(location).attr('href', './Logout');

	});
}


if(Home!=undefined){
	Home.addEventListener("click", function() {

		$(location).attr('href', './');

	});
}

if(profileImage!=undefined){
	profileImage.addEventListener("click", function() {

		$(location).attr('href', './main');

	});
}

if(profileName != undefined){
	profileName.addEventListener("click", function() {

		$(location).attr('href', './main');

	});
}

if(yourart != undefined){
	yourart.addEventListener("click", function() {

		$(location).attr('href', './Yourart');

	});
}

if(Msg != undefined){
	Msg.addEventListener("click", function() {

		$(location).attr('href', './forward');

	});
}

/*
nameLengthCheck();
function nameLengthCheck(){
var pName = $('#profileName').html();
if(pName.length>9){
	var temp = pName.substring(0,9);
	$('#profileName').text(temp+" ...");
}
}
*/
// $("#hiddenSearchValue").val("");
searchButton.addEventListener("click", function() {
	if($( "#searchSlot" ).val().length>0){
		$('#searchSlot').autocomplete( "search");
	}
});


$( "#searchSlot" ).autocomplete({
	minLength: 1,
	source: function( request, response ) {
		var Data = {"_token" : token};
		Data['inputValue'] = $('#searchSlot').val();
		$.ajax({
			type:'GET',
			dataType: "json",
			url: "searchProcess",
			data: Data,	//0 Email,1 Name,2 ProfilePhotoURL,3 userPK,4 Career(position),5 education,6 belong(organization),7 location
			success: function( data ) {
				response( data );
				console.log('data response success');
			},error: function(){
				console.log("AJAX Search error");
			}
		});
		console.log('in Autocomplete function');

	},
      focus: function( event, ui ) {                //value in inputValue
      	$( "#searchSlot" ).val( ui.item[1] );
      	// $("#hiddenSearchValue").val(ui.item[3]);
      	return false;
      }
  })
.on( "autocompleteselect", function( event, ui ) {
	post_to_url("/anotherProfile", ui.item[3], "get");
	return false;
} )
.autocomplete( "instance" )._renderItem = function( ul, item ) {

	var k_str = '<div id="resultList" class="resultList"><img id="resultImage" src="'+item[2]+'" style="height: 50px;">'
	+'<div id="searchInfoContainer" style="display: inline-block;">'
	if(item[1]!=''){
		k_str += '<div id="name" class="searchInfo">'+item[1]+'</div>'
	}
	if(item[6]!=''){
		k_str += '<div id="curOrganization" class="searchInfo" style="display: inline-block;">'+item[6]+'</div><br>';
	}
	if(item[4]!=''){
		k_str += '<div id="curPosition" class="searchInfo" style="display: inline-block;">'+item[4]+'</div>';
	}
	if(item[7]!= ''){
		k_str += '<div id="location" class="searchInfo">'+item[7]+'</div>';
	}
	k_str += '</div></div>';

	return $( "<li>" )
	.append(k_str)
	.appendTo( ul );
	$('.ui-autocomplete-input').css('width','15vw')
};

// $('#searchSlot').autocomplete( "search");

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
