<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cp" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/boardmodify.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
	<div id="wrap">
		<table class="header_area">
			<tr align="right" valign="middle">
				<td>
					<span></span>&nbsp;&nbsp;
				</td>
			</tr>
		</table>
		<table class="title">
			<tr align="center" valign="middle">
				<td><h3>자유게시판</h3></td>
			</tr>
		</table>
		<form id="boardForm" method="post" name="boardForm" action="${cp}/board/boardmodifyok.bo" enctype="multipart/form-data">
			<input type="hidden" name="boardnum" value="${board.boardnum}">
			<input type="hidden" name="keyword" value="${param.keyword}">
			<input type="hidden" name="page" value="${param.page}">
			<table border="1" style="border-collapse: collapse;">
				<tr height="30px">
					<th align="center" width="150px">제 목</th>
					<td>
						<input type="text" name="boardtitle" size="50" maxlength="50" value="${board.boardtitle}">
					</td>
				</tr>
				<tr height="30px">
					<th align="center" width="150px">작성자</th>
					<td>
						<input type="text" name="userid" size="50" maxlength="50" value="${loginUser}" readonly>
					</td>
				</tr>
				<tr height="300px">
					<th align="center" width="150px">내 용</th>
					<td>
						<textarea name="boardcontents" style="width:700px;height:290px; resize:none">${board.boardcontents}</textarea>
					</td>
				</tr>
				<c:forEach var="i" begin="0" end="1">
					<tr>
						<th>파일 첨부${i+1}</th>
						<td class="file${i+1}_cont">
							<div style="float:left;">
								<input type="file" name="file${i+1}" id="file${i+1}" style="display:none;">
								<span id="file${i+1}name">
									<%-- <c:choose>
										<c:when test="${i<files.size()}">
											${files[i].orgname}
										</c:when>
										<c:otherwise>
											선택된 파일 없음
										</c:otherwise>
									</c:choose> --%>
									${i<files.size() ? files[i].orgname : "선택된 파일 없음"}
								</span>
								
								<input type="hidden" name="filename" value="${i<files.size() ? files[i].orgname : ''}">
							</div>
							<div style="float:right; margin-right:100px;">
								<a id="b_modify" href="javascript:upload('file${i+1}')">파일 선택</a>
								<a id="b_delete" href="javascript:cancelFile('file${i+1}')">첨부 삭제</a>
							</div>
							<c:forTokens items="${files[i].orgname}" delims="." var="token" varStatus="status">
								<c:if test="${status.last}">
									<c:if test="${token eq 'jpg' or token eq 'jpeg' or token eq 'png' or token eq 'gif' or token eq 'webp'}">
										<img src="${cp}/file/${files[i].systemname}" class="thumbnail">
									</c:if>
								</c:if>
							</c:forTokens>
						</td>
					</tr>
				</c:forEach>
			</table>
			<br>
		</form>
		<table class="btn_area">
			<tr align="right" valign="middle">
				<td>
					<a id="b_sujeongok" href="javascript:document.boardForm.submit()">수정완료</a>&nbsp;&nbsp;
					<a id="b_list" href="${cp}/board/boardlist.bo?page=${param.page}">목록</a>
				</td>
			</tr>
		</table>
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
	function upload(name){
		$("#"+name).click();
	}
	//$(제이쿼리선택자).change(함수) : 해당 선택자의 요소에 변화가 일어난다면 넘겨주는 함수 호출
	$("[type='file']").change(function(e){
		console.log("왜????");
		//e : 파일이 업로드된 상황 자체를 담고있는 객체
		//e.target : 파일이 업로드가 된 input[type=file] 객체(태그객체)
		//e.target.files : 파일태그에 업로드를 한 파일 객체들의 배열
		let file = e.target.files[0];
		
		if(file == undefined){
			//$("#file1name")
			$("#"+e.target.id+"name").text("선택된 파일 없음");
			$("."+e.target.id+"_cont .thumbnail").remove();
		}
		else{
			$(this).next().next().val(file.name)
			
			$("#"+e.target.id+"name").text(file.name);
			
			//["QR","png"]
			let ext = file.name.split(".").pop();
			if(ext == 'jpeg' || ext == 'jpg' || ext == 'png' || ext == 'gif' || ext == 'webp'){
				$("."+e.target.id+"_cont .thumbnail").remove();
				const reader = new FileReader();
				
				reader.onload = function(ie){
					const img = document.createElement("img");
					img.setAttribute("src",ie.target.result)
					img.setAttribute("class",'thumbnail');//<img src="???/QR.png" class="thumbnail">
					document.querySelector("."+e.target.id+"_cont").appendChild(img);
				}
				
				reader.readAsDataURL(file);
			}
			
		}
	});
	function cancelFile(name){
		if($.browser.msie){
			$("input[name="+name+"]").replaceWith( $("input[name="+name+"]").clone(true) );
		}
		else{
			$("input[name="+name+"]").val("");
		}
		$("#"+name+"name").text("선택된 파일 없음");
		$("."+name+"_cont .thumbnail").remove();
		$("#"+name+"name").next().val("");
		
	}
	function sendit(){
		const boardForm = document.boardForm;
		
		const boardtitle = boardForm.boardtitle;
		if(boardtitle.value == ""){
			alert("제목을 입력하세요!");
			boardtitle.focus();
			return false;
		}
		
		const boardcontents = boardForm.boardcontents;
		if(boardcontents.value == ""){
			alert("내용을 입력하세요!");
			boardcontents.focus();
			return false;
		}
		
		boardForm.submit();
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