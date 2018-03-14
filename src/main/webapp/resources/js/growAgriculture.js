/**
 * Created By Nikhil M
 */

var farmer;
var buyer;

$(document).ready(function() {
	if ($("#buyer").val() == "" && $("#farmer").val() == "") {
		localStorage.setItem("farmer", "");
		localStorage.setItem("buyer", "");
	} else {
		if (localStorage.getItem("farmer") == "true") {
			$("#buyer").val("");
			$("#buyer").prop("disabled", true);
		} else if (localStorage.getItem("buyer") == "true") {
			$("#farmer").val("");
			$("#farmer").prop("disabled", true);
		}
	}

});


$("#register").click(function() {
	console.log("OTP:: "+$("#otpPopup").val());
	$("#otp").val($("#otpPopup").val());
	$("#userRegister").submit();
});

/*
$("#userRegsiter").submit(function(e){
    e.preventDefault();
});*/

$("#farmer").keyup(function() {
	/*if($("#farmer").val().length >= 10){
		$("#farmer").val("+91"+$("#farmer").val());
	}
	*/
	if (!($("#farmer").val().length > 5)) {
		$("#buyer").prop("disabled", false);
		farmer = true;
		buyer = false;
	} else {
		$("#buyer").prop("disabled", true);
	}
});

$("#buyer").keyup(function() {
	if (!($("#buyer").val().length > 5)) {
		$("#farmer").prop("disabled", false);
		buyer = true;
		farmer = false;
	} else {
		$("#farmer").prop("disabled", true);
	}
});

$("#confirmPassword").keyup(function() {
	if ($("#password").val() == $("#confirmPassword").val()) {
		$("#confirmPasswordMessage").hide();
		$("#register").prop("disabled", false);
	} else {
		$("#confirmPasswordMessage").show();
		$("#register").prop("disabled", true);
	}
});