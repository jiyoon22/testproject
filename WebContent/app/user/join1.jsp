<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/css/join1.css" rel="stylesheet">
  <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<title>join1veiw</title>
</head>
<body>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
        <div class="login">
            <a href="${cp}/index.jsp">

                <img src="../../img/로고.PNG" alt="낚시로고"><br>
            </a>
            <h4>회원가입 후 다양한 서비스를 즐겨보세요</h4>
            
            <br>
          
            <p>
                <a href="${cp}/user/userjoin2.us">
                    <input type="button" value="회원가입">

                </a>
            </p>
            <br>
            <div class="find"></div>
            
           <div style="font-size: 18px; font-weight: bold;">
             -----------------간편회원가입-----------------
           </div>
           <br>
   <form name="kakao" method="post" action="${cp}/user/Kloginok.us" >   
         <div id="getidfrom" class="kakao" onclick="kakaoLogin();"> 카카오톡으로 로그인
             <input type="hidden" id="user_name" name="user_name" value="">
            <input type="hidden" id="user_email" name="user_email" value="">
        </div>
   </form>
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
           

 
  <!-- 네이버 로그인 버튼 노출 영역 -->
            <div id="naver_id_login"></div>
            <!-- //네이버 로그인 버튼 노출 영역 -->
            <script type="text/javascript">
            	var naver_id_login = new naver_id_login("KyAp0KguqFYEXEMM559W", "http://127.0.0.1:5500/teamproject/login.html");
  	            var state = naver_id_login.getUniqState();
                	naver_id_login.setButton("green",40,62);
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
              <br>
            <div>
                계정이 있으신가요? &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="${cp}/user/login.us">로그인</a>
            </div>
            
        </div>
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
            <div class="sns">
                <?xml version="1.0" encoding="UTF-8"?>
                <!-- Generator: Adobe Illustrator 26.0.1, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" viewBox="0 0 24 24" style="enable-background:new 0 0 24 24;" xml:space="preserve" width="512" height="512">
                <g>
                <path d="M24,12.073c0,5.989-4.394,10.954-10.13,11.855v-8.363h2.789l0.531-3.46H13.87V9.86c0-0.947,0.464-1.869,1.95-1.869h1.509   V5.045c0,0-1.37-0.234-2.679-0.234c-2.734,0-4.52,1.657-4.52,4.656v2.637H7.091v3.46h3.039v8.363C4.395,23.025,0,18.061,0,12.073   c0-6.627,5.373-12,12-12S24,5.445,24,12.073z"/>
                </g>
                </svg>
    
                <?xml version="1.0" encoding="UTF-8"?>
                <!-- Generator: Adobe Illustrator 26.0.1, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" viewBox="0 0 24 24" style="enable-background:new 0 0 24 24;" xml:space="preserve" width="512" height="512">
                <g>
                <path d="M12,2.162c3.204,0,3.584,0.012,4.849,0.07c1.308,0.06,2.655,0.358,3.608,1.311c0.962,0.962,1.251,2.296,1.311,3.608   c0.058,1.265,0.07,1.645,0.07,4.849c0,3.204-0.012,3.584-0.07,4.849c-0.059,1.301-0.364,2.661-1.311,3.608   c-0.962,0.962-2.295,1.251-3.608,1.311c-1.265,0.058-1.645,0.07-4.849,0.07s-3.584-0.012-4.849-0.07   c-1.291-0.059-2.669-0.371-3.608-1.311c-0.957-0.957-1.251-2.304-1.311-3.608c-0.058-1.265-0.07-1.645-0.07-4.849   c0-3.204,0.012-3.584,0.07-4.849c0.059-1.296,0.367-2.664,1.311-3.608c0.96-0.96,2.299-1.251,3.608-1.311   C8.416,2.174,8.796,2.162,12,2.162 M12,0C8.741,0,8.332,0.014,7.052,0.072C5.197,0.157,3.355,0.673,2.014,2.014   C0.668,3.36,0.157,5.198,0.072,7.052C0.014,8.332,0,8.741,0,12c0,3.259,0.014,3.668,0.072,4.948c0.085,1.853,0.603,3.7,1.942,5.038   c1.345,1.345,3.186,1.857,5.038,1.942C8.332,23.986,8.741,24,12,24c3.259,0,3.668-0.014,4.948-0.072   c1.854-0.085,3.698-0.602,5.038-1.942c1.347-1.347,1.857-3.184,1.942-5.038C23.986,15.668,24,15.259,24,12   c0-3.259-0.014-3.668-0.072-4.948c-0.085-1.855-0.602-3.698-1.942-5.038c-1.343-1.343-3.189-1.858-5.038-1.942   C15.668,0.014,15.259,0,12,0z"/>
                <path d="M12,5.838c-3.403,0-6.162,2.759-6.162,6.162c0,3.403,2.759,6.162,6.162,6.162s6.162-2.759,6.162-6.162   C18.162,8.597,15.403,5.838,12,5.838z M12,16c-2.209,0-4-1.791-4-4s1.791-4,4-4s4,1.791,4,4S14.209,16,12,16z"/>
                <circle cx="18.406" cy="5.594" r="1.44"/>
                </g>
                </svg>


    
    
            </div>
        </div>
    </footer>
</body>
</html>