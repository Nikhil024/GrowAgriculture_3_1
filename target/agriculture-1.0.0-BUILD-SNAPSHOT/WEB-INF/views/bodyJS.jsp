<%--
  Created by IntelliJ IDEA.
  User: Nikhil
  Date: 10-03-2018
  Time: 19:48
--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<script src="<spring:url value="/resources/js/core/jquery.min.js"/>"></script>
<script src="<spring:url value="/resources/js/core/popper.min.js"/>"></script>
<script src="<spring:url value="/resources/js/bootstrap-material-design.min.js"/>"></script>
<!--  Plugin for Date Time Picker and Full Calendar Plugin-->
<script src="<spring:url value="/resources/js/plugins/moment.min.js"/>"></script>
<!--	Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
<script src="<spring:url value="/resources/js/plugins/bootstrap-selectpicker.js"/>"></script>
<!--	Plugin for Tags, full documentation here: http://xoxco.com/projects/code/tagsinput/  -->
<script src="<spring:url value="/resources/js/plugins/bootstrap-tagsinput.js"/>"></script>
<!--	Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
<script src="<spring:url value="/resources/js/plugins/jasny-bootstrap.min.js"/>"></script>
<!--	Plugin for Small Gallery in Product Page -->
<script src="<spring:url value="/resources/js/plugins/jquery.flexisel.js"/>"></script>
<!--	Plugin for the Datepicker, full documentation here: https://github.com/Eonasdan/bootstrap-datetimepicker -->
<script src="<spring:url value="/resources/js/plugins/bootstrap-datetimepicker.min.js"/>"></script>
<!--	Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
<script src="<spring:url value="/resources/js/plugins/nouislider.min.js"/>"></script>
<!-- Material Kit Core initialisations of plugins and Bootstrap Material Design Library -->
<script src="<spring:url value="/resources/js/material-kit.min.js?v=2.0.0"/>"></script>
<!-- Fixed Sidebar Nav - js With initialisations For Demo Purpose, Don't Include it in your project -->
<script src="<spring:url value="/resources/assets-for-demo/js/material-kit-demo.js"/>"></script>
<!-- Plugins for presentation and navigation  -->
<script src="<spring:url value="/resources/assets-for-demo/js/modernizr.js"/>"></script>
<script src="<spring:url value="/resources/assets-for-demo/js/vertical-nav.js"/>"></script>
<!--  Google Maps Plugin    -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB2Yno10-YTnLjjn_Vtk0V8cdcY5lC4plU"></script>
<!-- Sharrre libray -->
<script src="<spring:url value="/resources/assets-for-demo/js/jquery.sharrre.js"/>">
</script>
<script>
    $(document).ready(function() {
        if($("#termsAndConditions").length > 0){
            $("#termsAndConditions").val("true");
            $(document).on('change', '#termsAndConditionsCheckbox', function() {
                if($("#termsAndConditionsCheckbox").prop('checked')){
                    $("#termsAndConditions").val("true");
                    $("#toProfile").removeAttr('disabled');
                }else{
                    $("#termsAndConditions").val("");
                    $("#toProfile").attr('disabled','disabled');
                }
            });
        }
        materialKitDemo.initFormExtendedDatetimepickers();
    });

    var successTickCode = "<span class='form-control-feedback'><i class='material-icons'>done</i></span>";
    var failureCrossCode = "<span class='form-control-feedback'><i class='material-icons'>clear</i></span>";
    var redTect = "<label for='exampleInput3' class='bmd-label-floating'>Error input</label>";
    $("#lastName").click(function(){
        if($("#otpValue").val() != null && sessionID != null){
            if($("#otpValue").val().toString().length > 3){
                otpValue = $("#otpValue").val();
                if(localStorage.getItem("OtpVerified") != "yes"){
                    count = count + 1;
                    if(count <= 3){
                        $.ajax({
                            type : "POST",
                            url : "${pageContext.request.contextPath}/checkOtp",
                            data : "otpValue="+otpValue+"&sessionID="+sessionID,
                            success : function(response) {
                                if(response[1] == "OTP Matched"){
                                    $('.form-control-feedback').remove();
                                    var htmlCode = $("#otpValue").parent().parent().html();
                                    $("#otpValue").parent().parent().addClass('has-success is-focused');
                                    $("#otpValue").parent().parent().html(htmlCode + successTickCode);
                                    $("#otpValue").val(otpValue);
                                    $("#otpValue").attr("style","background-color: white;pointer-events: none;");
                                    localStorage.setItem("OtpVerified","yes");
                                    localStorage.setItem("OtpValue",otpValue);
                                    $("#otpSessionId").val(sessionID);
                                    $("#otpValue").val(otpValue);
                                    $("#otpRetries").val(count);
                                }else{
                                    $('.form-control-feedback').remove();
                                    var htmlCode = $("#otpValue").parent().parent().html();
                                    $("#otpValue").parent().parent().addClass('has-danger is-focused');
                                    $("#otpValue").parent().parent().html(htmlCode + failureCrossCode);
                                    $("#otpValue").attr("placeholder", "Re-Enter the OTP recieved on your Phone");
                                    localStorage.setItem("OtpVerified","no");
                                }
                            },
                            error : function(response) {
                                console.log('Error: ' + JSON.stringify(response));
                            }
                        });
                        localStorage.setItem("count",count);
                    }else{
                        $('.form-control-feedback').remove();
                        var htmlCode = $("#otpValue").parent().parent().html();
                        $("#otpValue").parent().parent().addClass('has-danger is-focused');
                        $("#otpValue").parent().parent().html(htmlCode + failureCrossCode);
                        $("#otpValue").attr("placeholder", "Max retries exceeded");
                        localStorage.setItem("OtpVerified","no");
                        $('#profile_submit').attr('disabled','disabled');
                        localStorage.setItem("count",count);
                    }
                }
            }
        }
    });

    $(document).ready(function() {
        $('#twitter').sharrre({
            share: {
                twitter: true
            },
            enableHover: false,
            enableTracking: false,
            enableCounter: false,
            buttons: {
                twitter: {
                    via: 'CreativeTim'
                }
            },
            click: function(api, options) {
                api.simulateClick();
                api.openPopup('twitter');
            },
            template: '<i class="fa fa-twitter"></i> Twitter',
            url: 'http://demos.creative-tim.com/material-kit-pro/presentation.html'
        });
        $('#facebook').sharrre({
            share: {
                facebook: true
            },
            enableHover: false,
            enableTracking: false,
            enableCounter: false,
            click: function(api, options) {
                api.simulateClick();
                api.openPopup('facebook');
            },
            template: '<i class="fa fa-facebook-square"></i> Facebook',
            url: 'http://demos.creative-tim.com/material-kit-pro/presentation.html'
        });
        $('#google').sharrre({
            share: {
                googlePlus: true
            },
            enableCounter: false,
            enableHover: false,
            enableTracking: true,
            click: function(api, options) {
                api.simulateClick();
                api.openPopup('googlePlus');
            },
            template: '<i class="fa fa-google-plus"></i> Google',
            url: 'http://demos.creative-tim.com/material-kit-pro/presentation.html'
        });
    });
    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-46172202-1']);
    _gaq.push(['_trackPageview']);
    (function() {
        var ga = document.createElement('script');
        ga.type = 'text/javascript';
        ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(ga, s);
    })();
    // Facebook Pixel Code Don't Delete
    ! function(f, b, e, v, n, t, s) {
        if (f.fbq) return;
        n = f.fbq = function() {
            n.callMethod ?
                n.callMethod.apply(n, arguments) : n.queue.push(arguments)
        };
        if (!f._fbq) f._fbq = n;
        n.push = n;
        n.loaded = !0;
        n.version = '2.0';
        n.queue = [];
        t = b.createElement(e);
        t.async = !0;
        t.src = v;
        s = b.getElementsByTagName(e)[0];
        s.parentNode.insertBefore(t, s)
    }(window,
        document, 'script', '//connect.facebook.net/en_US/fbevents.js');
    try {
        fbq('init', '111649226022273');
        fbq('track', "PageView");
    } catch (err) {
        console.log('Facebook Track Error:', err);
    }
</script>

