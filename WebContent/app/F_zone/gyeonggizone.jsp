<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>f_gyeonggi</title>
<link href="${pageContext.request.contextPath}/css/seoulzone.css" rel="stylesheet">
 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    <link
    rel="stylesheet"
    href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css"/>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</head>

<body>
<%
     String user = (String)session.getAttribute("loginUser");
%>
	<c:set var="cp" value="${pageContext.request.contextPath}"/>
	<c:if test="${loginUser == null }">
		<script>
			alert("로그인 후 이용하세요!");
			// reqplace는 현재 페이지를 바꾸는 것 대체하는 것이기 때문에 뒤로가기 버튼이 안된다. 
			location.replace("${cp}/user/login.us");
		</script>
	</c:if>
	<c:if test="${cookie.w.value == 'f'}">
		<script>
			alert("게시글 작성 실패!");
			//자바스크립트로 쿠키삭제 하기
		</script>
	</c:if>
	<header>
   <div class="mm">

     
     <div class="logo">
                <div class="searchplace">
                    <input type="text" class="searchbar" placeholder="지역, 낚시터명">
                </div>
                <div class="searchzone" onclick="header1()">
                    <img class="searchicon" src="${cp }/img/search_w_1.png">
                </div>
                <div class="searchzone_sub" onclick="header1()">
                    <img class="searchicon" src="${cp }/img/search_b_1.png">
                </div>
                <div class="closezone" onclick="header2()">
                    <img class="searchicon" src="${cp }/img/exit_w.png">
                </div>
                <div class="closezone_sub" onclick="header2()">
                    <img class="searchicon" src="${cp }/img/exit_b.png">
                </div>
                <div class="loginbutton">
               	<%if(user==null){ %>
                    <a class="logintext" href="${cp }/user/login.us">로그인</a>
                    <a class="jointext" href="${cp}/user/userjoin.us">회원가입</a>
                 <%} else { %>
                   <a class="logintext" href="${cp }/user/logout.us">로그아웃</a>
                    <a class="jointext" href="${cp}/user/userinfo.us">내정보</a>
                  <%} %>
     
                </div>
                <div class="menubutton">
                    <a class="community" href="${cp}/board/boardlist.bo">커뮤니티</a>
                    <a class="fzone" href="${cp }/app/F_zone/seoulzone.jsp">낚시장소</a>
                    <a class="tos" href="${cp}/app/notice/notice.jsp">공지사항</a>
                    <a class="fishingtip" href="${cp}/app/Honeytip/Honeytip.jsp">낚시꿀팁</a>
                </div>
                
                <li class="morelist" id="over">
                    <a class="moretext" href="./joinview.html">더보기</a>
                    <div class="sublist" name="sublist">
                        <div id=more_sub class="morelist_sub1">
                            <a href="${cp}/app/policy/policy.jsp">이용약관</a>
                        </div>
                        <div id=more_sub class="morelist_sub2">
                          <a href="${cp}/app/QnA/QnAView.jsp">자주 묻는 질문</a>
                        </div>
                        <div id=more_sub class="morelist_sub3">
                            <a href="#">오시는길</a>
                        </div>
                        <div id=more_sub class="morelist_sub4">
                            <a href="#">쓸게없당</a>
                        </div>
                    </div>
                </li>
    </div>
    
  </div>
</header>
<main>
        <div class="main">
            <div class="viewinfo">
                낚시장소
            </div>            

            <div class="areabox">
                <button class="area" onclick="location.href='${cp}/app/F_zone/seoulzone.jsp'">서울특별시</button>
                <button class="area" onclick="location.href='${cp}/app/F_zone/gyeonggizone.jsp'"style="background-color: #233156; color:white;">경기도</button>
                <button class="area" onclick="location.href='${cp}/app/F_zone/incheonzone.jsp'">인천광역시</button>
                <button class="area" href="#">강원도</button>
                <button class="area" href="#">충청도</button>
                <button class="area" href="#">경상도</button>
                <button class="area" href="#">전라도</button>
                <button class="area" href="#">제주도</button>
            </div>            
            <div class="cafebox1">
                <a class="picturebox" href="${cp }/app/mapdetail/gyeonggidetail1.jsp">
                    <img src="${cp }/img/말봉바다낚시터.jpg">
                </a>
                <div class="namebox">
                    <a href="${cp }/app/mapdetail/gyeonggidetail1.jsp">말봉바다낚시터</a>
                </div>
                <div class="mapbox">
                    <a class="nmap" onclick="popup()" id="map1.html">카카오맵 검색</a>
                </div>
            </div>
            <div class="cafebox1">
                <a class="picturebox" href="${cp }/app/mapdetail/gyeonggidetail2.jsp">
                    <img src="${cp }/img/서신바다낚시터.jpg">
                </a>
                <div class="namebox">
                    <a href="${cp }/app/mapdetail/gyeonggidetail2.jsp">서신바다낚시터</a>
                </div>
                <div class="mapbox">
                    <a class="nmap" onclick="popup1()">카카오맵 검색</a>
                </div>
            </div>
            <div class="cafebox1">
                <a class="picturebox" href="${cp }/app/mapdetail/gyeonggidetail3.jsp">
                    <img src="${cp }/img/리얼실내바다낚시터.jpg">
                </a>
                <div class="namebox">
                    <a href="${cp }/app/mapdetail/gyeonggidetail2.jsp">리얼실내바다낚시터</a>
                </div>
                <div class="mapbox">
                    <a class="nmap" onclick="popup2()">카카오맵 검색</a>
                </div>
            </div>
            <div class="cafebox2">
                <a class="picturebox" href="map1.html" onclick="window.open(this.href, '_black'); return false;">
                    <img src="${cp }/img/지곡낚시터.jpg">
                </a>
                <div class="namebox">
                    <a href="map1.html" onclick="window.open(this.href, '_black'); return false;">지곡낚시터</a>
                </div>
                <div class="mapbox">
                    <a class="nmap" href="map1.html" onclick="window.open(this.href, '_black'); return false;">카카오맵 검색</a>
                </div>
            </div>
            <div class="cafebox2">
                <a class="picturebox" href="map1.html" onclick="window.open(this.href, '_black'); return false;">
                    <img src="${cp }/img/낚짜.jpg">
                </a>
                <div class="namebox">
                    <a href="map1.html" onclick="window.open(this.href, '_black'); return false;">낚짜</a>
                </div>
                <div class="mapbox">
                    <a class="nmap" href="map1.html" onclick="window.open(this.href, '_black'); return false;">카카오맵 검색</a>
                </div>
            </div>
            <div class="cafebox2">
                <a class="picturebox" href="map1.html" onclick="window.open(this.href, '_black'); return false;">
                    <img src="${cp }/img/오빈낚시터.jpg">
                </a>
                <div class="namebox">
                    <a href="map1.html" onclick="window.open(this.href, '_black'); return false;">오빈낚시터</a>
                </div>
                <div class="mapbox">
                    <a class="nmap" href="map1.html" onclick="window.open(this.href, '_black'); return false;">카카오맵 검색</a>
                </div>
            </div>
            
        </div>
    </main>
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
        
        function popup(){
            var url = "${cp}/app/map/gyeonggizonemap1.jsp";
            var name = "kakaomap1_test";
            var option = "width = 800, height = 600, top = 100, left = 200, location = no"
            window.open(url, name, option);
        }
        function popup1(){
            var url = "${cp}/app/map/gyeonggizonemap2.jsp";
            var name = "kakaomap2_test";
            var option = "width = 800, height = 600, top = 100, left = 200, location = no"
            window.open(url, name, option);
        }
        function popup2(){
            var url = "${cp}/app/map/gyeonggizonemap3.jsp";
            var name = "kakaomap2_test";
            var option = "width = 800, height = 600, top = 100, left = 200, location = no"
            window.open(url, name, option);
        }
        
    
    
    </script>
    <script>
        const $nav = document.querySelector('#tab-button-nav')
        const $sections = document.querySelectorAll('.tab-section');
    
        $nav.addEventListener('click', (e) => {
          if (!e.target.classList.contains('tab-button')) {
            return;
          }
          
          const focusedTabId = e.target.dataset.tabSection;
    
          $sections.forEach(($section) => {
            if ($section.id === focusedTabId) {
              $section.removeAttribute('hidden');
            } else {
              $section.setAttribute('hidden', true);
            }
          });
        });
      </script>
          <script>
 $(document).ready(function(){
$(window).scroll(function(){
        var scroll = $(window).scrollTop();
        if (scroll > 1) {
          $(".searchzone").css("visibility" , "hidden");
          $(".searchzone_sub").css("visibility" , "visible");
          $(".logo").css("background" , "#ffffff");       
          $(".login").css("background" , "#ffffff");
          $(".logintext").css("color" , "#233156");
          $(".jointext").css("color" , "#233156");
          $(".moretext").css("color" , "#233156");
          $(".community").css("color" , "#233156");
          $(".fishingtip").css("color" , "#233156");
          $(".fzone").css("color" , "#233156");
          $(".tos").css("color" , "#233156");
          $(".logintext , .jointext , .moretext , .fishingtip , .tos , .fzone , .community").css("font-weight" , "bold");
          $(".logo").css("box-shadow" , "0px 10px 10px  rgb(213, 213, 213)");
        }
        else{
          $(".searchzone").css("visibility" , "visible");
          $(".searchzone_sub").css("visibility" , "hidden");
          $(".logo").css("background" , "#233156");   
          $(".login").css("background" , "#233156");   
          $(".logintext").css("color" , "#ffffff");
          $(".jointext").css("color" , "#ffffff");
          $(".moretext").css("color" , "#ffffff");
          $(".community").css("color" , "#ffffff");
          $(".fishingtip").css("color" , "#ffffff");
          $(".fzone").css("color" , "#ffffff");
          $(".tos").css("color" , "#ffffff");
          $(".logintext, .jointext, .moretext, .fishingtip, .tos, .fzone, .community").css("font-weight" , "550");
          $(".logo").css("box-shadow" , "0px 0px 0px  rgb(0, 0, 0)");
        }
})
})
function header1()  {
        $('.searchzone').css('transform','translateX(-635px)');
        $('.searchzone').css('transition-duration','0.1s');
        $('.searchzone').css('transition-timing-function','ease');
        $('.searchzone_sub').css('transform','translateX(-635px)');
        $('.searchzone_sub').css('transition-duration','0.1s');
        $('.searchzone_sub').css('transition-timing-function','ease');
        $('.main').css('opacity','0.1');
        $('.searchplace').css('visibility','visible');
        $('.closezone').css('visibility','visible');
        $('.menubutton').css('visibility','hidden');
}
function header2()  {
        $('.searchzone').css('transform','translateX(0px)');
        $('.searchzone_sub').css('transform','translateX(0px)');
        $('.main').css('opacity','1');
        $('.searchplace').css('visibility','hidden');
        $('.closezone').css('visibility','hidden');
        $('.closezone_sub').css('visibility','hidden');
        $('.menubutton').css('visibility','visible');
}
</script>
      
</html>