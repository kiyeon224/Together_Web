<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<link rel="stylesheet" type="text/css" href="css/form.css">
    
<h2>회원가입</h2>
<form action="" method="post">
	<table>
		<tr>
			<td>이름</td>
			<td><input type="text" name="name"></td>
		</tr>
		<tr>
			<td>아이디</td>
			<td><input type="text" name="id"></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="pw"></td>
		</tr>
		<tr>
			<td>비밀번호 확인</td>
			<td><input type="password" name="pw_check"></td>
		</tr>
		<tr>
			<td colspan="3"><input type="button" class="button" value="가입하기"></input>
				<input type="reset" class="button" value="다시입력"></td>
		</tr>
	</table>
</form>