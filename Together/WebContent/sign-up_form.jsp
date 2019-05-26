<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<link rel="stylesheet" type="text/css" href="css/form.css">
<script>
	/* Validate for Sign-up */
	function validateForm() {
		var regExp;
		
		// Check name
		regExp = new RegExp(/[A-Za-z0-9]/);
		var name = document.forms["sign-up"]["name"].value;
		if (regExp.test(name)) {
			alert("이름은 한글만 입력할 수 있습니다.");
			return false;
		}
	
		// Check id
		regExp = new RegExp(/[A-Za-z0-9]{4,12}/);
		var id = document.forms["sign-up"]["id"].value;
		if (!regExp.test(id)) {
			alert("아이디는 영문이나 숫자로만 구성된 4~12글자만 가능합니다.");
			return false;
		}
	
		// Check pw
		regExp = new RegExp(/(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{6,}/);
		var pw = document.forms["sign-up"]["pw"].value;
		if (!regExp.test(pw)) {
			alert("비밀번호는 영문, 숫자, 특수문자로 구성된 6글자 이상이어야 합니다.");
			return false;
		}
		
		// Check pw_check
		var pw_check = document.forms["sign-up"]["pw_check"].value;
		if (pw === pw_check) {
			alert("회원이 되신 것을 축하합니다!");
			return true;
		} else {
			alert("입력하신 비밀번호가 일치하지 않습니다.");
			return false;
		}
	}
</script>

<h2>회원가입</h2>
<form name="sign-up" action="" onsubmit="return validateForm()" method="post">
	<table>
		<tr>
			<td>이름</td>
			<td><input type="text" id="name" required></td>
		</tr>
		<tr>
			<td>아이디</td>
			<td><input type="text" name="id" required></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="pw" required></td>
		</tr>
		<tr>
			<td>비밀번호 확인</td>
			<td><input type="password" name="pw_check" required></td>
		</tr>
		<tr>
			<td colspan="3"><input type="submit" class="button" value="가입하기"></input>
				<input type="reset" class="button" value="다시입력"></td>
		</tr>
	</table>
</form>