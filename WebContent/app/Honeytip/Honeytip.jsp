<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@page import="com.koreait.dao.UserDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link href="${pageContext.request.contextPath}/css/honeytip.css" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css"/>
    <title>fish</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
<title>Tip</title>
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
                    <a class="jointext" href="${cp}/user/logout.us">회원가입</a>
                 <%} else { %>
                   <a class="logintext" href="${cp }/user/userout.us">로그아웃</a>
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
                          <a href="${ cp}/app/QnA/QnAView.jsp">자주 묻는 질문</a>
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
<br>
    <main>
            <div class="main">
                <h1>Fising Tip</h1>
                <br>
                <div class="tabmenu out-tabmenu">
                  <ul>
                    <li id="tab1" class="btnCon"> 
                      <input type="radio" checked name="tabmenu" id="tabmenu1">
                      <label for="tabmenu1">Tip 1</label>
                      <div class="tabCon out-tabCon" >
                        <p>
                          <h3>1. 조과에 연연하지 말자 </h3>
                    
                        &nbsp; 처음에는 작은 물고기를 낚는 것도 그저 신기하기만 하다. 회를 치거나 요리를 해먹을 목적이라면, 더더욱 물고기를 챙기고 싶은 욕구가 드는데 늘 마음처럼 낚이지 않을 때가 있다. 그럴 때 초보 낚시꾼들에게 바라는 마음가짐 한 가지가 있다. 바로 작은 물고기만 낚이더라도 생선 요리를 해 먹고 싶은 욕구보다는 어린 개체를 보호하자는 마음이 조금 더 컸으면 하는 것이다. 낚시는 물고기를 낚는 그 자체만이 전부는 아니라는 것. 준비 과정에서 낚싯대를 드리우는 시간이 제삼자가 보면 의미 없을지라도, 본인에게는 그 자체만으로도 힐링이 되지 않을까? 조과는 덤으로 얻는 부가적인 이득이라 생각한다면, 꽝을 쳐도 마음이 섭섭하지 않을 것이다.
                        </p>

                       <p>
                        <h3>2. 대상 어종을 분명히 하자</h3>

                        &nbsp; 초보 때는 고등어도 잡고 싶고 감성돔도 잡고 싶고, 이것저것 다 잡아보고 싶은 마음이 있었다. 하지만 그게 마음처럼 되지 않았다. 어종마다 출현하는 시기도 지역도, 수심도 다르기 때문에 언제 어디로 가서 어떤 장비로 하는지에 따라 낚이는 어종이 달라지기 때문이다. 이 범위를 좁히면 좁힐수록 물고기 낚을 확률은 높아지기 마련이니, 낚시를 준비할 때는 대상 어종을 분명히 정해 그 어종에 특화된 장비와 채비를 준비했으면 좋겠다. 그렇게 낚시를 즐기다 보면, 메인으로 삼은 대상 어종에 추가로 의도치 않은 손님 고기가 낚이는 경험을 하게 될 것이다. 
                       </p>
                       <p>
                         <h3>3. 값비싼 장비에 연연하지 말자</h3>
                         &nbsp; 가끔 연장 탓을 하는 이들을 보는데, 사실 낚시 조과와 장비 가격은 비례하지 않는다. 내 아내의 경우 예전에 월마트에서 구매한 만 원짜리 낚싯대 세트로 약 37cm급 감성돔을 낚아 내기도 했고, 필자 또한 수년간 낚시하면서 20만 원이 넘어가는 낚싯대를 써본 적이 없었으니 말이다. 오히려 처음부터 너무 비싼 장비를 사면, 익숙하지 못함에서 오는 실수로 인해 파손될 위험도 있다. 어차피 낚시하다 보면 이중지출을 피할 수 없는데, 이왕이면 저렴하면서 품평이 괜찮은 장비로 입문하고, 이후 낚시가 재미있어서 좀 더 깊게 파고 싶을 때 고가의 장비를 구매해도 늦지 않는다. 


                       </p>
                       <p>
                       <h3>4. 고수와 동출하자</h3>
                       &nbsp; 낚시를 단기간에 빠르고 쉽게 배울 수 있는 팁. 고수와 동출, 즉 함께 출조하는 것이 가장 확실하다. 혼자서 혹은 실력이 비슷한 동료들과 즐기는 것도 힐링 낚시의 측면에서는 다르다고 볼 수 없다. 하지만 내가 이른 시일 내에 낚시에 익숙해져서 가족이든 지인이든 그들이 보는 앞에서 능숙한 솜씨로 물고기를 낚아내 보이겠다면, 2~3회 정도는 고수와 함께 출조해 배우는 것이 혼자서 터득하는 것보다 몇 배는 빠르다는 점을 유념하자.
                       </p>
                       <p>
                        <h3>5. 낚시에서 조과는 인간관계와 비례한다</h3>
                        &nbsp; 내가 인간관계의 중요성을 깨달았을 때가 낚시 입문 후 7~8년 차였다. 본인이 7~8년 만에 터득한 진리를 여러분은 7~8분 정도 읽으며 깨닫길 바란다. 물론 이런 진리는 필자의 주관적인 견해가 아니다. 낚시계에 깊이 뿌리 박힌 인식이자 정설이다. 이 인간관계는 대개 선장, 선주, 낚시점 사장과의 관계를 의미하는 것으로 이들이 아끼는 절친 및 후배들은 VIP 손님을 넘어, 말 그대로 지인이기 때문에 고기 잡을 확률이 거의 확실시되는 포인트로 안내한다. VIP 단골손님 또한 지나칠 수 없는 관계이므로 비교적 좋은 포인트로 안내해줄 확률이 높다. 이는 배를 타고 갯바위 포인트에 내릴 때의 이야기다. 포인트에 어떤 손님을 하선할지는 전적으로 선장의 고유 권한이기 때문이다<br><br>
                        &nbsp; 선상낚시와 루어 낚시도 마찬가지다. 나 혼자 도보 포인트에서 개인 낚시할 것이 아니라면, 대부분 배를 타고 나가게 될 텐데 그랬을 때, 그 지역에서 요즘 가장 핫한 어종이 어디서 나오는지 또는 어떤 배를 타고 가야 잡을 수 있는지 등의 현지 소식통이 있다. 이 현지 소식통을 아는 사람들은 일차적으로 낚시 업계에 몸담고 있는 선장이나 선주들이고, 이차적으로 그들과 유대감이 있는 현지 꾼이다. 만약, 나는 선장과 친분도 없고 서울, 수도권에 산다고 하면, 이차적 위치에 있는 현지 꾼들과의 관계가 어느 정도 현지 사정을 파악하는 데 도움이 된다.



                        잊지 말자. 낚시는 정보전이라는 것을. 지금 이 시기 어디서 어떤 어종이 얼마나 잡힌다는 소식을 알고 출조하는 것과 모르고 출조하는 것은 하늘과 땅 차이란 것을. 


                       </p>
                     <div class="tabmenu"></div>
                
                      
                </div>
                      
                    </li>
                    <li id="tab2" class="btnCon"><input type="radio" name="tabmenu" id="tabmenu2">
                      <label for="tabmenu2">Tip 2</label>
                      <div class="tabCon out-tabCon" >
                        <p>
                          <h3>1. 메인 미끼 외에 한두 미끼를 준비해 가자</h3>
                          &nbsp; 가령, 원투 낚시는 갯지렁이를 주로 쓰지만, 꼴뚜기나 오징어살을 챙기면 상황에 맞게 활용할 수 있다. 그랬을 때 뜻하지 않은 우럭이 낚일 수도 있고, 붕장어나 노래미가 낚이기도 한다. 
                        </p>
                        <p>
                          <h3>2. 루어를 챙기자</h3>
                          &nbsp; 하루는 이런 날이 있었다. 감성돔을 낚으러 들어왔는데 찌낚시 크릴 미끼에 잿방어가 물고 늘어진 것이다. 곧바로 루어(바이브레이션)를 꿰어 던지자 잿방어를 비롯해 날새기까지 물면서 그야말로 뜻하지 못한 손맛을 봤다. 특히, 여름부터 가을 사이는 난류성 및 공격성 어류가 설치기도 하니 루어대와 미노우, 바이브레이션 정도는 한두 개씩 챙기길 권한다. 
                        </p>
                        <p>
                          <h3>3. 대체 미끼를 준비하자</h3>
                          &nbsp;감성돔, 벵에돔 낚시에서 메인 미끼는 크릴이다. 하지만 잡어가 설치는 여름부터는 크릴이 사실상 미끼 역할을 못 한다. 그랬을 때 감성돔은 잡어로부터 옥수수 경단이나 옥수수 콘(통조림), 민물새우, 깐 새우 등으로 극복할 수 있다<br>
                          마찬가지로 벵에돔은 파래새우를 비롯해 빵가루 경단을 준비하면 잡어를 따돌리고 대상어를 낚을 확률이 높아진다. 그러니 잡어를 극복하기 위한 대체 미끼를 준비해 가자. 
                        </p>

                      </div>
                      
                    </li>    
                    <li id="tab3" class="btnCon"><input type="radio" name="tabmenu" id="tabmenu3">
                      <label for="tabmenu3">Tip 3</label>
                      <div class="tabCon out-tabCon" >
                        <p>
                          <h3>1. 포인트 속 짐 정리</h3>
                          &nbsp;베테랑일수록 짐 정리가 깔끔한 편이다. 쓰레기를 단속하고 잘 챙기며, 조수간만의 차이를 염두에 둔 낚시 짐의 배치(갯바위에서)만 보아도 이 사람이 낚시를 얼마나 자주 다니는지 알 수 있다. 
                        </p>
                        <p>
                          <h3>2. 적절한 복장</h3>
                          &nbsp;베테랑 낚시인은 머리부터 발끝까지 얼마짜리를 두르냐가 아닌, 얼마나 시의적절한 복장인지로 파악할 수 있다. 루어 낚시에서는 그에 맞는 복장이 있고, 갯바위 낚시에서는 또 그에 맞는 복장이 있듯이 말이다. 특히, 구명복과 신발은 안전과 직결되는 문제이므로 가격이나 품질, 패션과 타협해선 안 된다.
                        </p>
                        <p>
                          <h3>3. 캐스팅과 파이팅 동작</h3>
                          &nbsp; 아마 초보와 중급자 이상의 여부는 캐스팅과 파이팅 동작에서 적잖은 차이가 날 것 같다. 단순히 채비를 내리는 선상낚시야 캐스팅의 차이가 두드러지지 않지만, 루어나 원투, 릴 찌낚시는 캐스팅과 파이팅의 비중이 매우 높다고 볼 수 있다. 캐스팅의 비거리, 정확도에 따라 조과가 달라지고, 파이팅 역시 노련함을 엿볼 수 있으니 말이다. 또한, 벵에돔 낚시의 경우 밑밥을 투척하는 비거리와 정확도, 제구력에서도 현격한 차이가 난다. 

                        </p>
                        <p>
                          <h3>4. 마음의 여유</h3>
                          &nbsp;베테랑 낚시인은 전반적으로 마음의 여유가 있다. 낚시하는 내내 성급하지 않으며 차분하다. 이러한 태도는 분명 고기를 챙길 때도 나타나기 마련인데, 정말로 먹을 고기만 챙기며 먹지 않을 고기를 방생하는 것이 어렵지 않을 정도다.
                        </p>
                          
                        </div>
                      
                    </li>
                    <li id="tab4" class="btnCon"><input type="radio" name="tabmenu" id="tabmenu4">
                      <label for="tabmenu4">Tip 4</label>
                      <div class="tabCon out-tabCon" >
                        <p>
                          <h3>1. 가장 기본적인 시간 약속부터!</h3>
                          &nbsp;출조점 예약도 손님의 갑작스러운 취소나 무통보 잠적에 손실을 보기도 한다. 나의 일방적이고도 갑작스러운 취소는 누군가의 출조 기회를 빼앗는 결과를 불러오므로 예약 취소는 최소 하루 전, 하다못해 반나절이라도 미리 통보해 나를 대신하여 인원을 메꾸도록 시간적 배려를 해주는 것이 필요하다. 아울러 여러 사람이 함께 출조할 때는 출항 시간을 준수하는 것 또한 지켜져야 할 예절이다. 
                        </p>
                        <p>
                          <h3>2. 자리 배려와 흡연 예절</h3>
                          &nbsp;정원 초과는 한국 낚시 문화에서 여전히 개선되지 않는 고질적인 문제다. 새벽잠을 포기하고 나서는 꾼은 누구나 고단하다. 수도권에서 자가용을 몰고 오는 이들은 말할 것도 없다. 낚싯배 정원이란? 모두가 선실에 앉았을 때 수용 가능한 인원이다. <br>
                          그런데 여기서 몇 명이 다리를 펴고 눕게 되면, 일부는 앉지도 못한 채 서서 가야 하고, 심지어 선실 밖에서 30분 이상 떠밀린 채 가기도 한다. 그러다 보면 파도를 뒤집어쓰기도 한다. 일부는 자리가 없어 선실에 들어오지 못하는 데도 꿋꿋이 다리를 뻗고 자는 사람, 심지어 잘 것도 아니면서 누워서 스마트폰 게임을 즐기는 사람, 춥다고 선실에서 담배 피우는 사람, 특히, 조타실에서 피는 담배 냄새는 전부 선실로 들어가는데 비흡연자는 무슨 죄일까?<br>
                          파도치고, 바람 불고, 멀리 가야 할 때 자리가 없어서 바깥에 머무는 사람이 있다면, 모두가 자발적으로 앉아가거나 자리를 배려하는 성숙한 의식이 자리 잡았으면 좋겠다.
                        </p>
                        <p>
                          <h3>3. 함께 쓰는 자리에서 지켜야 할 예절</h3>
                          &nbsp; 예를 들면 방파제, 방조제 그리고 여러 명이 함께 서서 낚시할 수 있는 갯바위에서는 더욱더 예절에 신경 써야 한다. 옆 사람 진로를 방해하는 무리한 캐스팅도 자제해야 할 행위 중 하나다. 대상어는 대게 소음에 취약하므로 고성방가, 시끄러운 잡담에도 경계심을 품을 수 있다. 새벽에 감성돔이나 벵에돔을 노릴 때는 헤드 랜턴을 바다에 비추지 않아야 하고, 서로 간에 채비가 엉키면 누구 잘못이랄 것도 없이 사과하거나 눈인사라도 하는 여유도 필요하다. 나 자신은 대수롭지 않게 여기던 행동이 누군가에게는 방해될 수 있으니 말이다<br>
                          야구나 축구에서도 진로 방해가 있듯 흘림낚시에서도 옆 사람의 찌 흘림에 내가 방해될 수 있음을 항시 염두에 두고, 서로 간에 포인트가 겹치면 협의하거나 그렇지 못하더라도 암묵적인 호흡(로테이션)을 맞춰보는 것은 어떨까? 상대방이 경험 많은 베테랑 꾼이라면, 흔쾌히 받아줄 것이다. 
                        </p>
                        <p>
                          <h3>4. 사과에 인색하지 말자</h3>
                          &nbsp; 배낚시에서 앞뒤 혹은 옆 사람과 채비가 엉켰을 때 우린 어떻게 대처하고 있었을까? 혹시 얼굴 붉히며 말없이 채비를 푸는 것은 아닐까? 아니면 옆 사람의 채비를 싹둑 자르거나 하지는 않았을까? <br>
                          신속하고 빠른 대처를 위해선 누군가의 채비를 잘라야 하는 경우도 있다. 누구의 채비를 잘라야 이 엉킴을 쉽게 해결할 수 있을지는 조력 있는 사람이 판단하는 것이 좋지만, 그것이 곧 선택권이 되는 것은 아니다. 만약, 불가피하게 상대방의 채비를 잘라야 한다면 반드시 양해를 구해야 함이 맞다. 그런데도 말없이 자르고, 그것도 모자라 그 사람 채비에 매달린 고기까지 챙기는 뻔뻔한 꾼들도 여럿 보았다. (선상에서는 암묵적인 합의로 일종의 벌칙이라고 주장을 펼치는 이들도 있는데 시대착오적 발상이다) <br>
                          누가 먼저랄 것도 없이 사과하거나 눈인사를 하는 것. 이는 결코, 체면이나 품위를 지키는 행위가 아니다. 꾼들의 언어로 말하자면, 소위 쓸데없는 ‘가오’다. 이런 것은 버리고 함께 즐기는 낚시란 점을 잊지 말자. 
                        </p>
                        <p>
                          <h3>5. 금지 체장과 금어기를 준수하자</h3>
                          &nbsp;인터넷에 조금만 검색해 보면, 잡지 말아야 할 금지 체장(몸길이)과 금어기가 있다. 어종별, 시즌별 잡지 말아야 할 어종은 무엇인지 미리 파악해 놓고 낚시하는 것. 어찌 보면 예절이라기보다 낚시인이 가져야 할 소양이 아닌가 싶다. 
                        </p>
                        <p>
                          <h3>6. 낚시를 마치면 청소하자</h3>
                          &nbsp;필자는 그 사람의 됨됨이를 판단하는 가장 합당한 평가 항목에는 '출조 후, 청소 여부'가 비중 있게 차지한다고 본다. 최소한 내가 가져온 쓰레기만큼은 깔끔하게 치우고 만약, 야영 낚시를 했다면 흔적을 남기지 않는 것. 모든 낚시인이 이점을 지켜나간다면 늘 쾌적한 환경에서 낚시를 즐길 것이고, 지금처럼 낚시 금지 구역이 생기지도 않을 것이다. 철수하기 전, 10분만 시간 내서 주변을 정리하고 청소할 줄 아는 낚시인이 된다면, 사람들이 낚시를 바라보는 시선도 달라질 것이라고 본다. 
                        </p>
                      </div>
                      
                    </li>

                  </ul>
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