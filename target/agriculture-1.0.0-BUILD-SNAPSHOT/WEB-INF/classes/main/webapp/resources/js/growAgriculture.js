/**
 * Created By Nikhil M
 */

var farmer;
var buyer;
var phoneNumber;
var sessionID = "";
var otpSubmitTimes = 0;
var otpRetryTimes = 0;

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

$("#otpRegisterPopup")
		.click(
				function() {
					console.log("1");
					if ($("#buyer").val().length < 10
							&& $("#farmer").val().length < 10) {
						console.log("2");
						$("#confirmPhoneNumberMessage").show();
						$("#otpRegisterPopup").prop("disabled", true);
					} else {
						console.log("3");
						if (otpSubmitTimes <= 3) {
							console.log("4");
							$('#otpSuccessSent').show().fadeOut(5000);
							if (farmer) {
								console.log("5");
								phoneNumber = $("#farmer").val();
							} else if (buyer) {
								console.log("6");
								phoneNumber = $("#buyer").val();
							}
							console.log("7");
							sendOTP(phoneNumber);
							console.log("8");
						} else {
							$("#otpDangerSent").show().text(
									"Sorry you have no retries left!!");
						}
					}
				});

$("#register").click(function() {
	if (otpSubmitTimes <= 2) {
		if ($("#otpPopup").val().length >= 4) {
			checkOTP($("#otpPopup").val(), sessionID);
			otpSubmitTimes = otpSubmitTimes + 1;
			$("#tries").val(otpSubmitTimes);
		}
	} else {
		$("#otpWarningSent").hide();
		$('#otpSuccessSent').hide();
		$("#otpDangerSent").show().text("Sorry you have no retries left!!");
		$("#userRegister").submit();
	}

});

$("#farmer").keyup(function() {
	if (!($("#farmer").val().length > 5)) {
		$("#buyer").prop("disabled", false);
		farmer = true;
		buyer = false;
		$("#userType").val("farmer");
	} else {
		$("#buyer").prop("disabled", true);
	}

	if ($("#farmer").val().length == 10) {
		$("#confirmPhoneNumberMessage").hide();
		$("#otpRegisterPopup").prop("disabled", false);
		checkUser($("#farmer").val());
	} else {
		$("#confirmPhoneNumberMessage").show();
		$("#otpRegisterPopup").prop("disabled", true);
	}

});

$("#buyer").keyup(function() {
	if (!($("#buyer").val().length > 5)) {
		$("#farmer").prop("disabled", false);
		buyer = true;
		farmer = false;
		$("#userType").val("buyer");
	} else {
		$("#farmer").prop("disabled", true);
	}

	if ($("#buyer").val().length == 10) {
		$("#confirmPhoneNumberMessage").hide();
		$("#otpRegisterPopup").prop("disabled", false);
		checkUser($("#buyer").val());
	} else {
		$("#confirmPhoneNumberMessage").show();
		$("#otpRegisterPopup").prop("disabled", true);
	}

});

$("#confirmPassword").keyup(function() {
	if ($("#buyer").val().length < 10 && $("#farmer").val().length < 10) {
		$("#confirmPhoneNumberMessage").show();
		$("#otpRegisterPopup").prop("disabled", true);
	}
	if ($("#password").val() == $("#confirmPassword").val()) {
		$("#confirmPasswordMessage").hide();
		$("#otpRegisterPopup").prop("disabled", false);
	} else {
		$("#confirmPasswordMessage").show();
		$("#otpRegisterPopup").prop("disabled", true);
	}
});

// Ajax Calls

function sendOTP(phoneNumber) {
	$.ajax({
		type : "POST",
		url : contextPath + "/sendOtp",
		data : "phoneNumber=" + phoneNumber,
		success : function(response) {
			sessionID = response[1];
		},
		error : function(e) {
			$("#register").prop("disabled", true);
			$("#otpWarningSent").show();
			$('#otpSuccessSent').hide();
			console.log('Error: ' + JSON.stringify(e));
		}
	});

}

function checkOTP(otpValue, sessionID) {
	  $.ajax({
		type : "POST",
		url : contextPath + "/checkOtp",
		data : "otpValue=" + otpValue + "&sessionID=" + sessionID,
		success : function(response) {
			if (response[1] == "OTP Matched") {
				$("#otp").val(otpValue);
				$("#sessionID").val(sessionID);
				$("#status").val(response[1]);
				$("#verified").val(true);
				$("#userRegister").submit();
			} else {
				$("#verified").val(false);
				$("#status").val("Not Matched!3 tries Done!");
				$("#sessionID").val(sessionID);
				$("#otp").val(otpValue);
				$("#otpDangerSent").show();
			}
		},
		error : function(response) {
			$("#register").prop("disabled", true);
			$("#otpWarningSent").show();
			$('#otpSuccessSent').hide();
			console.log('Error: ' + JSON.stringify(e));
		}
	});
	 

}


function checkUser(phoneNumber){
	$.ajax({
		type : "POST",
		url : contextPath + "/checkUser",
		data : phoneNumber,
		contentType: "application/json",
		success : function(response) {
			if(JSON.stringify(response).length != 2){
				var jsonResponse = JSON.parse(JSON.stringify(response));
				if(jsonResponse.otpVerified){
					$("#confirmPhoneNumberMessage").show().addClass("text-danger").text("User Already Exists, Please click on forgot password!");
					$("#otpRegisterPopup").prop("disabled", true);
					$("#password").prop("disabled", true);
					$("#confirmPassword").prop("disabled", true);
				}else{
					$("#confirmPhoneNumberMessage").show().addClass("text-danger").text("User Already Exists, But OTP not Verified!");
					$("#otpRegisterPopup").prop("disabled", true);
					$("#password").prop("disabled", false);
					$("#confirmPassword").prop("disabled", false);
				}
			}else{
				$("#confirmPhoneNumberMessage").hide();
				$("#password").prop("disabled", false);
				$("#confirmPassword").prop("disabled", false);
				$("#otpRegisterPopup").prop("disabled", false);
			}
				
		},
		error : function(e) {
			$("#confirmPhoneNumberMessage").show().text("User Already Exists, Please click on forgot password!");
			$("#otpRegisterPopup").prop("disabled", true);
		}
	});
}







