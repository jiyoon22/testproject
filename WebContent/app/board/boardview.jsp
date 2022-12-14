<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/boardview.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css"/>
    <title>fish</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
<title>Insert title here</title>
<style>
	body{ background-color:#fff; }
	table{
		border:0px;
		width:900px;
	}
</style>
</head>
<body>
<%
     String user = (String)session.getAttribute("loginUser");
%>
	<c:set var="cp" value="${pageContext.request.contextPath }"/>
 <header>
   <div class="mm">

     
     <div class="logo">
                <div class="searchplace">
                    <input type="text" class="searchbar" placeholder="지역, 낚시터명">
                </div>
                <div class="searchzone" onclick="header1()">
                    <img class="searchicon" src="${cp}/img/search_w_1.png">
                </div>
                <div class="searchzone_sub" onclick="header1()">
                    <img class="searchicon" src="${cp}/img/search_b_1.png">
                </div>
                <div class="closezone" onclick="header2()">
                    <img class="searchicon" src="${cp}/img/exit_w.png">
                </div>
                <div class="closezone_sub" onclick="header2()">
                    <img class="searchicon" src="${cp}/img/exit_b.png">
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
                    <a class="tos" href="${cp }/app/notice/notice.jsp">공지사항</a>
                    <a class="fishingtip" href="${cp }/app/Honeytip/Honeytip.jsp">낚시꿀팁</a>
                </div>
                
                <li class="morelist" id="over">
                    <a class="moretext" href="./joinview.html">더보기</a>
                    <div class="sublist" name="sublist">
                        <div id=more_sub class="morelist_sub1">
                            <a href="${cp }/app/policy/policy.jsp">이용약관</a>
                        </div>
                        <div id=more_sub class="morelist_sub2">
                          <a href="${cp }/app/QnA/QnAView.jsp">자주 묻는 질문</a>
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
 <!--<c:if test="${loginUser == null }">
		<script>
			let cp = "${pageContext.request.contextPath}";
			alert("로그인 후 이용하세요!");
			location.replace(cp+"index.jsp");
		</script> 
	</c:if>-->
	<div id="wrap">
		<table class="header_area">
			<tr align="right" valign="middle">
				<td>
				</td>
			</tr>
		</table>
		<table class="title">
			<tr align="center" valign="middle">
				<td><h3>자유게시판</h3></td>
			</tr>
		</table>
		<form>
			<table border="1" class="board_area">
				<tr height="30px">
					<th align="center" width="150px">제 목</th>
					<td>
						<input type="text" name="boardtitle" size="50" maxlength="50" value="${board.boardtitle}" readonly>
					</td>
				</tr>
				<tr height="30px">
					<th align="center" width="150px">작성자</th>
					<td>
						<input type="text" name="userid" size="50" maxlength="50" value="${board.userid}" readonly>
					</td>
				</tr>
				<tr>
					<th>조회수</th>
					<td>${board.readcount}</td>
				</tr>
				<tr height="300px">
					<th align="center" width="150px">내 용</th>
					<td>
						<textarea name="boardcontents" style="width:700px;height:290px; resize:none" readonly>${board.boardcontents }</textarea>
					</td>
				</tr>
				<c:choose>
					<c:when test="${files != null and files.size()>0 }">
						<c:forEach var="i" begin="0" end="${files.size()-1}">
							<c:set var="file" value="${files[i]}"/>
							<tr>
								<th>첨부파일${i+1}</th>
								<td>
									<a href="${cp }/board/filedownload.bo?systemname=${file.systemname}&orgname=${file.orgname}">${file.orgname}</a>
								</td>
							</tr>
							<c:forTokens items="${file.orgname}" delims="." var="token" varStatus="status">
								<c:if test="${status.last}">
									<c:if test="${token eq 'jpg' or token eq 'jpeg' or token eq 'png' or token eq 'gif' or token eq 'webp'}">
										<tr>
											<td></td>
											<td>
												<img style="width:100px;" src="${cp}/file/${file.systemname}">
											</td>
										</tr>
									</c:if>
								</c:if>
							</c:forTokens>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr>
							<td colspan="2" style="text-align: center; font-size: 20px;">첨부 파일이 없습니다.</td>
						</tr>
					</c:otherwise>
				</c:choose>
			</table>
			<br>
		</form>
		<table class="btn_area">
			<tr align="right" valign="middle">
				<td>
					<c:if test="${board.userid == loginUser }">
						<a class="b_modify" href="${cp}/board/boardmodify.bo?boardnum=${board.boardnum}&page=${param.page}&keyword=${param.keyword}">수정</a>&nbsp;&nbsp;
						<a class="b_delete" href="${cp}/board/boardremove.bo?boardnum=${board.boardnum}">삭제</a>&nbsp;&nbsp;
					</c:if>
					<a class="b_list" href="${cp}/board/boardlist.bo?page=${param.page}&keyword=${param.keyword}">목록</a>
				</td>
			</tr>
		</table>
		<div class="reply_line">
			<form name="replyForm" method="post" action="${cp}/reply/replywrite.bo">
				<input type="hidden" name="boardnum" value="${board.boardnum }">
				<input type="hidden" name="page" value="${param.page}">
				<input type="hidden" name="keyword" value="${param.keyword }">
				<table class="write_box">
					<tr>
						<td>댓글</td>
						<td>
							<textarea name="replycontents"></textarea>
							<a class="b_add" href="javascript:document.replyForm.submit()">등록</a>
						</td>
					</tr>
				</table>
			</form>
			<form name="updateForm" method="post">
				<input type="hidden" name="boardnum" value="${board.boardnum }">
				<input type="hidden" name="page" value="${param.page}">
				<input type="hidden" name="keyword" value="${param.keyword }">
				<table class="update_box">
					<c:set var="i" value="0"/>
					<c:forEach var="reply" items="${replies}">
						<tr>
							<td>${reply.userid}</td>
							<td>
								<textarea readonly name="reply${i}" id="reply${i}">${reply.replycontents}</textarea>
							</td>
							<td>
								${reply.regdate}
								<c:if test="${reply.updatechk == 'o'}">
									<br>(수정됨)
								</c:if>
								<c:if test="${reply.userid == loginUser}">
									<div class="btns">
										<a href="javascript:updateReply(${i})" id="start${i}">수정</a>
										<a href="javascript:updateOk(${i},${reply.replynum})" style="display:none;" id="end${i}">수정완료</a>
										<a href="javascript:deleteReply(${reply.replynum})">삭제</a>
									</div>
								</c:if>
							</td>
						</tr>
						<c:set var="i" value="${i+1}"/>
					</c:forEach>
				</table>
			</form>
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
      </div>
  </footer>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- jQuery에 주요 업데이트가 있을 경우 콘솔에 경고 표시, 해결할 수 있는 문제들은 스스로 해결 -->
<script src="https://code.jquery.com/jquery-migrate-1.2.1.js"></script>
<script>
	let flag = true;
	const updateForm = document.updateForm;
	function updateReply(i){
		if(flag){
			const start = document.getElementById("start"+i);
			const end = document.getElementById("end"+i);
			const reply = document.getElementById("reply"+i);
			
			start.style.display = "none";
			end.style.display = "inline-block";
			reply.removeAttribute("readonly");
			
			flag = false;
		}
		else{
			alert("수정중인 댓글이 있습니다!");
		}
	}
	function updateOk(i,replynum){
		updateForm.setAttribute("action","${cp}/reply/replymodify.bo?replynum="+replynum+"&i="+i);
		updateForm.submit();
	}
	function deleteReply(replynum){
		updateForm.setAttribute("action","${cp}/reply/replyremove.bo?replynum="+replynum)
		updateForm.submit();
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










