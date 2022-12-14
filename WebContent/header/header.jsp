<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>header</title>
</head>
<header>
<%
     String user = (String)session.getAttribute("loginUser");
%>
<div class="logo">
                    <div class="searchplace">
                        <input type="text" class="searchbar" placeholder="지역, 낚시터명">
                    </div>
                    <div class="searchzone" onclick="header1()">
                        <img class="searchicon" src="/img/search_w_1.png">
                    </div>
                    <div class="searchzone_sub" onclick="header1()">
                        <img class="searchicon" src="/img/search_b_1.png">
                    </div>
                    <div class="closezone" onclick="header2()">
                        <img class="searchicon" src="/img/exit_w.png">
                    </div>
                    <div class="closezone_sub" onclick="header2()">
                        <img class="searchicon" src="/img/exit_b.png">
                    </div>
                    <% if(user ==  null) { %>
                    <div class="loginbutton">
                        <a class="logintext" href="/user/login.us">로그인</a>&nbsp;&nbsp;
                        <a class="jointext" href="/user/userjoin.us">회원가입</a>
                    </div>
                    <% } else {%>
                    	 <a class="logintext" href="/user/logout.us">로그아웃</a>&nbsp;&nbsp;
                    <%} %>
                    <li class="morelist" id="over">
                        <a class="moretext" href="./joinview.html">더보기</a>
                        <div class="sublist" name="sublist">
                            <div id=more_sub class="morelist_sub1">
                                <a href="#">공지사항</a>
                            </div>
                            <div id=more_sub class="morelist_sub2">
                                <a href="#">자주 묻는 질문</a>
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


</header>
<script>
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
}
function header2()  {
    $('.searchzone').css('transform','translateX(0px)');
    $('.searchzone_sub').css('transform','translateX(0px)');
    $('.main').css('opacity','1');
    $('.searchplace').css('visibility','hidden');
    $('.closezone').css('visibility','hidden');
    $('.closezone_sub').css('visibility','hidden');
}

</script>
</html>