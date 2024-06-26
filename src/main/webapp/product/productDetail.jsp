<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../header.jsp"%>
<script type="text/javascript" ><%@ include file="product.js" %></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	

<article>
	<h1>Item</h1>
	<div id="itemdetail">
		<form method="post" name="formm">
			<fieldset>
				<legend> Item detail Info</legend>
				<a href="ProductMarket?command=product_detail&prod_no=${product.prodNo}">
					<span style="float: left;"> 
					<img src="https://picsum.photos/id/${product.imageUrl}/300" />
					</span>
					<h2>${product.prodName}</h2>
				</a>
				<label> 가 격 : </label>
				<p>${product.prodPrice}원</p>
				<label> 수 량 : </label>
				<input type="text" name="quantity" size="2" value="1">
				<br>
				<input type="hidden" name="pseq" value="${product.prodNo}">
				<br>
			</fieldset>
			<div class="clear"></div>
			<div id="buttons">
				<input type="button" value="장바구니에 담기" class="submit" onclick="go_cart()">
				<input type="button" value="즉시 구매" class="submit" onclick="go_order()">
				<input type="reset" value="취소" class="cancel">
			</div>
		</form>
	</div>
</article>

<%@ include file="../footer.jsp"%>
	
</body>
</html>