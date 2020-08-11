<%@ page contentType="text/html; charset=UTF-8"%>


<!DOCTYPE html>
<html lang="ko">
<head>
<link rel="stylesheet" href="./resources/css/idus1.css">
<!-- <link rel="stylesheet" href="./resources/css/idus2.css"> -->

<script src="./resources/js/jquery.js"></script>

<!-- AppsFlyer web SDK
<script>
	window.AF = window.AF || {
		_type : "q",
		q : [],
		event : function(i) {
			this.q.push(i)
		},
		identify : function(i) {
			this.q.push({
				id : i
			})
		}
	};
</script>-->

<!-- Kakao web SDK 
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>-->
<!-- Signin With Apple
<script type="text/javascript"
	src="https://appleid.cdn-apple.com/appleauth/static/jsapi/appleid/1/en_US/appleid.auth.js"></script> -->

<!-- tracker vendors
<script async
	src="https://www.googletagmanager.com/gtag/js?id=AW-775263643"></script>
<script type="text/javascript" charset="UTF-8"
	src="//t1.daumcdn.net/adfit/static/kp.js"></script>
<script type="text/javascript" src="//static.criteo.net/js/ld/ld.js"
	async="true"></script>
<script src="//wcs.naver.net/wcslog.js"></script>
 -->
<!-- Dable 스크립트 시작 / 문의 http://dable.io 
<script>
	(function(d, a, b, l, e, _) {
		d[b] = d[b] || function() {
			(d[b].q = d[b].q || []).push(arguments)
		};
		e = a.createElement(l);
		e.async = 1;
		e.charset = 'utf-8';
		e.src = '//static.dable.io/dist/plugin.min.js';
		_ = a.getElementsByTagName(l)[0];
		_.parentNode.insertBefore(e, _);
	})(window, document, 'dable', 'script');
	dable('setService', 'idus.com');
	dable('sendLog');
</script>-->
<!-- Dable 스크립트 종료 / 문의 http://dable.io
<script>
	kakaoPixel('4255617525139617103').pageView();
</script>-->

<!-- sitelink - search box 
<script type="application/ld+json">
        {
          "@context": "http://schema.org",
          "@type": "WebSite",
          "url": "https://www.idus.com/",
          "potentialAction": {
            "@type": "SearchAction",
            "target": "https://www.idus.com/search?word={ring}",
            "query-input": "required name=ring"
          }
        }
        </script>-->
</head>
<body>
	<div data-vue="token"></div>
	<div data-vue="globalUser"></div>
	<div data-vue="resizeHandler"></div>

	<div class="wrap login">
		<div class="head_banner_group"></div>
		<form data-form="reauth-phone" class="form form-signup-step2" id="MemberShipForm"
			data-page="signup" action="checkEmail" method="post">
			<input type="hidden" name="redirect_uri"
				value="https://www.idus.com/" /> <input type="hidden" name="token"
				value="" />
			<div class="login wrap">
				<div class="login logo">
					<h1>
						<a href="/"> <span class="sp-icon icon-iduslogo"></span>
						</a>
					</h1>
				</div>

				<section class="login section signup-form">
					<h2 class="login title">회원가입하기</h2>
					<h3 class="signup-step title">가입 정보 입력하기</h3>

					<div class="form-block">
						<label for="" class="form-block-head"> <em
							class="asterisk red">&lowast;</em> 이메일
						</label>&nbsp;&nbsp;&nbsp;<span id="email_ch"></span>
						<div class="form-block-body">
							<div class="input-text size-w">
								<input class="" type="email" name="email" id="email"
									placeholder="이메일을 입력해주세요." required value="" />
							</div>
						</div>
					</div>

					<div class="form-block">
						<label for="" class="form-block-head"> <em
							class="asterisk red">&lowast;</em> 비밀번호
						</label>&nbsp;&nbsp;&nbsp;<span id="pwd_ch"></span>
						<div class="form-block-body">
							<div class="input-text size-w">
								<input type="password" name="password" id="password"
									placeholder="비밀번호 (영문+숫자+특수문자 8자 이상)" required>
							</div>
						</div>
						<div class="form-block"><!-- form-block-body : 윗공백없는 css-->
						<label for="" class="form-block-head"> <em
							class="asterisk red">&lowast;</em> 비밀번호 확인
						</label>&nbsp;&nbsp;&nbsp;<span id="pwd_ch2"></span>
							<div class="input-text size-w">
								<input type="password" name="password_confirm" id="password_check"
									placeholder="비밀번호 확인" required>
							</div>
						</div>
					</div>

					<div class="form-block">
						<label for="" class="form-block-head"> <em
							class="asterisk red">&lowast;</em> 이름
						</label>&nbsp;&nbsp;&nbsp;<span id="user_ch"></span>
						<div class="form-block-body">
							<div class="input-text size-w type-l">
								<input class="" type="text" name="username" value="" id="username"
									placeholder="이름을 입력해주세요." required>
							</div>
						</div>
					</div>
					<div class="form-block" data-auth="root">
						<label for="" class="form-block-head"> <em
							class="asterisk red">&lowast;</em> 전화번호
						</label>&nbsp;&nbsp;&nbsp;<span id="phone_ch"></span>
						<div class="form-block-body">
							<div class="ui-input-btn-combo">
								<div class="input-text size-w type-l">
									<!-- <input class="reauth" type="hidden" name="only_auth" value="1"> -->
									<input type="tel" name="cell_phone" data-auth="cell_phone" id="cell_phone"
										placeholder="010-1234-5678" value="" required>
								</div>
							</div>
						</div>
					</div>

					<div class="form-block check-all-wrap">
						<div class="terms">

							<div class="terms-body">

								<div class="terms-item">
									<div class="input-checkbox">
										<input id="terms2" class="bp check" type="checkbox"
											name="terms2" required data-ui="check-all-linked"
											data-ui-id="signup" checked>
									</div>
									<a class="label" target="_blank" href="/w/board/terms/privacy">개인정보
										처리방침 필수 동의</a>
								</div>

							</div>
						</div>
					</div>

					<div class="form-block form-block-submit">
						<div class="form-block-body">
							<button class="btn btn-point btn-login" type="button" id="email_submit">
								회원가입하기(이메일 인증하기)</button>
						</div>
					</div>

					<div class="text-join">단, 14세 미만은 회원가입할 수 없습니다.</div>
				</section>
			</div>
		</form>
	</div>
		<script>
		
		$(function(){
			var getIdCheck= RegExp(/^[a-zA-Z0-9]{4,14}$/);
			var getPwCheck= RegExp(/([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~])|([!,@,#,$,%,^,&,*,?,_,~].*[a-zA-Z0-9])/);
			var getName= RegExp(/^[가-힣]+$/);
			var getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
			var getPhone = RegExp(/^[0-9]{3}-[0-9]{3,4}-[0-9]{4}$/);
			var chk1 = false, chk2 = false, chk3 = false, chk4 = false, chk5 = false;
		
			//회원가입 검증~~
			//ID 입력값 검증.
			$('#email').on('keyup', function() {
				if($("#email").val() == ""){
					$('#email').css("background-color", "pink");
					$('#email_ch').html('<b style="font-size:16px;color:red;">[이메일은 필수 정보에요!]</b>');
					chk1 = false;
				}
				
				//아이디 유효성검사
				else if(!getMail.test($("#email").val())){
					$('#email').css("background-color", "pink");
					$('#email_ch').html('<b style="font-size:16px;color:red;">[이메일 형식에 맞게 써주세요!]</b>');	  
					chk1 = false;
				} 
				 //ID 중복확인 비동기 처리
 				 else {
					$.ajax({
						type: "POST",
						url: "/controller/confirmEmail",
						headers: { 
							'Accept': 'application/json',
	            'Content-Type': 'application/json' 
	            },
						data: JSON.stringify({email:$("#email").val()}),
						dataType:"text",
						success: function(data) {
							if($.trim(data) == "YES") {
								$('#email').css("background-color", "white");
								$('#email_ch').html('');
								chk1 = true;
							} else {
								$('#email').css("background-color", "pink");
								$('#email_ch').html('<b style="font-size:16px;color:red;">[중복된 Email입니다!]</b>');
								chk1 = false;
							}
						}
					});
				}
			});
			$('#password').on('keyup', function() {
				//비밀번호 공백 확인
				if($("#password").val() == ""){
				    $('#password').css("background-color", "pink");
					$('#pwChk').html('<b style="font-size:16px;color:red;">[패스워드는 필수정보에요!]</b>');
					chk2 = false;
				}		         
				//비밀번호 유효성검사
				else if(!getPwCheck.test($("#password").val()) || $("#password").val().length < 8){
				    $('#password').css("background-color", "pink");
					$('#pwd_ch').html('<b style="font-size:16px;color:red;">[특수문자 포함 8자이상으로 작성해주세요!]</b>');
					chk2 = false;
				} else {
					$('#password').css("background-color", "white");
					$('#pwd_ch').html('');
					chk2 = true;
				}
			});
			//패스워드 확인란 입력값 검증.
			$('#password_check').on('keyup', function() {
				//비밀번호 확인란 공백 확인
				if($("#password_check").val() == ""){
				    $('#password_check').css("background-color", "pink");
					$('#pwd_ch2').html('<b style="font-size:16px;color:red;">[패스워드확인은 필수정보에요!]</b>');
					chk3 = false;
				}		         
				//비밀번호 확인란 유효성검사
				else if($("#password").val() != $("#password_check").val()){
				    $('#password_check').css("background-color", "pink");
					$('#pwd_ch2').html('<b style="font-size:16px;color:red;">[비밀번호가 일치하지 않습니다!]</b>');
					chk3 = false;
				} else {
					$('#password_check').css("background-color", "white");
					$('#pwd_ch2').html('');
					chk3 = true;
				}
			});
			//이름 입력값 검증.
			$('#username').on('keyup', function() {
				//이름값 공백 확인
				if($("#username").val() == ""){
				    $('#username').css("background-color", "pink");
					$('#user_ch').html('<b style="font-size:16px;color:red;">[이름은 필수정보에요!]</b>');
					chk4 = false;
				}
				else{
					$('#username').css("background-color", "white");
					$('#user_ch').html('');
					chk4 = true;
				}
			});
			//핸드폰 유효성 검증
			$('#cell_phone').on('keyup', function() {
				//이름값 공백 확인
				if($("#cell_phone").val() == ""){
				    $('#cell_phone').css("background-color", "pink");
					$('#phone_ch').html('<b style="font-size:16px;color:red;">[전화번호를 입력해주세요!]</b>');
					chk5 = false;
				}
				else if(!getPhone.test($("#cell_phone").val())){
				  $('#cell_phone').css("background-color", "pink");
					$('#phone_ch').html('<b style="font-size:16px;color:red;">[전화번호를 올바르게 적어주세요!]</b>');
					chk5 = false;
				}
				else{
					$('#cell_phone').css("background-color", "white");
					$('#phone_ch').html('');
					chk5 = true;
				}
			});
			$('#email_submit').click(function(e) {
				if(chk1 && chk2 && chk3 && chk4 && chk5) {
					var answer = confirm('회원가입을 완료하시겠습니까?');
					if(answer) {
						e.preventDefault();
						$('#MemberShipForm').submit();
					} 
				} else {
					alert('입력정보를 다시 확인하세요.');	
					return false;
				}
			});
		});
		</script>
</body>
</html>
