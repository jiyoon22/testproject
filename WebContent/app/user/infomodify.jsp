<%@page import="com.koreait.dao.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/css/infomodify.css" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <title>modify</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/pwfind.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</head>
<body>
<%
     String user = (String)session.getAttribute("loginUser");
%>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
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
                    <a class="community" href="${cp }/board/boardlist.bo">커뮤니티</a>
                    <a class="fzone" href="${cp }/app/F_zone/seoulzone.jsp">낚시장소</a>
                    <a class="tos" href="${cp }/app/notice/notice.jsp">공지사항</a>
                    <a class="fishingtip" href="${cp }/app/Honeytip/Honeytip.jsp">낚시꿀팁</a>
                </div>
                
                <li class="morelist" id="over">
                    <a class="moretext" href="./joinview.html">더보기</a>
                    <div class="sublist" name="sublist">
                        <div id=more_sub class="morelist_sub1">
                            <a href="${cp}/app/policy/policy.jsp">이용약관</a>
                        </div>
                        <div id=more_sub class="morelist_sub2">
                          <a href="${cp }/app/QnA/QnAVeiw.jsp">자주 묻는 질문</a>
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
                회원 정보 수정
            </div>
            <div class="explanation">
                회원님의 정보를 수정할 수 있습니다.
            </div>
            <div class="viewprint">
                마이페이지
            </div>
            <div class="sidebarbox">
                <ul class="sidebar">
                    <li class="minfoview"><a href="#">회원 정보 보기</a></li>
                    <li class="minfomodify"><a class="active" href="#">회원 정보 수정</a></li>
                    <li class="purchaselist"><a href="#">구매목록</a></li>
                    <li class="activebox"><a href="#">관심상품</a></li>
                    <li class="deleteinfo"><a href="${pageContext.request.contextPath}/app/user/userunregister.jsp">회원탈퇴</a></li>
                </ul>
            </div>
            <div class="labelarea">
                <!-- <div class="pw_area">새로운 비밀번호</div>
                <div class="pwre_area">새로운 비밀번호 재확인</div> -->
                <div class="id_area">아이디</div>
                <div class="name_area">이름</div>
                <div class="birth_area">생년월일</div>
                <div class="gender_area">성별</div>
                <div class="add_area">주소</div>
                <div class="email_area">이메일</div>
            </div>
            
           
            <c:forEach items="${list}" var="user">
            <div class="inputarea">
            <form name="modifyform" method="post" action="${cp}/user/usermodify.us" onsubmit="return sendit()" >
			<table>
                        <tr>
                            <td colspan="3"><input type="text" name="userid" id="userid"value="${user.userid}" readonly></td>
                        </tr>
                        <tr>
                            <td colspan="3"><input type="text" name="username" id="username"  value="${user.username}"></td>
                        </tr>

                        <tr class="yearofbirth">
                            <td><input readonly name="pnum_01" id="pnum_01" value="${user.useryear }"></input></td>
                            <td><input readonly name="pnum_01" id="pnum_01" value="${user.usermonth }"></input></td>
                            <td><input readonly name="pnum_01" id="pnum_01" value="${user.userday }"></input></td>
                        </tr>
                        <tr>
                            <td id="usedblank"></td>
                        </tr>
                        <tr>
                            <td colspan="3" class="gender">
                                <input type="input" name="gender" id="gender" class="gender" readonly value="${user.usergender}">
                            </td>
                        </tr>
                        <tr>
                            <td id="usedblank"></td>
                        </tr>
                        <tr class="zipcode_area">
                            <td colspan="2"><input readonly name="zipcode" type="text"
                                id="sample6_postcode" placeholder="우편번호"  value="${user.zipcode }" >
                            </td>
                            <td colspan="">
                                <input type="button" onclick="findAddr()" value="우편번호">
                            </td>
                        </tr>
                        <tr class="addr_area">
                            <td colspan="3"><input readonly name="addr" type="text"
                                id="sample6_address" placeholder="주소"  value="${user.addr}"></td>
                        </tr>
                        <tr>
                            <td colspan="3"> <input name="addrdetail" type="text"
                                id="sample6_detailAddress" placeholder="상세주소" value="${user.addrdetail }"></td>  
                        </tr>
                        <tr>
                            <td id="usedblank"></td>
                        </tr>
                        <tr class="emailarea">
                            <td colspan="3"><input type="text" name="str_email01" id="str_email01" style="width:25%" value="${user.str_email01 }"> @
                                <input type="text" name="str_email02" id="str_email02" style="width:90px;" value="${user.str_email02 }">
                             </td>
                        </tr>
                        <tr>
                            <td colspan="3">

                                <input type="submit" value="수정하기">
                            </td>
                        </tr>
                        <tr>

                            <td colspan="3">
                                <input type="button" value="비밀번호수정" name="pwmodify" onclick="location.href='/user/pwmodify.us' ">
                            </td>
                        </tr>

                      </table>
                    </form>
            	</div>
            </c:forEach>



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
<script>
function findAddr(){
	new daum.Postcode({
        oncomplete: function(data) {
        	
        	console.log(data);
        	
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var jibunAddr = data.jibunAddress; // 지번 주소 변수
            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample6_postcode').value = data.zonecode;
            if(roadAddr !== ''){
                document.getElementById("sample6_address").value = roadAddr;
            } 
            else if(jibunAddr !== ''){
                document.getElementById("sample6_address").value = jibunAddr;
            }
        }
    }).open();
}
</script>
<script type="text/javascript">
//이메일 입력방식 선택
$('#selectEmail').change(function(){
   $("#selectEmail option:selected").each(function () {
		
		if($(this).val()== '1'){ //직접입력일 경우
			 $("#str_email02").val('');                        //값 초기화
			 $("#str_email02").attr("disabled",false); //활성화
		}else{ //직접입력이 아닐경우
			 $("#str_email02").val($(this).text());      //선택값 입력
			 $("#str_email02").attr("disabled",true); //비활성화
		}
   });
});
</script>
<script>
   $(document).ready(function(){            
    var now = new Date();
    var year = now.getFullYear();
    var mon = (now.getMonth() + 1) > 9 ? ''+(now.getMonth() + 1) : '0'+(now.getMonth() + 1); 
    var day = (now.getDate()) > 9 ? ''+(now.getDate()) : '0'+(now.getDate());           
    //년도 selectbox만들기               
    for(var i = 1900 ; i <= year ; i++) {
        $('#year').append('<option value="' + i + '">' + i + '</option>');    
    }

    // 월별 selectbox 만들기            
    for(var i=1; i <= 12; i++) {
        var mm = i > 9 ? i : "0"+i ;            
        $('#month').append('<option value="' + mm + '">' + mm + '</option>');    
    }
    
    // 일별 selectbox 만들기
    for(var i=1; i <= 31; i++) {
        var dd = i > 9 ? i : "0"+i ;            
        $('#day').append('<option value="' + dd + '">' + dd+ '</option>');    
    }
    $("#year  > option[value="+year+"]").attr("selected", "true");        
    $("#month  > option[value="+mon+"]").attr("selected", "true");    
    $("#day  > option[value="+day+"]").attr("selected", "true");       
  
})
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