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
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/notice.css">
<link rel="icon"
	href="${pageContext.request.contextPath}/img/Hotel_icon.png">
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
<title>Butler:notice</title>
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
	<div class="notice_wrap"> 
		<div class="moremore" id="content"> 
			<nav>
				<ul>
					<li><a href="${pageContext.request.contextPath}/app/notice/notice.jsp" id="click" class="more_a">공지사항</a></li>
					<li><a href="${pageContext.request.contextPath}/app/QnA/QnAView.jsp" class="more_a">자주 묻는 질문</a></li>
					<li><a href="${pageContext.request.contextPath}/app/policy/policy.jsp" class="more_a">약관 및 정책</a></li>
				</ul>
			</nav>
		</div>

		<div class="t_notice">
			<div class="notice">
				<div class="tab">
					<span class="tab_btn"> 공지사항 </span>
				</div>
				<div class="tab_more">
					<ul class="notice_list" id="notice">
						<li><a href="javascript:GetShow()" class="all_list"
							id="notice_tab">

								<p>(발표) 11월 4주차 응원하기 이벤트</p> <span>2022.11.23</span> <img
								src="${pageContext.request.contextPath}/img/under1.png"
								width="18px" class="under">
								<div id="plus" style="display: none;">
									<div>
										<p>
											안녕하세요. 고기를 잡으러 바다로 가는 fish피쉬입니다. <br> 11월 4주차 'fish 응원하기' 이벤트
											당첨자를 발표합니다. <br> <br> 응원하기 이벤트 당첨자 <br> <br>
										</p>
									</div>
									<table>
										<colgroup>
											<col width="83">
											<col width="169">
										</colgroup>
										<tbody> 
											<tr style="height: 30px;">
												<td class="td_1" rowspan="2" colspan="1">
													<div style="max-height: 60px;">
														<span style="font-size: 9pt; color: rgb(255, 255, 255);">당첨자</span>
													</div>
												</td>
												<td class="td_2"><span style="font-size: 9pt;">·
														사람낚는강**</span></td>
											</tr>
											<tr class="td_2" style="height: 30px;">
												<td class="td_3"><span style="font-size: 9pt;">·
														할리스*조아 </span></td>
											</tr>
										</tbody>
									</table>
									<br> <br>
									<div style="font-size: 12px;">
										<p style="font-size: medium;">
											<strong>※ 참고하세요</strong> <br> - 포인트는 당첨 발표일에 당첨자 회원 계정으로
											지급됩니다. <br> - 지급된 포인트는 지급일로부터 30일 이내 사용 가능합니다. <br>
											- 본 이벤트는 당사의 사정에 의해 변경/중지될 수 있습니다.
										</p>

									</div>
						</a></li>

						<li><a href="javascript:GetShow2()" class="all_list"
							id="notice_tab">
								<p>(안내) 서비스 점검 안내 (11/10 02:00~05:00)</p> <span>2022.11.10</span>
								<img src="${pageContext.request.contextPath}/img/under1.png"
								width="20px" class="under"
								style="background-color: rgba(white, white, white, alpha)">
								<div id="plus_2" style="display: none;">
									<div style="font-size: 12px;">
										<p style="font-size: medium;">

											안녕하세요. 고기를 잡으러 바다로 가는 fish피쉬입니다 <br> <br> 더 나은 서비스 제공을
											위한 점검 안내드립니다. <br> 점검 시간 동안에는 여기어때 앱/웹 이용이 일시 중지됩니다. <br>
											<br> ■ fish 시스템 점검 안내 <br> - 일시: 2022년 11월 10일(목)
											오전 2시 ~ 5시까지 (3시간) <br> - 점검 사유 : 시스템 업그레이드 <br>
											- 점검 영향 : 점검 시간 동안 서비스 이용 불가. <br> <br> <br>
											점검 시간은 변경될 수 있으며 변경 시 공지를 통해 안내 드리겠습니다. <br> <br> 더
											좋은 서비스로 보답하는 fish가 되겠습니다. 감사합니다.

										</p>
									</div>
						</a></li>

						<li><a href="javascript:GetShow3()" class="all_list"
							id="notice_tab">
								<p>(발표) 도전!! 추억의 뽑기 1등 당첨 안내</p> <span>2022.11.07</span> <img
								src="${pageContext.request.contextPath}/img/under1.png"
								width="20px" class="under">
								<div id="plus_3" style="display: none;">
									<div style="font-size: 12px;">
										<p style="font-size: medium;">

											안녕하세요. fish 입니다. <br> 도전!! 추억의 뽑기 1등 당첨자 안내드립니다. <br>
											<br> <br> 이벤트 당첨자
										</p>
										<p style="font-size: 10px";>*영업일 기준 구매 익일 오전 11시 전
											업데이트됩니다.</p>
										<br>
										<p>
											************************************************************
										</p>
										<div>
											<p
												style="background-color: rgb(255, 255, 255); font-size: 13.3333px;">
											<table border="0" cellpadding="0" cellspacing="0"
												style="border: 1px solid #cccccc; border-left: 0; border-bottom: 0;">
												<tbody>
													<tr>
														<td class="event_2">
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">&nbsp;당첨
																	일자 </span>
															</p>
														</td>
														<td class="event_2">
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">&nbsp;당첨
																	경품 </span>
															</p>
														</td>
														<td class="event_2">
															<p style="text-align: center;" align="center">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">&nbsp;당첨자
																	닉네임 </span>
															</p>
															<p style="text-align: center;" align="center">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">(+휴대폰번호
																	끝 4자리) </span>

															</p>
														</td>
													</tr>
													<tr>
														<td class="event_2">
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">&nbsp;11/09
																</span>
															</p>
														</td>
														<td class="event_2">
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">&nbsp;
																</span> <span style="font-size: 9pt; color: rgb(0, 0, 0);">서울
																	팔레스 호텔&nbsp; </span>
															</p>
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">1박
																	숙박권 </span>
															</p>
														</td>
														<td class="event_2">
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">너*조아여(2020)&nbsp;
																</span>
															</p>
														</td>
													</tr>
													<tr>
														<td class="event_2">
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">&nbsp;11/10
																</span>
															</p>
														</td>
														<td class="event_2">
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">빕스
																	VIP디너 &nbsp; </span>
															</p>
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">2인
																	식사권 </span> <span style="font-size: 9pt; color: rgb(0, 0, 0);">&nbsp;
																</span>
															</p>
														</td>
														<td class="event_2">
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">아르헨티*졌어(4520)
																</span>
															</p>
														</td>
													</tr>
													<tr>
														<td class="event_2">
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">&nbsp;11/11
																</span>
															</p>
														</td>
														<td class="event_2">
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">어린이
																	대공원&amp;근처숙소</span>
															</p>
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">1박
																	숙박권 </span>
															</p>
														</td>
														<td class="event_2">
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">내**왜이럼(7704)
																</span>
															</p>
														</td>
													</tr>
													<tr>
														<td class="event_2">
															<p style="text-align: center;">
																<span style="font-size: 9pt;; color: rgb(0, 0, 0);">&nbsp;11/12~14
																</span>
															</p>
														</td>
														<td class="event_2">
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">&nbsp;
																</span> <span style="font-size: 9pt; color: rgb(0, 0, 0);">제주도
																	감귤여행&nbsp; </span>
															</p>
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">2인
																	패키지 </span>
															</p>
														</td>
														<td class="event_2">
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">오마*갓(4798)&nbsp;
																</span>
															</p>
														</td>
													</tr>
													<tr>
														<td class="event_2">
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">&nbsp;11/15
																</span>
															</p>
														</td>
														<td class="event_2">
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">인터컨티넨탈
																	레슬링 챔피언쉽 </span>
															</p>
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">1회
																	입장권 </span> <span style="font-size: 9pt; color: rgb(0, 0, 0);">&nbsp;
																</span>
															</p>
														</td>
														<td class="event_2">
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">존*나어퍼컷(0020)&nbsp;
																</span>
															</p>
														</td>
													</tr>
													<tr>
														<td class="event_2">
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">&nbsp;11/16
																</span>
															</p>
														</td>
														<td class="event_2">
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">월미도
																	바이킹 VIP </span>
															</p>
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">1회
																	이용권&nbsp; </span>
															</p>
														</td>
														<td class="event_2">
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">이거*냐ab(5069)&nbsp;
																</span>
															</p>
														</td>
													</tr>
													<tr>
														<td class="event_2">
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">&nbsp;11/17
																</span>
															</p>
														</td>
														<td class="event_2">
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">&nbsp;서울코믹
																	월드 </span>
															</p>
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">1회
																	입장권 </span>
															</p>
														</td>
														<td class="event_2">
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">&nbsp;세이*짱조아(7122)
																</span>
															</p>
														</td>
													</tr>
													<tr>
														<td class="event_2">
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">&nbsp;11/18
																</span>
															</p>
														</td>
														<td class="event_2">
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">&nbsp;환상의
																	에버랜드 용인 </span>
															</p>
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">자유
																	이용권 </span>
															</p>
														</td>
														<td class="event_2">
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">&nbsp;
																</span> <span style="font-size: 9pt; color: rgb(0, 0, 0);">t*익스프레스(2094)
																</span>
															</p>
														</td>
													</tr>
													&nbsp;
													</span>
													</p>
													</td>
													</tr>
												</tbody>
											</table>
											<p>&nbsp;</p>
											</p>
										</div>
										<br> <br>
										<p style="font-size: medium;">
											************************************************************
											<br> <br> <strong>※ 참고하세요.</strong> <br> - 5만원
											초과 당첨금은 제세공과금 22%가 부여되며, 당사가 100% 부담합니다. <br> - 제세공과금
											처리를 위해 1등 당첨자 전원에게 신분증 사본을 요청, 수집하며 거부 시 당첨에서 제외됩니다. <br>
											- 제세공과금 처리를 위하여 11월 7일부터 fish 고객센터 1670-6250에서 당첨자에게 유선으로
											연락드리며 <br> 11월 12일까지 유선 연락이 불가한 (내정보 내 휴대폰 번호 미등록, 오류 등)
											당첨자는 당첨에서 제외됩니다. - 당첨자 유선 안내는 여기어때에 등록된 휴대폰번호를 기준으로 제공되며 미기재
											및 오기재로 인한 유선 연락 불가 시 <br> 당첨에서 제외됩니다. (당첨 제외 시 환불 불가) -
											경품 지급 전 회원탈퇴 시 환불 및 경품 지급이 불가하오니 이 점 유의바랍니다. <br> -
											미사용으로 인한 경품 소멸 시 재 지급되지 않습니다. <br> - 당첨자가 개인정보 수집 또는 당첨
											거부 시 당첨자를 재 선정하지 않습니다. <br> - 당첨자에게는 11월 19일 경품이 지급/발송
											됩니다.
										</p>

									</div>
						</a></li>
						<li><a href="javascript:GetShow4()" class="all_list"
							id="notice_tab">
								<p>(발표) 11월 3주차 원양어선 초대권 이벤트</p> <span>2022.11.16</span> <img
								src="${pageContext.request.contextPath}/img/under1.png"
								width="20px" class="under">
								<div id="plus_4" style="display: none;">
									<div style="font-size: 12px;">
										<p style="font-size: medium;">
											안녕하세요. 고기를 잡으러 바다로 가는 fish피쉬입니다 <br> 11월 3주차 '서해 원양어선 초대권'
											이벤트 당첨자를 발표합니다. <br> <br> <br> 이벤트 당첨자
										</p>
										<table
											style="table-layout: fixed; font-size: 10pt; width: 0px;">
											<colgroup>
												<col width="83">
												<col width="169">
												<col width="135">
											</colgroup>
											<tbody>
												<tr style="height: 21px;">
													<td class="td_4" rowspan="1" colspan="3"></td>
												</tr>
												<tr style="height: 58px;">
													<td class="td_5">낚시 <br> VIP 초대권 <br> (2명)
													</td>
													<td class="td_6">· 파워낚시대맨</td>
													<td class="td_7">· 3자잡아봤어</td>
												</tr>
												<tr style="height: 58px;">
													<td class="td_8" rowspan="2" colspan="1">
														<div style="max-height: 116px;">
															선상낚시 <br>무료체험<br>(4명)
														</div>
													</td>
													<td class="td_9">· 황금낚시대</td>
													<td class="td_10">· 나사람밀당해</td>
												</tr>
												<tr style="height: 58px;">
													<td class="td_11"
														style="border-bottom: 1px solid rgb(183, 183, 183); overflow: hidden; padding: 2px 3px; vertical-align: middle; font-size: 9pt;">·
														용궁대마왕</td>
													<td class="td_12"
														style="border-right: 1px solid rgb(183, 183, 183); border-bottom: 1px solid rgb(183, 183, 183); overflow: hidden; padding: 2px 3px; vertical-align: middle; font-size: 9pt;">·
														내간아직자라</td>
												</tr>
												<tr style="height: 21px;">
													<td class="td_13"
														style="font-size: 13.3333px; overflow: hidden; padding: 2px 3px; vertical-align: middle;">
													</td>
													<td class="td_14"></td>
												</tr>
											</tbody>
										</table>
										<p style="font-size: medium;">
											<strong>※ 참고하세요.</strong> <br> - 지급된 원양어선 초대권은 쿠폰함에서 확인
											가능합니다. <br> - 초대권 사용 시 최소 3일 전 해당 프런트에 문의해 주세요. <br>
											- 원양어선 초대권은 타인에게 양도하거나 재판매 할 수 없습니다. <br> - 업소 사정(광고제휴 종료,
											업주변경 등)에 의해 초대권 사용이 불가능할 수 있으며, fish에서 대체해 드리지 않습니다. <br>






											- 본 이벤트는 당사의 사정에 의해 변경/중지될 수 있습니다.
										</p>

									</div>
						</a></li>
					</ul>
				</div>

				
			</div>
		</div>
	</div>
	</div>
	</div>
</body>
<script>
function GetShow(){
	  var con = document.getElementById("plus");
	  if(con.style.display == "none"){
	      con.style.display = "block";
	  }
	  else{
	      con.style.display = "none";
	  }
	}
	function GetShow2(){
	  var con = document.getElementById("plus_2");
	  if(con.style.display == "none"){
	      con.style.display = "block";
	  }
	  else{
	      con.style.display = "none";
	  }
	}
	function GetShow3(){
	  var con = document.getElementById("plus_3");
	  if(con.style.display == "none"){
	      con.style.display = "block";
	  }
	  else{
	      con.style.display = "none";
	  }
	}
	function GetShow4(){
	  var con = document.getElementById("plus_4");
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
</body>
</html>