<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 화면</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
</head>


<style>
 h1{color:rgb(3, 195, 115)
}

#joinMember{
    background-color: rgb(240, 240, 240);
    border-radius: 20px;
    width: 490px;
    margin: auto;
}

button{
   background-color: rgb(3, 195, 115);
   border: none;
   border-radius: 5px;
   margin: 3px;
   color: white;
   
}

button:hover{
    cursor: pointer;
}

input{
    border-radius: 5px;
    border-color: lightgray;
    border-style: double;
    height: 23px;
}

form input:focus{
    border-color:rgb(3, 195, 115);
    outline: none;
}

</style>
<body>

	<jsp:include page="../common/header.jsp"/>
	<jsp:include page="../member/myMenuBar.jsp"/>

    <h1 align="center">회원가입</h1>

    <form action="join.mem" method="post">
        <div id="joinMember">
            <table  style="margin-left: 115px;">
                <br>

                <tr>
                    <th align="left">아이디</th>
                </tr>
                <tr>
                    <td><input onclick="writeId();" type="text" name="memberId" placeholder="아이디를 입력하세요" style="width:160px" required><button style="height: 27px;" onclick="idCheck">중복확인</button></td><br>
                 
               
                </tr>
                <tr>
                    <td style="font-size: 10px; display:none;" id="idMessage" >5 ~ 20자의 영문 소문자, 숫자 특수기호(_),(-)만 사용 가능합니다.</td>
                </tr><tr><td><br></td></tr>

                <tr>
                    <th align="left">비밀번호</th>
                </tr>
                <tr>
                    <td><input onclick="writePwd();" type="password" nmae="memberPwd" placeholder="비밀번호를 입력하세요" style="width:225px" required></td>
                </tr>
                <tr>
                    <td style="font-size: 10px; display:none; " id="pwdMessage">8 ~ 16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.</td>
                </tr><tr><td><br></td></tr>
                <tr>
                    <th align="left">비밀번호 재확인</th>
                </tr>
                <tr>
                    <td><input type="password" nmae="memberPwdChk"  style="width:225px" required>체크</td>
                </tr><tr><td><br></td></tr>
                <tr>
                    <th align="left">이름</th>
                </tr>
                <tr>
                    <td><input type="text" name="memberName"  style="width:225px" required></td>
                </tr><tr><td><br></td></tr>
                <tr>
                    <th align="left">닉네임</th>
                </tr>
                <tr>
                    <td><input type="text" name="nickName"  style="width:160px" required><button style="height: 27px;">중복확인</button></td>
                </tr><tr><td><br></td></tr>
                <tr>
                    <th align="left">이메일</th>
                </tr>
                <tr>
                    <td><input type="email" name="userEmail"  style="width:225px">중복? </td>
                </tr><tr><td><br></td></tr>
              
                    <td><button style="width:233px; height: 35px; color: white;" required>가입하기</button></td>
                </tr>  <tr><td><br></td></tr>
                <tr>

                    <!-- ***모두입력하면 버튼 활성화시키기  -->
                </tr>
            </table>
		</div>
    </form>
    <script>
    
    	function writeId() {
    		$('#idMessage').show();
    		
    	}
    	function writePwd() {
    		$('#pwdMessage').show();
    		
    
    	function idCheck() {
    		
    	}	
    	
    </script>
   

    
    
</body>
</html>