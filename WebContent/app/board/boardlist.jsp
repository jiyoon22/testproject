<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/boardlist.css">
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
<title>자유게시판</title>
<style>
	body{ background-color:#fff; }
	table{
		border:0px;
		width:900px;
	}
	</style>
</head>
<body style="margin:0 auto;">
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
	
	
	
	
	<div class="total">
		<!-- 로그아웃 버튼 배치할 테이블 -->
		<table class="header_area">
			<tr align="right" valign="middle">
				<td>
					<span></span>
				</td>			
			</tr>
		</table>

		<!-- 타이틀과 글 개수 띄워주는 테이블 -->
		<table class="title">
			<tr align="center" valign="middle">
				<td><h3>자유게시판</h3></td>
			</tr>
			<tr align="right" valign="middle">
				<td>글 개수 : ${totalCnt}</td>
			</tr>
		</table>

		<!-- 게시글 리스트 띄우는 테이블 -->
		<table class="list">
			<tr align="center" valign="middle">
				<th width="8%">번호</th>
				<th width="50%">제목</th>
				<th width="15%">작성자</th>
				<th width="17%">날짜</th>
				<th width="10%">조회수</th>
			</tr>
			<c:choose>
				<c:when test="${list != null and list.size()>0 }">
					<c:forEach items="${list}" var="board">
						<tr>
							<td>${board.boardnum}</td>
							<td><a href="${cp}/board/boardview.bo?boardnum=${board.boardnum}&page=${page}&keyword=${keyword}">${board.boardtitle }</a></td>
							<td>${board.userid }</td>
							<td>${board.regdate}<c:if test="${board.regdate != board.updatedate }">(수정됨)</c:if></td>
							<td>${board.readcount }</td>
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<td colspan="5" style="text-align: center; font-size: 15px;">등록된 게시글이 없습니다.</td>
					</tr>
				</c:otherwise>
			</c:choose>
		</table><br>
		<div class="sequence">
		<a class="new" href="${cp}/board/boardlist.bo?keyword=${keyword}">최신순</a>
		<a class="hot" href="${cp}/board/population.bo?keyword=${keyword}">인기순</a>
		
		<a class="old" href="">오래된순</a>
		</div>
		<!-- 페이징 처리하는 테이블 -->
		<table class="pagination">
			<tr align="center" valign="middle">
				<td>
					<c:if test="${startPage != 1}">
						<a href="${cp }/board/boardlist.bo?page=${startPage - 1}&keyword=${keyword}">&lt;</a>
					</c:if>
					<c:forEach begin="${startPage}" end="${endPage}" var="i">
						<c:choose>
							<c:when test="${page == i}">
								<span class="nowPage">${i}</span>
							</c:when>
							<c:otherwise>
								<a href="${cp }/board/boardlist.bo?page=${i}&keyword=${keyword}">${i}</a>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:if test="${endPage != totalPage }">
						<a href="${cp }/board/boardlist.bo?page=${endPage + 1}&keyword=${keyword}">&gt;</a>
					</c:if>
				</td>
			</tr>
		</table> 
		<!-- 글쓰기 버튼 배치하는 테이블 -->
		<table style="border:0px; width:900px;">
			<tr align="center" valign="middle">
				<td><a class="write" href="${cp}/board/boardwrite.bo?page=${page}&keyword=${keyword}">글쓰기</a></td>
			</tr>
		</table>
		<div class="search_area">
			<input type="search" id="q" name="q" value="${keyword == null ? '' : keyword}">
			<input type="button" value="검색" onclick="search()">
		</div>
	</div>
</body>
<script>
	function search(){
		const q = document.getElementById("q");
		location.href = "${cp}/board/boardlist.bo?keyword="+q.value;
	}
	

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




