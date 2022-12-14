<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/pwfind.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    <title>비밀번호 찾기</title>
</head>
<body>
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
                    <a class="logintext" href="./login.html">로그인</a>
                    <a class="jointext" href="./joinview.html">회원가입</a>
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

    <div class="container">
    <form name="findpwForm" method="post" action="${cp}/user/pwfind.us" onsubmit="return sendit()">
          <table class="idtable">
            <tr>
                <td>
            <div>
                <input type="button" value="뒤로가기" id="back1">
            </div>
        </td>
    </tr>
            <tr>
                <td>
                    <p id="fid1">비밀번호 찾기</p>
                    <input type="text" id="bar12">
                </td>
            </tr>
            <tr>
                <td>
                    <p id="phone1">휴대폰 인증</p>
                </td>
            </tr>
            
            <tr>
                <td id="name1" colspan="3"><label for="userpp">아이디</label></td>
            </tr>
            <tr>
              <td colspan="2"><input type="text" name="nametext1" placeholder="아이디를 입력해주세요" class="box22" id="userid" onkeyup="checkid(this.value)">
            </tr>
            <tr>
                <td id="idresult" colspan="3"></td>
            </tr>

            <tr>
                <td id="phone2" colspan="3"><label for="phone22">휴대폰 번호</label></td>
            </tr>
            <tr>
              <td colspan="2"><input type="text" name="phonetext1" placeholder="번호를 입력해주세요" class="box22" id="phonenumber" onkeyup="phonecheck(this.value)" oninput="autoHyphen2(this)" maxlength="13">
            </tr>

            <tr>
                <td id="phone_result" colspan="3"></td>
            </tr>
            <tr>
              <td colspan="2"><input type="text" name="inumbertext1" placeholder="인증번호 7자리" id="inumber22">

            </tr>
<tr>
    <td>
        <input type="submit" value="확인" id="ok1">
    </td>
 </tr>

        </table>
</form>
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
<script>
function sendit() {
    const findpwForm = document.findpwForm;
    const userid = findpwForm.userid;
    const phonenumber = findpwForm.phonenumber;
    const verification = findpwForm.verification;
    
    if(userid.value == ""){
       document.getElementById('idresult').innerHTML="아이디를 입력해주세요";
        document.getElementById('idresult').style.color="red";
        userid.focus();
        return false;
    }
    if(phonenumber.value == ""){
       document.getElementById('phone_result').innerHTML="휴대폰 번호를 입력해주세요";
        document.getElementById('phone_result').style.color="red";
        phonenumber.focus();
        return false;
    }
    if(verification.value == "") {
       document.getElementById('verificationresult').innerHTML="인증번호를 입력해주세요";
       document.getElementById('verificationresult').style.color="red";
        verification.focus();
        return false;
    }
    
    
}
</script>
<script>
const idresult = document.getElementById("idresult");
const phone_result = document.getElementById("phone_result");


function checkid(value){
      if(value==""){
         idresult.innerHTML = "아이디를 입력해주세요";
         idresult.style.color = "red";
         return false;
      }
      else{
         idresult.innerHTML ="";
      }
}

function phonecheck(value){
   if(value==""){
      phone_result.innerHTML="'-'를 제외한 핸드폰번호를 입력해주세요";
      phone_result.style.color="red";
      return false;
   }
   else{
      phone_result.innerHTML="";
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