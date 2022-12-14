<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="under1" href="${pageContext.request.contextPath}/img/under1.png">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/QnA.css">
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

<title>QnA페이지</title>


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
                    <a class="tos" href="${cp }/app/notice/notice.jsp">공지사항</a>
                    <a class="fishingtip" href="${cp }/app/Honeytip/Honeytip.jsp">낚시꿀팁</a>
                </div>
                
                <li class="morelist" id="over">
                    <a class="moretext" href="./joinview.html">더보기</a>
                    <div class="sublist" name="sublist">
                        <div id=more_sub class="morelist_sub1">
                            <a href="${cp }/app/policy.policy.jsp">이용약관</a>
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
<div class="QnA_wrap">
        <div class="moremore" id="content">
            <nav>
                <ul>
                    <li>
                        <a href="${pageContext.request.contextPath}/app/notice/notice.jsp"  class="more_a">공지사항</a>
                    </li>
                    <li>
                    <a href="${pageContext.request.contextPath}/app/QnA/QnAView.jsp" id="click" class="more_a">자주 묻는 질문</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/app/policy/policy.jsp" class="more_a">약관 및 정책</a>
                    </li>
                </ul>
            </nav> 
            </div>
            <div class="t_QnA">
                <div class="QnA">
                    <div class="tab">
                        <span class="tab_btn">
                            	자주 묻는 질문
                        </span>
                    </div>
                    <div class="tab_more">
                        <ul class="QnA_list" id="QnA">
                            <li>
                                <a href="javascript:GetShow()" class="all_list" id="QnA_tab">
                                    <p>(출조) 낚시예약을 취소하고 싶어요.</p>
                                    <img src="${pageContext.request.contextPath}/img/under1.png" width="18px" class="under">
                                    <div class="allspan" id="ans_1" style="display: none;">
                                        <span class="QnAspan">
                                            	예약취소는  앱/웹 > 내정보 > 예약/구매내역에서 직접 가능합니다
	                                             <br>
	                                             <br>
												예약/결제 진행 당시 안내된 취소/환불 규정에 따라 처리되며, 취소수수료가 발생할 경우 취소수수료를 차감한 금액으로 환불 처리됩니다. <br>
												일부 출조낚시에 한해 취소가 가능한 시점이나 앱/웹에서 취소가 불가할 수 있으니 이 경우에는 fish고객센터로 요청해 주시길 바랍니다.
                                        </span>
                                	</div>
                                 </a>
                            </li>
                            <li>
                                <a href="javascript:GetShow2()" class="all_list" id="QnA_tab">
                                 <p>(선상낚시) 기상악화로 인한 예약 취소는 어떻게 하나요?</p>
                                 <img src="${pageContext.request.contextPath}/img/under1.png" width="20px" class="under"> 
                                 <div class="allspan" id="ans_2" style="display: none;">
                                    <span  class="QnAspan">
							                                        천재지변(기상악화)등 불가항력적인 사유로 이용이 불가할 경우 고객센터로 예약내역 및 증빙서류(결항확인서, e-티켓, 진단확인서 등)를 보내주시면 확인 후 예약취소 가능 여부를 확인해 드립니다. <br>
							                                        <br>
							                                        다만, 당사는 판매 중개 플랫폼의 입장으로 제휴점에 대하여 취소/환불을 강제할 수 없어 각 제휴점의 규정에 근거하여 상황에 따라 수수료가 발생하거나 취소가 어려울 수 있는 점 양해 부탁드립니다. <br>
                                        <br>
							                                        [접수방법] <br>
							                                        ※ 이메일 : Helpyou@fish.co.kr (예약자명, 출조확인서  필수) <br>
							                                        ※ 카카오톡 : 카카오톡 내 플러스 친구 > fish 고객센터 추가
                                    </span>   
                            </div>
                            </a>
                             </li>
                             <li>
                                <a href="javascript:GetShow3()" class="all_list" id="QnA_tab">
                                 <p>(공통) 낚시 예약대기 건 예약취소하고 싶어요.</p>
                                 <img src="${pageContext.request.contextPath}/img/under1.png" width="20px" class="under" > 
                                 <div class="allspan" id="ans_3" style="display: none;">
                                    <span  class="QnAspan">
						                                        예약 대기중에는 fish 고객센터에 예약취소 요청해주시길 바랍니다. <br>
						                                        <br>
						
						                                        단, 예약확정이 될 경우 수수료가 발생하거나 예약취소가 불가할 수 있습니다.
                                    </span>
                                
                            </div>
                           </a>    
                             </li>
                             <li>
                                <a href="javascript:GetShow4()" class="all_list" id="QnA_tab">
                                 <p>(출조) 예약 날짜/장소를 변경하고 싶어요.</p>
                                 <img src="${pageContext.request.contextPath}/img/under1.png" width="20px" class="under" > 
                                 <div class="allspan" id="ans_4" style="display: none;">
                                    <span  class="QnAspan">
                                       	 예약 결제 완료 후 날짜 및 장소 등 부분 변경은 불가합니다. 
                                       	 <br>
                                         <br>
			
										예약취소와 동일하게 취소 및 환불 규정에 따라 처리되므로 예약취소가 가능한 기간에는 예약취소 후 재결제 하셔서 이용 부탁드립니다. 
										 <br><br>
										
										만약, 예약취소가 불가하거나 수수료가 발생하는 경우라면 fish 고객센터로 문의해주시길 바랍니다.
                                    </span>
                                
                            </div>
                            </a>
                             </li>
                             <li>
                                <a href="javascript:GetShow5()" class="all_list" id="QnA_tab">
                                 <p>(공통) 현금영수증을 발급받고 싶어요.</p>
                                 <img src="${pageContext.request.contextPath}/img/under1.png" width="20px" class="under" > 
                                 <div class="allspan" id="ans_5" style="display: none;">
                                    <span class="QnAspan" >
					                                             현금영수증은 현금성 결제수단으로 결제 시 발급이 가능합니다. <br><br>
					
										결제 단계에서 현금영수증을 신청하면 자동으로 발행되지만,
										신청을 누락했거나 발행받지 못한 경우라면 영수증 확인 후 국세청에서 자진발급분을 등록해 주시길 바랍니다. <br><br>
										
										[네이버페이]
										- 결제 단계에서 현금영수증 신청하면 자동으로 발행 (19년 12월 26일 시행)
										- 자진발급 : 네이버페이 > 결제내역 > 주문건 > 주문상세정보 > 영수증 발급내역 > 현금영수증 확인
										- 단, 19년 12월 26일 10시 이전 결제 건은 고객센터로 요청 <br><br>
										
										[간편계좌이체 / TOSS / PAYCO]
										- 결제 단계에서 현금영수증 신청하면 자동으로 발행
										- 단, 간편계좌이체의 경우 신청 누락 시 고객센터로 요청 <br><br>
										
										[카카오페이] 
										- 카카오페이머니 결제 시 자동으로 발행
										- 자진발급 : 카카오톡 > pay > 우측톱니바퀴(나의 카카오페이) > 이용내역 > 결제 > 개별 상세내역 > 현금영수증 확인
                                    </span>
                                    </div>
                                </a>
                            
                             </li>
                             <li>
                                <a href="javascript:GetShow6()" class="all_list" id="QnA_tab">
                                 <p>(공통) 영수증 거래 내역서를 발급받고 싶어요.</p>
                                 <img src="${pageContext.request.contextPath}/img/under1.png" width="20px" class="under"> 
                                 <div class="allspan" id="ans_6" style="display: none;">
                                    <span  class="QnAspan">
                                        	예약정보와 결제정보가 기재되어 있는 영수증(거래내역서)은 고객센터로 문의하시면 발급이 가능합니다. <br><br>

											예약내역, 영수증을 받으실 이메일 주소(또는 FAX번호)를 1:1문의 또는 카카오 상담톡으로 남겨주시길 바라며, 발급 완료까지는 영업일 기준 최대 1~2일 소요되오니 시간 양해 부탁드립니다.
                                    </span>
                                </div>
                                </a>
                            
                             </li>
                        </ul>
                       
                       </div>
                       </div>
                       </div>
                       </div>
                       
</body>
<script>
function GetShow(){
    var con = document.getElementById("ans_1");
    if(con.style.display == "none"){
        con.style.display = "block";
    }
    else{
        con.style.display = "none";
    }
  }
  function GetShow2(){
    var con = document.getElementById("ans_2");
    if(con.style.display == "none"){
        con.style.display = "block";
    }
    else{
        con.style.display = "none";
    }
  }
  function GetShow3(){
    var con = document.getElementById("ans_3");
    if(con.style.display == "none"){
        con.style.display = "block";
    }
    else{
        con.style.display = "none";
    }
  }
  function GetShow4(){
    var con = document.getElementById("ans_4");
    if(con.style.display == "none"){
        con.style.display = "block";
    }
    else{
        con.style.display = "none";
    }
  }function GetShow5(){
    var con = document.getElementById("ans_5");
    if(con.style.display == "none"){
        con.style.display = "block";
    }
    else{
        con.style.display = "none";
    }
  }function GetShow6(){
    var con = document.getElementById("ans_6");
    if(con.style.display == "none"){
        con.style.display = "block";
    }
    else{
        con.style.display = "none";
    }
  }
</script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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