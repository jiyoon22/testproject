<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet">
 <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<title>login</title>
</head>
<body>
        <div class="login">
<form  name="loginForm" action="${cp}/user/userloginok.us" method="post" onsubmit="return sendit();">
<c:set var="cp" value="${pageContext.request.contextPath}"/>
            <a href="${cp}/index.jsp">

                <img src="../../img/로고.PNG" alt="낚시로고" class="logo"><br>
            </a>
            로그인시 이용가능합니다. <br>
            <p>
                <input type="text" name="userid" id="userid" placeholder="  아이디">
            </p>
            <p>
                <input type="password" name="userpw" id="userpw" placeholder="  비밀번호">
            </p>
            <p>
                <input type="submit" disabled="disabled" class="TestBtn" value="로그인">
            </p>
 </form>
            <div class="checkbox">
                <input type="checkbox" name="save" class="format" value="아이디저장">&nbsp;아이디저장&nbsp;
                <input type="checkbox" name="save" class="format" value="자동로그인">&nbsp;자동로그인
            </div>
            <div class="find"></div>
            <br>
            <a href="${cp}/app/user/idfind.jsp">아이디찾기</a>
            <a href="#">비밀번호찾기</a>
            <a href="${cp}/user/userjoin.us">회원가입</a><br><br><br>
          
           <form name="kakao" method="post" action="${cp}/user/Kloginok.us">
           	 	<div id="getidfrom" class="kakao" onclick="kakaoLogin();"> 카카오톡 로그인</div>
             	<input type="hidden" id="user_name" name="user_name" value="">
             	<input type="hidden" id="user_email" name="user_email" value="">
           </form>
             <!-- 네이버 로그인 버튼 노출 영역 -->
            <div id="naver_id_login"></div>
            <!-- //네이버 로그인 버튼 노출 영역 -->
            <script type="text/javascript">
            	var naver_id_login = new naver_id_login("KyAp0KguqFYEXEMM559W", "http://127.0.0.1:5500/teamproject/login.html");
  	            var state = naver_id_login.getUniqState();
                	naver_id_login.setButton("green", 40,62);
  	                naver_id_login.setDomain("YOUR_SERVICE_URL");
                	naver_id_login.setState(state);
  	                naver_id_login.setPopup();
  	                naver_id_login.init_naver_id_login();
             </script>
             <script type="text/javascript">
                var naver_id_login = new naver_id_login("KyAp0KguqFYEXEMM559W", "http://127.0.0.1:5500/teamproject/login.html");
                // 접근 토큰 값 출력
                alert(naver_id_login.oauthParams.access_token);
                // 네이버 사용자 프로필 조회
                naver_id_login.get_naver_userprofile("naverSignInCallback()");
                // 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
                function naverSignInCallback() {
                  alert(naver_id_login.getProfileData('email'));
                  alert(naver_id_login.getProfileData('nickname'));
                  alert(naver_id_login.getProfileData('age'));
                }
              </script>
        
        
        
        
        
        
        
        </div>
   
  <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
  <script>
       window.Kakao.init('4c885c3ccfbc1e3afd7b2729649f515b');
       const flag = "";
        function kakaoLogin() {
            window.Kakao.Auth.login({
                scope: 'profile_nickname, account_email', //동의항목 페이지에 있는 개인정보 보호 테이블의 활성화된 ID값을 넣습니다.
                success: function(response) {
                    console.log(response) // 로그인 성공하면 받아오는 데이터
                    window.Kakao.API.request({ // 사용자 정보 가져오기 
                        url: '/v2/user/me',
                        success: (res) => {
                           const user_name = document.getElementById("user_name");
                            const user_email = document.getElementById("user_email");
                            
                            const kakao_account = res.kakao_account;
                            
                            console.log(kakao_account.profile.nickname);
                            console.log(kakao_account.email);

                            user_name.value = kakao_account.profile.nickname;
                            user_email.value = kakao_account.email;
                            
                            console.log(user_name.value);
                            console.log(user_email.value);
                            
                            if(user_name.value != null && user_name.value != null){
                               var kakao = document.kakao;
                               kakao.submit();
                            }
           
                           /*  location.href="${cp}/login/Kloginok.us"; */
                            
                            <%-- <%response.sendRedirect("logintestOKpage.jsp");%> --%>                         
                           /*  location.href="./logintestOKpage.jsp"; */
                        }
                    });
                    // window.location.href='/ex/kakao_login.html' //리다이렉트 되는 코드
                },
                fail: function(error) {
                    console.log(error);
                }
            });
        }
       </script>
    
            
    <footer>
        <div>
            <div class="footer">
                <p>상호</p>
                <p>사업자등록번호</p>
                <p>주소</p>
                <p>개인정보처리방침</p>
                <p>이용약관</p>
                <p>Copyright ⓒ PCCLUB</p>
            </div>
            <div class="footer">
                <p>PCCLUB</p>
                <p>02)1234-5678</p>
                <p>코리아 IT 아카데미</p>
            </div>
            
        </div>
    </footer>
</body>
<script>
const userid= document.getElementById("userid");
const userpw = document.getElementById("userpw");

$('#userpw').on('input',function(){
		 if($('#userpw').val()==''){
			 $('.TestBtn').attr("disabled",true);
		 }
		 else{
			 if(userpw.value.length>7){
			 $(".TestBtn").attr("disabled",false);
			 }
		 }
	 })



</script>
</html>
