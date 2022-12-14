<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang= 'en'>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="under1"
	href="${pageContext.request.contextPath}/img/under1.png">
	<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/policy4.css">
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

<title>Fish:policy</title>
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
                          <a href="${cp}/app/QnA/QnAView">자주 묻는 질문</a>
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
<div class="policy_wrap">
               <div class="moremore" id="content">
            <nav>
                <ul>
                    <li>
                        <a href="${pageContext.request.contextPath}/app/notice/notice.jsp"  class="more_a">공지사항</a>
                    </li>
                    <li>
                    <a href="${pageContext.request.contextPath}/app/QnA/QnAView.jsp" class="more_a">자주 묻는 질문</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/app/policy/policy.jsp" id="click"  class="more_a">약관 및 정책</a>
                    </li>
                </ul>
            </nav>
            </div>
        
        <div class="t_policy">
            <div class="policy">
                <div class="tab">
                    <ul>
                        <li>
                            <a href="${pageContext.request.contextPath}/app/policy/policy.jsp" class="tab_1">이용약관</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/app/policy/policy2.jsp" class="tab_2">위치기반 서비스 이용약관</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/app/policy/policy3.jsp" class="tab_3">개인정보 처리방침</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/app/policy/policy4.jsp" class="tab_on">소비자 분쟁해결 기준</a>
                        </li>
                    </ul>
                </div> 
                <div class="t_more">
                    <div class="p_more">
                        <div class="title">
                            <h2>소비자 분쟁해결 기준</h2> 
                        </div>
                        <div class="p_wrap">
                            <div class="policy_list">
                                <a href="javascript:GetShow()"  class="list_title">
                                    <span>01.</span>
                                    <strong>제 1조 (목적)</strong>
                                    <img src="${pageContext.request.contextPath}/img/under1.png" width="15px" class="under">
                                    <div class="list_text" id="list_text" style="display: none;">
                                        <p>&nbsp;이 소비자 분쟁해결 기준은 ㈜fish컴퍼니(이하 "fish"라고 한다)가 운영하는 사이트[모바일 어플리케이션 및 온라인 웹페이지(https://www.goodchoice.kr)]에서 제공하는 통신판매중개서비스를 이용하는 소비자와 "fish" 또는 제휴업체(소비자에게 숙소, 상품, 서비스 등을 제공하는 업체를 말한다) 간 발생하는 분쟁이 원활하게 해결될 수 있도록 그 기준을 정한 것입니다.</p>
                                            
                                        </p>
                                </div>
                            </a>
                        </div>
                        <div class="policy_list">
                            <a href="javascript:GetShow2()"  class="list_title">
                                <span>02.</span>
                                <strong>제 2조 (역할 및 분쟁해결기준)</strong>
                                <img src="${pageContext.request.contextPath}/img/under1.png" width="15px"  class="under">
                                <div class="list_text" id="list_text_2" style="display: none;">
                                    <ul>
                                        <li>
                                            ① "fish컴퍼니"는 통신판매중개업자로서 소비자와 제휴업체간 자유로운 상품 등의 거래를 위한 시스템을 운영 및 관리, 제공하는 역할을 수행하며, "fish컴퍼니"의 귀책사유로 인하여 시스템 오류가 발생하여 소비자가 피해를 입은 경우 그에 대한 책임을 부담합니다.
                                        </li>
                                        <li>② 제휴업체는 판매하는 상품 등에 대한 정보 제공, 소비자와의 상품 거래, 계약의 취소, 대금의 환급 역할을 수행하며, 제휴업체의 귀책사유로 인하여 법령에 따라 제공되어야 하는 상품 등에 대한 정보가 잘못 제공 또는 누락되거나, 상품 거래와 관련하여 소비자와 사전 약정한 내용을 위반하거나, 계약의 취소, 대금의 환급과 관련하여 소비자가 피해를 입은 경우 그에 대한 책임을 부담합니다.</li>
                                        <li>③ 소비자가 이용약관의 내용을 위반하거나, 기타 소비자의 귀책사유로 인하여 발생한 분쟁과 관련하여서는 소비자가 그 책임을 부담합니다.</li>
                                        <li>④ "fish컴퍼니"와 소비자 또는 제휴업체와 소비자 간에 분쟁의 해결기준에 관한 약정이 있는 경우에 해당 약정에 따라 분쟁을 해결합니다. 단, 당사자 간의 약정이 「전자상거래 등에서의 소비자보호에 관한 법률」, 「전자금융거래법」, 「소비자기본법」 등 관련 법령의 강행규정을 위반하거나 당사자 간에 약정된 사항이 없는 경우에는 관련 법령 및 공정거래위원회 고시 「소비자분쟁해결기준」에 따릅니다.</li>
                                        
                                    </ul>
                            </div>
                        </a>
                    </div>
                    <div class="policy_list">
                        <a href="javascript:GetShow3()"  class="list_title">
                            <span>03.</span>
                            <strong>제 3조 (분쟁해결 절차)</strong>
                            <img src="${pageContext.request.contextPath}/img/under1.png" width="15px" class="under">
                            <div class="list_text" id="list_text_3" style="display: none;">
                               
                                <ul>
                                    <li>① "fish컴퍼니"는 거래 과정에서 발생하는 소비자와 제휴업체 간의 분쟁 또는 "fish컴퍼니"가 제공하는 서비스에 대하여 소비자가 제기하는 정당한 의견이나 불만을 신속, 공정하게 해결하기 위하여 최선을 다합니다.</li>
                                    <li>② "fish컴퍼니"는 소비자로부터 접수한 불만이나 분쟁의 원인 등을 조사하여 이를 우선적으로 처리하고, 그 진행 경과 및 처리결과를 소비자에게 통보합니다. 다만, 그 유형 및 내용에 따라 추가 확인이 필요하거나 신속한 처리가 곤란한 경우에는 소비자에게 그 사유와 처리일정을 안내합니다.</li>
                                    <li>③ 전자상거래 분쟁과 관련하여 소비자의 피해 구제 신청이 있는 경우에는 공정거래위원회 또는 시도지사가 의뢰하는 분쟁조정기관의 조정에 따라 해결할 수 있습니다.</li>
                                    <li>④ 본 기준에서 정하지 아니한 사항은 관련 법령에 따라 처리합니다.</li>
                                </ul>
                        </div>
                    </a>
                </div>
                
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
function GetShow(){
    var con = document.getElementById("list_text");
    if(con.style.display == "none"){
        con.style.display = "block";
    }
    else{
        con.style.display = "none";
    }
  }
  function GetShow2(){
    var con = document.getElementById("list_text_2");
    if(con.style.display == "none"){
        con.style.display = "block";
    }
    else{
        con.style.display = "none";
    }
  }
  function GetShow3(){
    var con = document.getElementById("list_text_3");
    if(con.style.display == "none"){
        con.style.display = "block";
    }
    else{
        con.style.display = "none";
    }
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