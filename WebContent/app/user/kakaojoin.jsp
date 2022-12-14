<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@page import="com.koreait.dao.UserDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/css/join2.css" rel="stylesheet">
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<title>join2</title>
</head>
<body>
<%
   UserDTO user = (UserDTO)session.getAttribute("loginUser");
%>

<% String certiNum = (String)session.getAttribute("CertiNum"); %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
<div class="join">
        <div class="logo">
            <a href="../../index.jsp">
                <img src="../../img/로고.PNG" alt="피시로고">
            </a>
        </div>
        <form name="joinForm" method="post" action="${cp}/user/userjoinok.us" onsubmit="return sendit();" >
            <table>
                <tr>
                    <td colspan="3"><label for="userid">아이디</label></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="text" name="userid" id="userid" onkeyup="checkid(this.value)"
                     value=<%=user.getUserid()%> readonly></td>
                    <td><input type="button" value="중복검사" onclick="checkId();"></td>
                </tr>
                <tr>
                    <td id="idresult" colspan="3">아이디를 입력해주세요</td>
                </tr>
                <tr>
                    <td  colspan="3"><label for="userpw">비밀번호</label></td>
                </tr>
                <tr>
                    <td colspan="3"><input type="password" id="userpw" name="userpw" onkeyup="checkpw(this.value)"></td>
                </tr>
                <tr>
                    <td id="pwresult" colspan="3">문자, 숫자, 기호를 조합하여 10~15자로 입력해주세요</td>
                </tr>
                <tr>
                    <td colspan="3"><label for="userpw_re">비밀번호재확인</label></td>
                </tr>
                <tr> 
                    <td colspan="3"><input type="password" name="userpw_re" id="userpw_re"  onkeyup="checkpwre(this.value)"></td>
                </tr>
                <tr>
                    <td id="pwresult_re" colspan="3">비밀번호를 확인해주세요</td>
                </tr>
                <tr>
                    <td colspan="3"><label for="name">이름</label></td>
                </tr>
                <tr>
                    <td colspan="3"><input type="text" name="username" id="username"  onkeyup="checkname(this.value)"value=<%=user.getUsername() %> readonly ></td>
                </tr>
                <tr>
                    <td id="nameresult" colspan="3">이름을 입력해주세요</td>
                </tr>
                <tr>
                    <td colspan="3"><label for="yearofbirth">생년월일</label></td>
                </tr>
                <tr class="yearofbirth">
                    <td>
                        <select name="yy" id="year"></select>
                    </td>
                    <td>
                        <select name="mm" id="month"></select>
                    </td>
                    <td>
                        <select name="dd" id="day"></select>
                    </td>
                </tr>
                <tr>
                    <td colspan="3"><label for="gender">성별</label></td>
                </tr>
                <tr>
                    <td colspan="3" class="gender">
                        <div>
                            <input type="radio" id="male" name="gender" value="M">
                            <label for="male" class="male on">
                                <span><em>남성</em></span>
                            </label>
                        </div>
                        <div>
                            <input type="radio" id="female" name="gender" value="F">
                            <label for="female" class="female">
                                <span><em>여성</em></span>
                            </label>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td colspan="3"><label for="address">주소</label></td>
                </tr>
                <tr class="zipcode_area">
                    <td colspan="2"><input readonly name="zipcode" type="text"
						id="sample6_postcode" placeholder="우편번호">
                    </td>
                    <td colspan="">
                        <input type="button" onclick="findAddr()" value="우편번호">
                    </td>
                </tr>
                <tr class="addr_area">
                    <td colspan="3"><input readonly name="addr" type="text"
						id="sample6_address" placeholder="주소"></td>
                 </tr>
                <tr>
                    <td colspan="3"> <input name="addrdetail" type="text"
						id="sample6_detailAddress" placeholder="상세주소" onkeyup="checkaddr(this.value)"></td>  
                </tr>
                <tr>
                	<td id="adresult" colspan="3">주소를 입력해주세요</td>
                </tr>
                
                <tr>
                    <td colspan="3"><label for="e-mail">이메일</label></td>
                </tr>
                <tr>
                    <td colspan="3"><input type="text" name="str_email01" id="str_email01" style="width:25%" onkeyup="checkemail(this.value)"> @
                        <input type="text" name="str_email02" id="str_email02" style="width:90px;" disabled value="naver.com">
                        <select style="width:120px;" name="selectEmail" id="selectEmail">
                             <option value="1">직접입력</option>
                             <option value="naver.com" selected>naver.com</option>
                             <option value="hanmail.net">hanmail.net</option>
                             <option value="hotmail.com">hotmail.com</option>
                             <option value="nate.com">nate.com</option>
                             <option value="yahoo.co.kr">yahoo.co.kr</option>
                             <option value="empas.com">empas.com</option>
                             <option value="dreamwiz.com">dreamwiz.com</option>
                             <option value="freechal.com">freechal.com</option>
                             <option value="lycos.co.kr">lycos.co.kr</option>
                             <option value="korea.com">korea.com</option>
                             <option value="gmail.com">gmail.com</option>
                             <option value="hanmir.com">hanmir.com</option>
                             <option value="paran.com">paran.com</option>
                        </select>
                        </td>
                </tr>
                <tr>
                    <td id="e-mailresult" colspan="3">이메일을 입력해주세요</td>
                </tr>
                <tr>
                    <td colspan="3"><label for="phone">휴대폰</label></td>
                </tr>
                <tr>
               
                    <td colspan="2"><input type="text" name="phone" id="phone" placeholder="핸드폰번호" oninput="autoHyphen2(this)" maxlength="13" onkeyup="checkphone(this.value)">
                    </td>
                    <!-- <td colspan="1"><span id="timer" class="timer">3:00</span></td> -->
                    <td colspan=""><input type="button" name="phone_button" onclick="sendcode2(); sendcode();" value="인증번호" class="btn_checked1"></td>
                	
                </tr>
                <tr>
                    <td id="phone_result" colspan="3">번호를 입력해주세요</td>
                </tr>
                <tr>
                    <td colspan="2"><input type="text" name="verification" id="verification" placeholder="인증번호" onkeyup="checkveri(this.value)"><span id="timer" class="timer">&nbsp;&nbsp;3:00</span></td>
                    <td><input type="button" value="확인" name="phonecheckbn" id="phonecheckbn" onclick="sendcode1();"></td>
                </tr>
                <tr>
                    <td id="verificationresult">인증번호를 입력해주세요</td>
                </tr>
              
               

            </table>
            <div>
                <input type="submit" value="가입하기" onclick="sendco();">
            </div>
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
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
	const cp = "${cp}";
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
 function sendit() {
    const joinForm = document.joinForm;
    const userid = joinForm.userid;
    const username = joinForm.username;
    const sample6_detailAddress = joinForm.sample6_detailAddress;
    const userpw = joinForm.userpw;
    const str_email01 = joinForm.str_email01;
    const phone = joinForm.phone;
    const verification = joinForm.verification;
    
   
    if (userid.value == "") {
    	document.getElementById('idresult').innerHTML="아이디를 입력해주세요";
    	document.getElementById('idresult').style.color="red";
        userid.focus();
        return false;
    }
    if(document.getElementById('idresult').innerHTML == "아이디에 공백을 포함할 수 없습니다"){
   	 document.getElementById('idresult').innerHTML="아이디에 공백을 포함할 수 없습니다";
        userid.focus();
        return false;
     }
    
    if(userid.value.length<5){
        document.getElementById('idresult').innerHTML="아이디는 5자이상 입력해주세요";
        document.getElementById('idresult').style.color="red";
        userid.focus();
        return false;
    }
    if(document.getElementById('idresult').innerHTML == "중복검사를 해주세요"){
        alert("중복체크 통과 후 가입이 가능합니다");
        userid.focus();
        return false;
     }
     if(document.getElementById('idresult').innerHTML == "중복된 아이디가 있습니다"){
        alert("중복체크 통과 후 가입이 가능합니다");
        userid.focus();
        return false;
     }
     
     
    
    
    if(userpw.value == ""){
        document.getElementById('pwresult').innerHTML="비밀번호를 입력해주세요";
        document.getElementById('pwresult').style.color="red";
        userpw.focus();
        return false;
    }
    const reg = /^(?=.*?[a-xA-Z])(?=.*?[0-9])(?=.*?[~?!@#$%^&*_-]).{8,100}$/;
    if(!reg.test(userpw.value)){
        document.getElementById('pwresult').innerHTML="문자,숫자,기호를 조합하여 8자이상 입력해주세요";
    	document.getElementById('pwresult').style.color="red";
    	userpw.focus();
    	return false;
    }
    if(/(\w)\1\1\1/.test(userpw.value)){
        document.getElementById('pwresult').innerHTML="같은 문자를 연속해서 사용할 수 없습니다";
    	document.getElementById('pwresult').style.color="red";
    	userpw.focus();
    	return false;
    }
    if(userpw.value.length<8){
    	documnet.getElementById('pwresult').innerHTML="문자,숫자,기호를 조합하여 8자이상 입력해주세요";
    	document.getElementById('pwresult').style.color="red";
    	userpw.focus();
    	return false;
    }
    if(userpw.value.search(/\s/) != -1){
        document.getElementById('pwresult').innerHTML="비밀번호는 공백을 포함할 수 없습니다";
    	document.getElementById('pwresult').style.color="red";
    	userpw.focus();
    	return false;
    }
    if(userpw_re.value == ""){
        document.getElementById('pwresult_re').innerHTML="비밀번호를 다시 입력해주세요";
    	document.getElementById('pwresult_re').style.color="red";
    	userpw_re.focus();
    	return false;
    }
    if(userpw.value != userpw_re.value){
        document.getElementById('pwresult_re').innerHTML="비밀번호가 일치하지 않습니다";
    	document.getElementById('pwresult_re').style.color="red";
    	userpw_re.focus();
    	return false;
    }
    if(username.value == ""){
    	document.getElementById('nameresult').innerHTML="이름을 입력해주세요";
        document.getElementById('nameresult').style.color="red";
        username.focus();
        return false;
    }
    if(username.value.search(/\s/) != -1){
    	document.getElementById('nameresult').innerHTML="이름에 공백을 포함할 수 없습니다";
        document.getElementById('nameresult').style.color="red";
        username.focus();
        return false;
    }
    if(username.value.length<2){
    	document.getElementById('nameresult').innerHTML="2글자 이상 입력해주세요";
        document.getElementById('nameresult').style.color="red";
        username.focus();
        return false;
    }
    if(/[~!@#$%^&*()_+|<>?:{}]/.test(username.value)){
    	document.getElementById('nameresult').innerHTML="이름에 특수문자를 포함할 수 없습니다";
        document.getElementById('nameresult').style.color="red";
        username.focus();
        return false;
    }
    if(/([^가-힣\x20])/i.test(username.value)){
    	document.getElementById('nameresult').innerHTML="자음,모음만 있는 이름은 처리할 수 없습니다";
        document.getElementById('nameresult').style.color="red";
        username.focus();
        return false;
    }
    if(/[0-9]|[a-z]|[A-Z]/.test(username.value)){
    	document.getElementById('nameresult').innerHTML="이름에 숫자와 영문을 포함할 수 없습니다";
        document.getElementById('nameresult').style.color="red";
        username.focus();
        return false;
    }
    
    if(!joinForm.gender.value){
        alert("성별을 선택해주세요");
        return false;
    }
    if(str_email01.value == ""){
        document.getElementById('e-mailresult').style.color="red";
        str_email01.focus();
        return false;
    }
    if(phone.value == ""){
        document.getElementById('phone_result').style.color="red";
        phone.focus();
        return false;
    }
    if(phone.value.length < 13){
    	 document.getElementById('phone_result').innerHTML="휴대폰번호를 정확히 기재해주세요";
    	 phone.focus();
    	 return false;
    }
    if(document.getElementById('phone_result').innerHTML == "인증버튼을 눌러주세요"){
    	alert("휴대폰인증을 해주세요");
    	return false;
    }
    if(verification.value == "") {
    	document.getElementById('verificationresult').innerHTML="인증번호를 입력해주세요";
        document.getElementById('verificationresult').style.color="red";
        verification.focus();
        return false;
    }
    if(document.getElementById('verificationresult').innerHTML == "인증번호가 일치하지않습니다"){
    	alert("인증번호가 일치하지 않습니다");
    	verification.focus();
    	return false;
    }
    if(document.getElementById('verificationresult').innerHTML == "인증번호 확인버튼을 눌러주세요"){
    	alert("인증번호 확인버튼 눌러주세요");
    	return false;
    }
    
    
    
}
 

 
 
 
 
 
 
 
 
 
 

 
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

function checkId(){
	   const xhr = new XMLHttpRequest();
	   const result = document.getElementById("idresult");
	   const userid = document.joinForm.userid;
	   if (userid.value == "") {
	        document.getElementById('idresult').style.color="red";
	        userid.focus();
	        return false;
	    }
	   xhr.onreadystatechange = function(){
	      if(xhr.readyState == 4){
	         if(xhr.status == 200){
	            let txt = xhr.responseText;
	            txt = txt.trim();
	            if(txt == 'O'){
	               idresult.innerHTML = "사용할 수 있는 아이디입니다";
	               document.getElementById('idresult').style.color="red";
	               document.joinForm.userpw.focus();
	            }
	            else{
	               idresult.innerHTML = "중복된 아이디가 있습니다!";
	               userid.value = '';
	               userid.focus();
	            }
	         }
	      }
	   }
	   xhr.open("GET",cp+"/user/checkidok.us?userid="+userid.value);
	   xhr.send();
	}
	

</script>
<script>
const userid = document.getElementById("userid");
const idresult = document.getElementById("idresult");
const userpw = document.getElementById("userpw");
const userpw_re = document.getElementById("userpw_re");
const pwresult_re = document.getElementById("pwresult_re");
const pwresult = document.getElementById("pwresult");
const username = document.getElementById("username");
const nameresult = document.getElementById("nameresult");
const adresult = document.getElementById("adresult");
const emailresult = document.getElementById("e-mailresult");
const phone_result = document.getElementById("phone_result");
const verificationresult = document.getElementById("verificationresult");

function checkid(value) {
   if(value=="") {
      idresult.innerHTML="아이디를 입력해주세요"
      idresult.style.color="red";
      return false;
   }
   if(value.search(/\s/) != -1){
	  idresult.innerHTML="아이디에 공백을 포함할 수 없습니다"
	  idresult.style.color="red";
      return false;
   }
   else if(value.length < 5) {
      idresult.innerHTML="아이디는 5자이상 입력해주세요"
      idresult.style.color="red";
      return false;
   }
   else if(value=="") {
      idresult.innerHTML="아이디를 입력해주세요"
      idresult.style.color="red";
      return false;
   }
   else{
      idresult.innerHTML="중복검사를 해주세요"
      idresult.style.color="rgb(19, 106, 227)";
   }
   
}

function isPassword(password) {
    var regExp =  /^(?=.*?[a-xA-Z])(?=.*?[0-9])(?=.*?[~?!@#$%^&*_-]).{8,16}$/;
 
    if(regExp.test(password)){
        return true;
    }
    else{
        return false;
    }

}
function checkpw(value) {
	   if(value==""){
	      pwresult.innerHTML="비밀번호를 입력해주세요"
	      pwresult.style.color="red";
	      return false;
	   }
	   else if(value.search(/\s/) != -1) {
	     pwresult.innerHTML="비밀번호는 공백을 포함할 수 없습니다"
	   }
	    else if(/(\w)\1\1\1/.test(value)) {
	        pwresult.innerHTML = "같은 문자를 연속해서 사용할 수 없습니다 ";
	        pwresult.style.color="red";
	         return false;
	     }
	   else if(!isPassword(value)){
	        pwresult.innerHTML = "문자,숫자,기호를 조합하여 8자이상 입력해주세요";
	        pwresult.style.color="red";
	         return false;
	     }
	   else if(value.length < 8){
	       pwresult.innerHTML = "8문자 이상 입력해주세요.";
	       pwresult.style.color="red";
	         return false;
	     }
	     else{
	        pwresult.innerHTML="사용 가능한 비밀번호입니다.";
	        pwresult.style.color="rgb(19, 106, 227)";
	     }
}

function checkpwre(value) {
	   if(value==""){
	      pwresult_re.innerHTML ="비밀번호를 입력해주세요";
	      pwresult_re.style.color="red";
	      return false;
	   }
	   else if(value!=userpw.value){
	      pwresult_re.innerHTML ="비밀번호가 일치하지 않습니다.";
	      pwresult_re.style.color="red";
	      return false;
	   }
	   else {
	      pwresult_re.innerHTML ="비밀번호가 일치합니다.";
	      pwresult_re.style.color="rgb(19, 106, 227)";
	   }
	}
	
function checkname(value){
	   if(value==""){
	      nameresult.innerHTML = "이름을 입력해주세요";
	      nameresult.style.color = "red";
	      return false;
	   }
	   else if(value.search(/\s/) != -1){
	      nameresult.innerHTML = "이름에 공백을 포함할 수 없습니다.";
	      nameresult.style.color = "red";
	      return false;
	   }
	   else if(value.length<2){
	      nameresult.innerHTML = "2글자 이상 입력해주세요.";
	      nameresult.style.color = "red";
	      return false;
	   }
	   else if(/[0-9]|[a-z]|[A-Z]/.test(value)){
	      nameresult.innerHTML = "이름에 숫자와 영문은 포함할 수 없습니다";
	      nameresult.style.color = "red";
	      return false;
	   }
	  
	   else if(/[~!@#$%^&*()_+|<>?:{}]/.test(value)){
	      nameresult.innerHTML = "이름에 특수문자를 포함할 수 없습니다";
	      nameresult.style.color = "red";
	      return false;
	   }
	   else if(/([^가-힣\x20])/i.test(value)){
	      nameresult.innerHTML = "자음,모음만 있는 이름은 처리할 수 없습니다";
	      nameresult.style.color = "red";
	      return false;
	   }
	   else{
	      nameresult.innerHTML ="사용가능한 이름입니다.";
	      nameresult.style.color = "rgb(19, 106, 227)";
	   }
}

function addr_chk(addr){
    var chk = /[0-9]|[가-힣]|[\s]/gi;

    if(addr.length > 0){

    }

    if(chk.test(addr)){

    }else{
        return false;
    }
return true;
}


function checkaddr(value){
	if(value==""){
		adresult.innerHTML="상세주소를 입력해주세요";
		adresult.style.color="red";
		return false;
	}
	else if(!addr_chk(value)){
		adresult.innerHTML="올바른 주소를 입력해주세요";
		adresult.style.color="red";
		return false;
	}
	else {
		adresult.innerHTML="";
	}
}

function checkemail(value){
	if(value==""){
		emailresult.innerHTML="이메일을 입력해주세요";
		emailresult.style.color="red";
		return false;
	}
	else if(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/.test(value)){
		emailresult.innerHTML="올바른 이메일을 입력해주세요";
		emailresult.style.color="red";
		return false;
	}
	else{
		emailresult.innerHTML="";
	}
}

const autoHyphen2 = (target) => {
	 target.value = target.value
	   .replace(/[^0-9]/g, '')
	  .replace(/^(\d{0,3})(\d{0,4})(\d{0,4})$/g, "$1-$2-$3").replace(/(\-{1,2})$/g, "");
	}
	
function checkphone(value){
	if(value==""){
		phone_result.innerHTML="핸드폰번호를 입력해주세요";
		phone_result.style.color="red";
		return false;
	}
	else if(value.length < 13){
		phone_result.innerHTML="휴대폰번호를 정확히 기재해주세요";
		phone_result.style.color="red";
		return false;
	}
	else {
		phone_result.innerHTML="인증버튼을 눌러주세요";
		phone_result.style.color="rgb(19, 106, 227)";
	}
}

function checkveri(value){
	if(value==""){
		verificationresult.innerHTML="인증번호를 입력해주세요";
		verificationresult.style.color="red";
		return false;
	}
	else if(value.length<4){
		verificationresult.innerHTML="정확한 인증번호를 입력해주세요";
		verificationresult.style.color="red";
		return false;
	}
	else{
		verificationresult.innerHTML="인증번호 확인버튼을 눌러주세요";
		verificationresult.style.color="rgb(19, 106, 227)";
	}
}


</script>
<script>
   function sendcode2(){
         const xhr = new XMLHttpRequest();
         const phone = document.getElementById("phone");
         const cp = "${cp}";
         console.log(phone.value);


         xhr.onreadystatechange = function(){
            console.log("5-4");
            if(xhr.readyState == 4){
               if(xhr.status == 200){
                  let txt = xhr.responseText;
                  txt = txt.trim();
                  if(txt == 'O'){
                     alert("인증번호 전송이 완료되었습니다.");
                     document.getElementById('phone_result').innerHTML="인증번호가 발송되었습니다";
                     
                  }
                  else if(txt == 'X') {
                     alert("인증번호 전송을 다시 확인해 주세요.");
                     document.getElementById('phone_result').innerHTML="인증번호가 발송되지 않았습니다";
                  }
               }
            } 
         } 
         xhr.open("GET",cp +"/user/phonechack.us?phone="+phone.value);
         xhr.send();   
   };
   
   function sendcode1(){
       const xhr = new XMLHttpRequest();
       const verification = document.getElementById("verification");
       const cp = "${cp}";
       console.log(phonecheckbn.value);

		
       xhr.onreadystatechange = function(){
          console.log("5-4");
          if(xhr.readyState == 4){
             if(xhr.status == 200){
                let txt = xhr.responseText;
                txt = txt.trim();
                if(txt == 'O'){
                   alert("인증번호가 일치합니다.");
                   document.getElementById("verificationresult").innerHTML="인증번호가 일치합니다";
                }
                else if(txt == 'X') {
                   alert("인증번호가 일치하지 않습니다.");
                   document.getElementById("verificationresult").innerHTML="인증번호가 일치하지않습니다";
                }
             }
          } 
       } 
       xhr.open("GET",cp +"/user/verifichack.us?verification="+verification.value);
       xhr.send();   
 };
   


</script>
<script>
function sendcode() {
 $("#verification").attr("disabled",false); //활성화
 var userphone = $('#phone').val();
 
 const modifyT = document.querySelector(".btn_checked1");
 
 $('.btn_checked1').attr("disabled", true);
 $('#phone').attr("disabled", true);
 $("#verification").attr("disabled",false);
 modifyT.innerHTML="재전송";
 
 var time = 179; // 기준시간 3분 (180/60 =3)
 var min = ""; // 분
 var sec = ""; // 초

 var x = setInterval(function(){
     min = parseInt(time/60); // 3분
     sec = time%60; //나머지 초

     document.getElementById("timer").innerHTML = min +":"+sec; // 3:00
     time--;

     //타임아웃 시
     if(time<0){
         clearInterval(x); //setInterval() 실행을 끝내기
         document.getElementById("timer").innerHTML = "0:00"
         $('.btn_checked1').attr("disabled", false);
         $("#verification").attr("disabled", true);


         }
     },1000)

}
function sendco(){
	$('#phone').attr("disabled", false);
}
</script>
</html>