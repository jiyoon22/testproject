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
	href="${pageContext.request.contextPath}/css/policy3.css">
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
                        <a href="${pageContext.request.contextPath}/app/policy/policy.jsp" id="click" class="more_a">약관 및 정책</a>
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
                            <a href="${pageContext.request.contextPath}/app/policy/policy3.jsp" class="tab_on">개인정보 처리방침</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/app/policy/policy4.jsp" class="tab_3">소비자 분쟁해결 기준</a>
                        </li>
                    </ul>
                </div>
                <div class="t_more">
                    <div class="p_more">
                        <div class="title">
                            <h2>개인정보 처리방침</h2>
                        </div>
                        <div class="p_text">
                            <p>주식회사 fish그룹(이하 “회사”)는 이용자의 자유와 권리 보호를 위해 대한민국의 개인정보보호 규정을 준수하여, 적법하게 개인정보를 처리하고 안전하게 관리하고 있습니다.
                                <br>
                                <br>
                               	 이용자에게 개인정보 처리에 관한 절차 및 기준을 안내하고, 이와 관련한 고충을 신속하고 원활하게 처리할 수 있도록 하기 위하여 다음과 같이 개인정보 처리방침을 수립·공개합니다.
                            </p>
                            <table class="p_table">
                                <colgroup>
                                    <col width="33%">
                                    <col width="33%">
                                    <col width="33%">
                                </colgroup>
                                <tbody>
                                    <tr>
                                        <th colspan="3">주요 개인정보 처리 표시(라벨링)</th>
                                    </tr>
                                    <tr>
                                        <td><img src="${pageContext.request.contextPath}/img/ico_13.png" alt="고충처리부서">
                                        <strong>고충처리부서</strong>
                                        <p>고객센터
                                            <br>
                                            1670-6250
                                            <br>
                                            helpyou@fish.co.kr
                                        </p>
                                    </td>
                                    <td>
                                        <img src="${pageContext.request.contextPath}/img/ico_14.png" alt="개인정보 수집">
                                        <strong>일반 개인정보 수집</strong>
                                        <p>
                                            이름, 이메일
                                            <br>
                                            휴대전호번호 등
                                        </p>
                                    </td>
                                    <td>
                                        <img src="${pageContext.request.contextPath}/img/ico_15.png" alt="개인정보보호 인증">
                                        <strong>개인정보보호 인증</strong>
                                        <p>
                                            국내: ISMS-P
                                            <br>
                                            국제: ISO/IEC 27001 등 4종
                                        </p>
                                    </td>
                                    </tr>
                                </tbody>
                            </table>
                            <p>※세부 항목은 개인정보 처리방침 본문에서 확인</p>
                        </div>
                        <div class="p_wrap">
                            <div class="policy_list">
                                <a href="javascript:GetShow()" class="list_title">
                                    <span  class="icon"><img src="${pageContext.request.contextPath}/img/ico_1.png"> </span>
                                    &nbsp; <strong>이용자 및 법정대리인의 권리·의무 및 행사방법</strong>
                                    <img src="${pageContext.request.contextPath}/img/under1.png" width="15px" class="under">
                                    <div class="list_text" id="list_text" style="display: none;">
                                        <p>
                                            이용자는 언제든지 등록되어 있는 자신의 개인정보를 조회하거나 수정(내 정보&gt;내 정보 관리) 하실 수 있으며 정보 삭제 및 처리 정지(내 정보&gt;내 정보 관리&gt;회원탈퇴)를 요구할 수도 있습니다.
            다만, 그러한 경우 서비스의 일부 또는 전부 이용이 어려울 수 있습니다.
            <br>
            <br>
            
            이용자의 개인정보에 대한 조회, 수정 또는 가입해지 등의 문의에 대한 원활한 의사소통을 위해 고객센터를 운영하고 있으며,
            다음의 연락처를 통해 문의하시면 지체없이 조치하겠습니다.
                                        </p>
                                        <table class="p_table">
                                            <colgroup>
                                                <col width="25%">
                                                <col width="25%">
                                                <col width="25%">
                                                <col width="25%">
                                            </colgroup>
                                            <tbody>
                                                <tr>
                                                    <th>구분</th>
                                                    <th>전화</th>
                                                    <th>이메일</th>
                                                    <th>기타</th>
                                                </tr>
                                                <tr>
                                                    <td>고객센터</td>
                                                    <td>1670-6250</td>
                                                    <td>helpyou@fish.co.kr</td>
                                                    <td>Fish 어플리케이션 내 문의하기</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <p>회사는 법정대리인의 동의가 필요한 만 14세 미만 아동의 개인정보는 원칙적으로 수집하지 않습니다. 예외적으로 만 14세 미만 아동의 개인정보를 수집해야 하는 경우가 있다면 법정대리인의 법령 상의 권리를 보장합니다(아동의 개인정보에 대한 열람, 정정·삭제, 개인정보처리정지요구권).</p>
                                    </div>
                                </a>
                            </div>
                            <div class="policy_list">
                                <a href="javascript:GetShow2()" class="list_title">
                                    <span class="icon"><img src="${pageContext.request.contextPath}/img/ico_2.png"></span>
                                    &nbsp; <strong>개인정보 보호책임자 및 담당부서</strong>
                                    <img src="${pageContext.request.contextPath}/img/under1.png" width="15px" class="under">
                                    <div class="list_text" id="list_text_2" style="display: none;">
                                        <p>이용자의 개인정보를 처리하는 책임자 및 담당자는 다음과 같으며, 회사는 이용자의 문의에 대해 신속하고 충분한 답변을 드릴 수 있도록 최선을 다하겠습니다.</p>
                                        <table class="p_table">
                                            <colgroup>
                                                <col width="50%">
                                                <col width="50%">
                                            </colgroup>
                                            <tbody>
                                                <tr>
                                                    <th>개인정보 보호책임자</th>
                                                    <th>개인정보 보호담당자</th>
                                                </tr>
                                                <tr>
                                                    <td>
                                                    이 름: 박지윤<br>
                                                    소 속: 피쉬총괄팀<br>
                                                    전 화: 010-cccc-cccc<br>
                                                    메 일: parkji1234@fish.co.kr
                                                    </td>
                                                    <td>
                                                    이 름: 송지헌<br>
                                                    소 속: 피쉬총괄팀<br>
                                                    전 화: 010-xxxx-xxxx<br>
                                                    메 일: song1234@fish.co.kr
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <p>개인정보가 침해되어 이에 대한 신고나 보다 자세한 상담이 필요한 경우에는 회사와는 별도인 다음의 전문 기관에 문의하셔서 도움을 받으실 수 있습니다.</p>
                                        <table class="p_table">
                                            <colgroup>
                                                <col width="33%">
                                                <col width="34%">
                                                <col width="33%">
                                            </colgroup>
                                            <tbody>
                                                <tr>
                                                    <th>권익침해 신고 및 상담기관</th>
                                                    <th>전화</th>
                                                    <th>사이트</th>
                                                </tr>
                                                <tr>
                                                    <td>개인정보 침해신고센터</td>
                                                    <td>(국번 없이) 118</td>
                                                    <td>privacy.kisa.or.kr</td>
                                                </tr>
                                                <tr>
                                                    <td>개인정보 분쟁조정위원회</td>
                                                    <td>(국번 없이) 1833-6972</td>
                                                    <td>www.kopico.go.kr</td>
                                                </tr>
                                                <tr>
                                                    <td>대검찰청 사이버수사과</td>
                                                    <td>(국번 없이) 1301</td>
                                                    <td>www.spo.go.kr</td>
                                                </tr>
                                                <tr>
                                                    <td>경찰청 사이버 수사국</td>
                                                    <td>(국번 없이) 182</td>
                                                    <td>ecrm.police.go.kr</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </a>
                             </div>
                             <div class="policy_list">
                                <a href="javascript:GetShow3()" class="list_title">
                                    <span  class="icon"><img src="${pageContext.request.contextPath}/img/ico_3.png"> </span>
                                    &nbsp; <strong>개인정보의 자동수집 장치 설치·운영·거부사항</strong>
                                    <img src="${pageContext.request.contextPath}/img/under1.png" width="15px" class="under">
                                    <div class="list_text" id="list_text_3" style="display: none;">
                                        <p>회사는 이용자에게 개별적인 맞춤서비스를 제공하기 위하여 이용정보를 저장하고 수시로 불러오는 쿠키(cookie)를 사용합니다.<br><br>
                                            쿠키는 웹사이트를 운영하는데 이용되는 서버가 이용자의 컴퓨터 브라우저에게 보내는 소량의 정보이며 이용자들의 PC 컴퓨터내의 하드디스크에 저장되기도 합니다.<br><br>
                                            1. 쿠키 사용 목적<br>
                                            이용자가 방문한 각 서비스와 웹 사이트들에 대한 방문 및 이용형태, 보안접속 여부 등을 파악하여 이용자에게 최적화된 정보를 제공하기 위하여 사용합니다.<br><br>
                                            2. 쿠키의 설치·운영 및 거부<br>
                                            웹 브라우저 상단의 도구&gt;인터넷 옵션&gt;개인정보 메뉴의 옵션 설정을 통해 쿠키 저장을 거부 할 수 있습니다. 쿠키 저장을 거부할 경우 맞춤형 서비스 이용에 어려움이 발생할 수 있습니다.</p>
                                    </div>
                                </a>
                            </div> 
                            <div class="policy_list">
                                <a href="javascript:GetShow4()" class="list_title">
                                    <span  class="icon"><img src="${pageContext.request.contextPath}/img/ico_4.png"> </span>
                                    &nbsp; <strong>행태정보의 수집·이용·제공·거부사항</strong>
                                    <img src="${pageContext.request.contextPath}/img/under1.png" width="15px" class="under">
                                    <div class="list_text" id="list_text_4" style="display: none;">
                                        <p>회사는 서비스 이용과정에서 정보주체에게 최적화된 맞춤형 서비스 및 혜택, 온라인 맞춤형 광고 등을 제공하기 위하여 행태정보를 수집·이용하고 있습니다.<br><br>
                                            회사는 다음과 같이 행태정보를 수집합니다.</p>
                                            <table class="p_table">
                                                <colgroup>
                                                    <col width="45%">
                                                    <col width="55%">
                                                </colgroup>
                                                <tbody>
                                                    <tr>
                                                        <th>행태정보 수집 및 처리 사업자</th>
                                                        <td>(주)fish컴퍼니</td>
                                                    </tr>
                                                    <tr>
                                                        <th>수집하는 행태정보의 항목</th>
                                                        <td>이용자의 서비스 방문 기록, 활동 로그 및 검색 이력</td>
                                                    </tr>
                                                    <tr>
                                                        <th>행태정보 수집 방법</th>
                                                        <td>이용자의 서비스 이용 시 자동 수집 및 전송</td>
                                                    </tr>
                                                    <tr>
                                                        <th>행태정보 수집 목적</th>
                                                        <td>이용자의 관심, 흥미, 기호 및 성향 기반 맞춤형 광고 제공</td>
                                                    </tr>
                                                    <tr>
                                                        <th>행태정보 보유 이용 기간</th>
                                                        <td>2년 보관 후 복구 불가능한 방법으로 파기 또는 분리 보관</td>
                                                    </tr>
                                                    <tr>
                                                        <th>이용자 통제권 행사 방법</th>
                                                        <td>Android: 홈 &gt; 설정 &gt; Google &gt; 광고 &gt; 광고 맞춤설정 선택 해제 (ON)<br>
                                                        iOS: 홈 &gt; 설정 &gt; 개인 정보 보호 &gt; 추적 &gt; 앱이 추적을 요청하도록 허용 (OFF)</td>
                                                    </tr>
                                                    <tr>
                                                        <th>이용자 피해구제 방법</th>
                                                        <td>고객센터 / 1670-6250 / helpyou@fish.co.kr</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <p>회사는 다음과 같이 온라인 맞춤형 광고 사업자가 행태정보를 수집·처리하도록 허용하고 있습니다.</p>
                                            <table class="p_table">
                                                <colgroup>
                                                    <col width="45%">
                                                    <col width="55%">
                                                </colgroup>
                                                <tbody>
                                                    <tr>
                                                        <th>행태정보 수집 및 처리 광고 사업자</th>
                                                        <td>앱스플라이어</td>
                                                    </tr>
                                                    <tr>
                                                        <th>수집 및 처리되는 행태정보의 항목</th>
                                                        <td>이용자의 서비스 방문 기록, 활동 로그 및 검색 이력</td>
                                                    </tr>
                                                    <tr>
                                                        <th>행태정보 수집 방법</th>
                                                        <td>이용자의 서비스 이용 시 자동 수집 및 전송</td>
                                                    </tr>
                                                    <tr>
                                                        <th>행태정보 수집 목적</th>
                                                        <td>이용자의 관심, 흥미, 기호 및 성향 기반 맞춤형 광고 제공</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                    </div>
                                </a>
                            </div> 
                            <div class="policy_list">
                                <a href="javascript:GetShow5()" class="list_title_three">
                                    <p>
                                    <span  class="icon"><img src="${pageContext.request.contextPath}/img/ico_5.png"> </span>
                                    &nbsp; <strong>개인정보의 처리목적</strong>
                                </p>
                                <p>
                                    <span  class="icon"><img src="${pageContext.request.contextPath}/img/ico_6.png"> </span>
                                    &nbsp; <strong>수집 항목</strong>
                                </p>
                                <p>
                                    <span  class="icon"><img src="${pageContext.request.contextPath}/img/ico_7.png"> </span>
                                    &nbsp; <strong>보유 및 이용기간</strong>
                                </p>
                                    <img src="${pageContext.request.contextPath}/img/under1.png" width="15px" class="under1">
                                    <div class="list_text" id="list_text_5" style="display: none;">
                                        <p>회사는 다음과 같이 이용자의 개인정보를 처리합니다.</p>
                                        <table class="p_table">
                                            <colgroup>
                                                <col width="25%">
                                                <col width="10%">
                                                <col width="40%">
                                                <col width="25%">
                                            </colgroup>
                                            <tbody>
                                                <tr>
                                                    <th>수집이용목적</th>
                                                    <th>분류</th>
                                                    <th>수집이용 항목</th>
                                                    <th>보유 및 이용기간</th>
                                                </tr>
                                                <tr>
                                                    <td rowspan="2">회원가입, 서비스이용, 상담 및 부정거래 기록 확인, 서비스 이용 가능 연령 확인 및 본인 여부 확인, 이용자의 상품 및 서비스 이용실적 정보를 활용한 통계 분석 및 상품 서비스 개선 제공, 맞춤형 서비스 제공을 위한 이용자 식별</td>
                                                    <td>필수</td>
                                                    <td>
                                                        [일반 회원]<br>
                                                        휴대전화번호, 이메일, 기기고유번호(UUID, SSAID), 닉네임, 성별, 생년월일, 비밀번호(이메일로 가입 시), SNS 계정 정보(페이스북, 카카오, 네이버, 애플 계정으로 가입 시)<br><br>
                                                        [비즈니스 회원]<br>
                                                        휴대전화번호, 이메일, 기기고유번호(UUID, SSAID), 닉네임, 비밀번호, 회사명, 회사 이메일, 이름<br><br>
                                                        [서비스 이용 및 부정거래 기록 확인]<br>
                                                        서비스 이용시간/이용기록, 접속로그, 이용컨텐츠,접속IP정보, 기기모델명, 브라우저 정보
                                                    </td>
                                                    <td rowspan="2">회원 탈퇴 시 또는 계약 만료 시까지<br>
                                                    - 재가입 방지를 위해 탈퇴 요청일로부터  24시간 동안 보유<br>
                                                    - 관계 법령에 따라 보존할 필요가 있는 경우 해당 법령에서 요구하는 기한까지 보유
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>선택</td>
                                                    <td>이름, 위치정보, 마케팅 수신동의 여부(푸시, 이메일, SMS)</td>
                                                </tr>
                                                <tr>
                                                    <td>예약/구매 서비스<br>제공, 상담 및<br>부정거래 기록 확인</td>
                                                    <td>필수</td>
                                                    <td>[공통]<br>
                                                    예약내역(예약일시, 결제금액, 결제수단, 업체명), (필요한 서비스의 경우) CI<br><br>
                                                    [숙박/공간대여/모바일티켓 서비스]<br>
                                                    예약자 정보(이름, 휴대전화번호)<br>
                                                    *모바일티켓 서비스 내 항공권은 탑승자명, 생년월일, 성별 추가 수집<br><br>
                                                    [렌터카 서비스]<br>
                                                    예약자 정보(이름, 휴대전화번호), 운전자 정보(이름, 휴대전화번호, 면허종류, 생년월일)<br><br>
                                                    [항공 서비스]<br>
                                                    예약자 정보(이름(해외항공 시 영문), 이메일주소, 휴대전화번호)<br><br>
                                                    [해외숙소 서비스]<br>
                                                    예약자정보(이름(영문), 휴대전화번호, 이메일주소, 거주 지역)<br>
                                                    투숙객 정보(이름(영문), 거주 지역, (만 17세 이하 아동 동반 시)아동 나이)
                                                    </td>
                                                    <td rowspan="4">전자상거래 등에서의 소비자 보호에 관한 법률에 따라 5년 보관</td>
                                                </tr>
                                                <tr>
                                                    <td>결제</td>
                                                    <td>필수</td>
                                                    <td>
                                                        [신용카드 결제]<br>
                                                        카드사명, 카드번호, 유효기간, 이메일<br><br>
                                                        [휴대폰 결제]<br>
                                                        통신사, 휴대전화번호<br><br>
                                                        [계좌이체]<br>
                                                        은행명, 계좌번호, 예금주명
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>현금영수증 발급</td>
                                                    <td>필수</td>
                                                    <td>휴대전화번호, 이메일</td>
                                                </tr>
                                                <tr>
                                                    <td>취소•환불을 위한 대금지급</td>
                                                    <td>필수</td>
                                                    <td>은행명, 계좌번호, 예금주명</td>
                                                </tr>
                                                <tr>
                                                    <td>1:1 문의 상담</td>
                                                    <td>선택</td>
                                                    <td>휴대전화번호, 이메일</td>
                                                    <td>상담 완료 후 3년</td>
                                                </tr>
                                                <tr>
                                                    <td>이벤트 참여</td>
                                                    <td>필수</td>
                                                    <td>이름, 휴대전화번호, 성별, 생년월일, CI, DI</td>
                                                    <td>회원 탈퇴 시까지</td>
                                                </tr>
                                                <tr>
                                                    <td>물품(경품)배송 </td>
                                                    <td>필수</td>
                                                    <td>당첨자 이름, 주소, 휴대전화번호</td>
                                                    <td>이벤트 종료 시 까지</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <p>다만, 다음의 경우는 예외적으로 법령에 따라 동의없이 개인정보를 수집•이용할 수 있습니다.</p>
                                        <ul>
                                            <li>1. 정보통신서비스의 제공에 관한 계약을 이행을 위하여 필요한 개인정보로서 경제적•기술적인 사유로 통상적인 동의를 받는 것이 뚜렷하게 곤란한 경우</li>
                                            <li>2. 정보통신서비스의 제공에 따른 요금정산을 위하여 필요한 경우</li>
                                            <li>3. 그 밖에 법률에 특별한 규정이 있는 경우</li>
                                            <li>4. 수집 목적과 합리적인 관련성이 있고 정보주체에게 불이익이 발생하지 않으며 안전성 확보 조치를 적용한 경우
                                                <ul>
                                                    <li>- 당초 수집 목적과 관련성</li>
                                                    <li>- 수집 정황 또는 처리 관행에 비추어 봤을 때 개인정보의 추가적인 이용에 대한 예측 가능성</li>
                                                    <li>- 정보주체의 이익 침해 여부</li>
                                                    <li>- 가명처리 또는 암호화 등 안전성 확보에 필요한 조치 적용 등의 사항을 모두 고려하여 판단</li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </div>
                                </a>
                            </div> 
                            <div class="policy_list">
                                <a href="javascript:GetShow6()" class="list_title">
                                    <span  class="icon"><img src="${pageContext.request.contextPath}/img/ico_8.png"> </span>
                                    &nbsp; <strong>개인정보의 제3자 제공</strong>
                                    <img src="${pageContext.request.contextPath}/img/under1.png" width="15px" class="under">
                                    <div class="list_text" id="list_text_6" style="display: none;">
                                        <p>회사는 이용자의 개인정보를 개인정보의 처리 목적에서 명시한 범위 내에서만 처리하며, 이용자의 동의, 법률의 특별한 규정 등에 해당하는 경우에만 개인정보를 제3자에게 제공하고 그 이외에는 이용자의 개인정보를 제3자에게 제공하지 않습니다.<br>
                                            회사는 원활한 서비스 제공을 위하여 다음의 경우 이용자의 동의를 얻어 개인정보를 제공하고 있습니다.</p>
                                            <table class="p_table">
                                                <colgroup>
                                                    <col width="25%">
                                                    <col width="25%">
                                                    <col width="25%">
                                                    <col width="25%">
                                                </colgroup>
                                                <tbody>
                                                    <tr>
                                                        <th>제공받는 자</th>
                                                        <th>제공 목적</th>
                                                        <th>제공 항목</th>
                                                        <th>개인정보 보유 및 이용기간</th>
                                                    </tr>
                                                    <tr>
                                                        <td>숙박서비스 제공업체<br>
                                                        </td>
                                                        <td>숙박예약서비스 이용계약 이행(서비스 제공 확인/ 이용자 정보 확인)</td>
                                                        <td>예약자 이름, 가상전화번호(또는 휴대전화번호)</td>
                                                        <td>예약서비스 제공 완료 후 6개월</td>
                                                    </tr>
                                                    <tr>
                                                        <td>모바일 티켓 서비스 제공업체<br>
                                                        
                                                        </td>
                                                        <td>모바일 티켓예약 서비스 이용계약 이행(서비스 제공/확인, 이용자 정보 확인)</td>
                                                        <td>
                                                            예약자 이름, 휴대전화번호<br>
                                                            * 항공권 상품일 경우 발권정보 확인을 위해 탑승자 이름, 생년월일, 성별
                                                        </td>
                                                        <td>예약서비스 제공 완료 후 6개월</td>
                                                    </tr>
                                                    <tr>
                                                        <td>공간대여 서비스 제공업체<br>
                                                        
                                                        </td>
                                                        <td>공간대여 서비스 이용계약 이행(서비스 제공/확인, 이용자 정보 확인)</td>
                                                        <td>예약자 이름, 가상전화번호(또는 휴대전화번호)</td>
                                                        <td>예약서비스 제공 완료 후 6개월</td>
                                                    </tr>
                                                    <tr>
                                                        <td>㈜시너츠</td>
                                                        <td>OTA 상품 공급 및 예약관리/통지서비스</td>
                                                        <td>예약자 이름, 휴대전화번호 </td>
                                                        <td>예약서비스 제공 완료 후 6개월</td>
                                                    </tr>
                                                    <tr>
                                                        <td>네이처모빌리티</td>
                                                        <td>렌터카 예약자 및 운전자 확인, 고객상담 및 불만처리</td>
                                                        <td>예약자 이름/예약자 휴대전화번호, 운전자 이름/운전자 휴대전화번호/운전자 면허종류/운전자 생년월일</td>
                                                        <td>예약서비스 제공 완료 후 6개월</td>
                                                    </tr>
                                                    <tr>
                                                        <td>㈜온라인투어</td>
                                                        <td>여행상품 예약, 상담 및 안내</td>
                                                        <td>예약자 이름(해외항공 시 영문), 이메일주소, 휴대폰번호</td>
                                                        <td>서비스 제공 완료 및 요금 결제/정산 완료 시까지 (관계 법령에 의해 보유할 경우 해당 기간동안 보유)</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Agoda Company Pte. Ltd.,(싱가포르, +82-2-6022-2442(KR))</td>
                                                        <td>OTA 상품 공급 및 예약관리/업체 통지 서비스/ 숙박예약서비스 이용계약 이행 (서비스 제공, 확인, 이용자 정보 확인)</td>
                                                        <td>예약한 숙박서비스의 이용자 정보(예약자 이름, 예약번호, 예약업체명, 예약한 객실명, 결제금액, 투숙객 영문 이름, 만 17세 이하 아동 동반 시 아동 나이)</td>
                                                        <td>예약서비스 제공 완료 후 6개월</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <p>다음의 경우는 예외적으로 이용자의 사전 동의 없이 이용자 정보를 제공할 수 있습니다.</p>
                                            <ul>
                                                <li>1. 법령의 규정에 의거하거나, 수사, 조사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관 및 감독당국의 요구가 있는 경우</li>
                                                <li>2. 요금 정산을 위하여 필요한 경우</li>
                                                <li>3. 이용자 또는 제3자의 급박한 생명, 신체, 재산의 이익을 위하여 필요함에도 불구하고 동의를 받을 수 없는 경우</li>
                                                <li>4. 정부 관계부처가 합동 발표한 「긴급상황 시 개인정보 처리 및 보호수칙」에 따라 재난, 감염병, 급박한 생명·신체 위험을 초래하는 사건·사고, 급박한 재산 손실 등 긴급상황이 발생한 경우<a href="https://www.pipc.go.kr/np/cop/bbs/selectBoardArticle.do?bbsId=BS217&amp;mCode=D010030000&amp;nttId=7641" target="_blank">(상세보기)</a></li>
                                            </ul>
                                    </div>
                                </a>
                            </div> 
                            <div class="policy_list">
                                <a href="javascript:GetShow7()" class="list_title">
                                    <span  class="icon"><img src="${pageContext.request.contextPath}/img/ico_9.png"> </span>
                                    &nbsp; <strong>개인정보의 파기</strong>
                                    <img src="${pageContext.request.contextPath}/img/under1.png" width="15px" class="under">
                                    <div class="list_text" id="list_text_7" style="display: none;">
                                        <p>회사는 수집 및 이용목적이 달성된 개인정보는 지체없이 파기합니다.<br><br>
                                            정보주체로부터 동의받은 개인정보 보유기간이 경과하거나 처리목적이 달성되었음에도 불구하고 내부 방침 또는 다른 법령에 따라 개인정보를 계속 보존하여야 하는 경우에는 해당 개인정보를 별도의 데이터베이스(DB)로 옮기거나 보관장소를 달리하여 보존합니다.</p>
                                            <ul>
                                                <li> 1. 개인정보의 파기 절차와 방법<br>
                                                회사는 이용자의 서비스 해지 등의 요청이 있는 경우 지체없이 파기하며, 관계법령 및 내부 방침에 의해 보유한 경우에도 해당 사유 종료 후 지체없이 파기합니다.
                                                </li>
                                                <li>2. 파기방법<br>
                                                회사는 전자적 파일 형태로 기록·저장된 개인정보는 기록을 재생할 수 없도록 파기하며, 종이 문서에 기록·저장된 개인정보는 분쇄기로 분쇄하거나 소각하여 파기합니다.
                                                </li>
                                                <li>3. 내부 방침에 따라 보유하는 경우</li>
                                            </ul>
                                            <table class="p_table">
                                                <colgroup>
                                                    <col width="60%">
                                                    <col width="40%">
                                                </colgroup>
                                                <tbody>
                                                    <tr>
                                                        <th>보유 사유</th>
                                                        <th>보유 기간</th>
                                                    </tr>
                                                    <tr>
                                                        <td>회사와 이용자간 민원, 소송 등 분쟁 과정 중 법률로 정한 보유기간이 경과한 경우</td>
                                                        <td>분쟁 해결 시까지 보관 후 파기</td>
                                                    </tr>
                                                    <tr>
                                                        <td>회사가 개별적으로 이용자의 동의를 받은 경우</td>
                                                        <td>동의 받은 기간까지 보관 후 파기</td>
                                                    </tr>
                                                    <tr>
                                                        <td>정산이 남아 있는 경우</td>
                                                        <td>정산 종료 시까지 보관 후 파기</td>
                                                    </tr>
                                                    <tr>
                                                        <td>개인정보 유효기간제에 따라 1년간 서비스를 이용하지 않은 경우</td>
                                                        <td>별도 분리 보관 또는 파기</td>
                                                    </tr>
                                                    <tr>
                                                        <td>회원을 탈퇴한 경우</td>
                                                        <td>재가입 방지를 위해 24시간 보관 후 파기(이메일주소만 해당)</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <ul>
                                                <li>4. 관계 법령에 따라 보유하는 경우</li>
                                            </ul>
                                            <table class="p_table">
                                                <colgroup>
                                                    <col width="33%">
                                                    <col width="33%">
                                                    <col width="33%">
                                                </colgroup>
                                                <tbody>
                                                    <tr>
                                                        <th>보유 정보</th>
                                                        <th>보유 근거</th>
                                                        <th>보유 기간</th>
                                                    </tr>
                                                    <tr>
                                                        <td>기기고유번호, 로그기록, 부정거래 사유 등</td>
                                                        <td>회사 내부 정책 (부정거래 방지)</td>
                                                        <td>최종 로그인 일로부터 1년</td>
                                                    </tr>
                                                    <tr>
                                                        <td>계약 또는 청약철회에 관한 기록</td>
                                                        <td>전자상거래 등에서의 소비자 보호에 관한 법률</td>
                                                        <td>5년</td>
                                                    </tr>
                                                    <tr>
                                                        <td>대금 결제 및 재화 등의 공급에 관한 기록</td>
                                                        <td>전자상거래 등에서의 소비자 보호에 관한 법률, 국세기본법, 법인세법, 부가가치세법</td>
                                                        <td>5년</td>
                                                    </tr>
                                                    <tr>
                                                        <td>소비자의 불만 또는 분쟁처리에 관한 기록</td>
                                                        <td>전자상거래 등에서의 소비자 보호에 관한 법률</td>
                                                        <td>3년</td>
                                                    </tr>
                                                    <tr>
                                                        <td>표시/광고에 관한 기록</td>
                                                        <td>전자상거래 등에서의 소비자보호에 관한 법률</td>
                                                        <td>6개월</td>
                                                    </tr>
                                                    <tr>
                                                        <td>사이트 방문에 관한 기록</td>
                                                        <td>통신비밀보호법</td>
                                                        <td>3개월</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <p>※ 부정거래: 법령, 회사와 이용자 간의 서비스 이용 약관 또는 공서양속 등을 위반하거나 기타 회사, 회원 또는 타인의 권리나 이익을 침해하는 방법이나 내용의 거래</p>
                                    </div>
                                </a>
                            </div> <div class="policy_list">
                                <a href="javascript:GetShow8()" class="list_title">
                                    <span  class="icon"><img src="${pageContext.request.contextPath}/img/ico_10.png"> </span>
                                    &nbsp; <strong>개인정보의 처리위탁</strong>
                                    <img src="${pageContext.request.contextPath}/img/under1.png" width="15px" class="under">
                                    <div class="list_text" id="list_text_8" style="display: none;">
                                        <p>회사는 원활한 개인정보 업무처리를 위하여 다음과 같이 개인정보 처리업무를 위탁하고 있습니다.</p>
                                        <table class="p_table">
                                            <colgroup>
                                                <col width="30%">
                                                <col>
                                                <col width="30%">
                                            </colgroup>
                                            <tbody>
                                                <tr>
                                                    <th>수탁자</th>
                                                    <th>위탁 업무</th>
                                                    <th>개인정보 보유 및 이용기간</th>
                                                </tr>
                                                <tr>
                                                    <td>㈜써머스플랫폼</td>
                                                    <td>알림톡 서비스</td>
                                                    <td rowspan="11">회원 탈퇴시 또는 위탁 계약 종료시까지</td>
                                                </tr>
                                                <tr>
                                                    <td>㈜CJ올리브네트웍스</td>
                                                    <td>실시간 메시징 서비스, 고객 활동 정보 수집 및 분석</td>
                                                </tr>
                                                <tr>
                                                    <td>㈜KG 모빌리언스, ㈜카카오페이, 네이버㈜, 엔에이치엔페이코㈜, ㈜비바리퍼블리카, 세틀뱅크, 나이스페이먼츠, ㈜엘지유플러스, ㈜토스페이먼츠</td>
                                                    <td>휴대폰, 신용카드, 계좌이체, 간편결제, 무통장 입금 (가상계좌) 등을 통한 결제처리</td>
                                                </tr>
                                                <tr>
                                                    <td>㈜SK 텔링크, ㈜엘지유플러스</td>
                                                    <td>전화연결 중개서비스, 예약정보의 SMS발신, 웹팩스</td>
                                                </tr>
                                                <tr>
                                                    <td>㈜유베이스</td>
                                                    <td>고객센터 민원 상담업무</td>
                                                </tr>
                                                <tr>
                                                    <td>㈜허리업코리아, 메가존㈜, 노츠㈜</td>
                                                    <td>서비스 제공을 위한 운영/개발 및 유지보수</td>
                                                </tr>
                                                <tr>
                                                    <td>㈜쿠프마케팅, ㈜스마트콘</td>
                                                    <td>모바일 쿠폰 발행</td>
                                                </tr>
                                                <tr>
                                                    <td>Amazon Web Services, Inc</td>
                                                    <td>클라우드 인프라의 관리</td>
                                                </tr>
                                                <tr>
                                                    <td>㈜잡라이프</td>
                                                    <td>객실상품 등록, 상품정보 수정</td>
                                                </tr>
                                                <tr>
                                                    <td>㈜엠비아이솔루션</td>
                                                    <td>챗봇과 채팅상담</td>
                                                </tr>
                                                <tr>
                                                    <td>㈜유앤아이파트너스</td>
                                                    <td>맛집티켓 영업대행</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <p>회사는 데이터 보관 및 인프라 관리 업무를 국외 법인인 ‘Amazon Web Services, Inc.’에 다음과 같이 위탁하고 있습니다.</p>
                                        <table class="p_table">
                                            <colgroup>
                                                <col width="50%">
                                                <col width="50%">
                                            </colgroup>
                                            <tbody>
                                                <tr>
                                                    <th>수탁업체</th>
                                                    <td>Amazon Web Services, Inc.</td>
                                                </tr>
                                                <tr>
                                                    <th>수탁업체의 위치(국가)</th>
                                                    <td>Amazon Web Services, Inc.의 리전(한국, 미국, 일본, 런던 등)</td>
                                                </tr>
                                                <tr>
                                                    <th>이전 일시 및 방법</th>
                                                    <td>서비스 이용 시점에 네트워크를 통한 전송</td>
                                                </tr>
                                                <tr>
                                                    <th>정보관리책임자 연락처</th>
                                                    <td>aws-korea-privacy@amazon.com</td>
                                                </tr>
                                                <tr>
                                                    <th>위탁하는 개인정보 항목</th>
                                                    <td>회사에서 수집, 보관하는 개인정보를 포함하는 데이터 일체</td>
                                                </tr>
                                                <tr>
                                                    <th>위탁업무 내용</th>
                                                    <td>재난, 재해 등으로부터 안전한 이용자 데이터 보호를 위한 국가간 데이터 백업(보관)</td>
                                                </tr>
                                                <tr>
                                                    <th>개인정보의 보유 및 이용기간</th>
                                                    <td>본 개인정보처리방침에 규정된 보관기간과 일치함</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <p>회사는 위탁계약 체결 시 위탁업무 수행목적 외 개인정보 처리 금지, 기술적·관리적 보호조치, 재위탁 제한, 수탁자에 대한 관리·감독, 손해배상 등 책임에 관한 사항을 계약서 등 문서에 명시하고, 수탁자가 개인정보를 안전하게 처리하는지를 감독하고 있습니다.<br><br>
                                            위탁 업무의 내용이나 수탁자가 변경될 경우에는 지체없이 본 개인정보 처리방침을 통하여 공개하도록 하겠습니다.</p>
                                    </div>
                                </a>
                            </div> <div class="policy_list">
                                <a href="javascript:GetShow9()" class="list_title">
                                    <span  class="icon"><img src="${pageContext.request.contextPath}/img/ico_11.png"> </span>
                                    &nbsp; <strong>개인정보의 안전성 확보조치</strong>
                                    <img src="${pageContext.request.contextPath}/img/under1.png" width="15px" class="under">
                                    <div class="list_text" id="list_text_9" style="display: none;">
                                        <p>회사는 개인정보의 안전성 확보를 위해 다음과 같은 조치를 취하고 있습니다.</p>
                                        <ul>
                                            <li>1. 관리적 조치 : 내부관리계획 수립 및 시행, 정기적인 직원 교육 등</li>
                                            <li>2. 기술적 조치 : 개인정보처리시스템 등의 접근 권한 관리, 접근통제시스템 설치, 주요 개인정보 암호화, 보안프로그램 설치 등</li>
                                            <li>3. 물리적 조치 : 전산실, 자료보관실 등의 접근통제 등</li>
                                        </ul>
                                        <p>회사는 개인정보의 안전성 확보를 위해 법령에서 규정하고 있는 사항 이외에도 다음과 같은 활동을 시행하고 있습니다.</p>
                                        <ul>
                                            <li>1. 정보보호 및 개인정보보호 관리체계(ISMS-P) 인증 획득</li>
                                        </ul>
                                        <div class="verify">
                                            <img src="${pageContext.request.contextPath}/img/mark_01.png" alt="정보보호 인증">
                                            <div class="description">
                                                <div>회사의 주요 정보자산을 보호하기 위해 정보보호 정책, 접근통제, 운영보안, 침해사고 관리, 위험관리 등 정보보호 관리와 대책에 대한 적합성을 평가받아 정보보호 및 개인정보보호 관리체계 인증을 획득하였습니다.</div>
                                                <div><strong>[인증범위]</strong> 온라인 숙박 예약 및 맛집 검색 서비스</div>
                                                <div><strong>[유효기간]</strong> 2021.05.18 ~ 2024.05.17</div>
                                            </div>
                                        </div>
                                        <ul>
                                            <li>2. 국제표준 ISO/IEC 27001, ISO/IEC 27701, ISO/IEC 27017 &amp; 27018 인증 획득</li>
                                        </ul>
                                        <div class="verify">
                                            <img src="${pageContext.request.contextPath}/img/mark_02.png" alt="정보보호 인증" style="height:160px;">
                                            <div class="description">
                                                <div>회사의 정보보호 수준 및 대내외 정보보호 신뢰도 제고 및 각종 위협으로부터 정보자산을 보호하기 위한 위험관리 기반의 체계성을 평가받아 국제표준 정보보호 경영시스템 ISO/IEC 27001:2013 인증을 획득하였고, 국제표준 개인정보보호 경영시스템 ISO/IEC 27701:2019, 클라우드서비스 정보보호 및 개인정보보호 국제표준 ISO/IEC 27017:2015 &amp; ISO/IEC 27018:2019 인증을 획득하였습니다.</div>
                                                <div><strong>[인증범위]</strong> 온라인 숙박 예약 및 맛집 검색 서비스</div>
                                                <div><strong>[유효기간]</strong> 2021.09.23 ~ 2023.08.18</div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div> 
                            <div class="policy_list">
                                <a href="javascript:GetShow10()" class="list_title">
                                    <span  class="icon"><img src="${pageContext.request.contextPath}/img/ico_12.png"> </span>
                                    &nbsp; <strong>개인정보 처리방침의 변경</strong>
                                    <img src="${pageContext.request.contextPath}/img/under1.png" width="15px" class="under">
                                    <div class="list_text" id="list_text_10" style="display: none;">
                                        <strong>회사는 회사의 정책 또는 관계 법령의 변경에 따라 본 개인정보 처리방침을 변경할 수 있습니다.</strong>
                                        <p>- 개인정보처리방침 시행일자 : 2022. 8. 19</p>
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
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
function GetShow(){
	
//	아래화살표 이미지 가져오기(객체명=document)
//	객체명.src="이미지경로"; 적어서 > 화살표로 바꾸기
//	다시 접을 때 원래 화살표 방향의 이미지로 바꾸기.
	
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
  function GetShow4(){
    var con = document.getElementById("list_text_4");
    if(con.style.display == "none"){
        con.style.display = "block";
    }
    else{
        con.style.display = "none";
    }
  }
  function GetShow5(){
    var con = document.getElementById("list_text_5");
    if(con.style.display == "none"){
        con.style.display = "block";
    }
    else{
        con.style.display = "none";
    }
  }
  function GetShow6(){
    var con = document.getElementById("list_text_6");
    if(con.style.display == "none"){
        con.style.display = "block";
    }
    else{
        con.style.display = "none";
    }
  }
  function GetShow7(){
    var con = document.getElementById("list_text_7");
    if(con.style.display == "none"){
        con.style.display = "block";
    }
    else{
        con.style.display = "none";
    }
  }
  function GetShow8(){
    var con = document.getElementById("list_text_8");
    if(con.style.display == "none"){
        con.style.display = "block";
    }
    else{
        con.style.display = "none";
    }
  }
  function GetShow9(){
    var con = document.getElementById("list_text_9");
    if(con.style.display == "none"){
        con.style.display = "block";
    }
    else{
        con.style.display = "none";
    }
  }
  function GetShow10(){
    var con = document.getElementById("list_text_10");
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