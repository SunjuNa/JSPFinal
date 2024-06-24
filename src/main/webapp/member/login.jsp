<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../header.jsp"%>
<article>
	<h1>Login</h1>
	<form method="post" action="ProductMarket?command=login">
		<fieldset>
			<legend></legend>
			<label>User ID</label>
			<input name="id" type="text" value="${id}" value="one">
			<br>
			<label>Password</label>
			<input name="pwd" type="password" value="1111">
			<br>
		</fieldset>
		<div class="clear"></div>
		<div id="buttons">
			<input type="submit" value="로그인" class="submit">
			<input type="button" value="회원가입" class="cancel" onclick="location='NonageServlet?command=join_form'">
			<input type="button" value="아이디 비밀번호 찾기" class="submit" onclick="location='NonageServlet?command=find_id_form'">
		</div>
	</form>
</article>
<%@ include file="../footer.jsp"%>
	
</body>
</html>