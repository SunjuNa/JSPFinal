<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product List</title>
<link href="css/styles.css" rel="stylesheet">
<link href="css/shopping.css" rel="stylesheet">
 <script type="text/javascript" src="member/member.js"></script>
  <script type="text/javascript" src="mypage/mypage.js"></script> 
</head>
<body>
	<div id="wrap">
		<!--헤더파일 들어가는 곳 시작 -->
		<header>
			<!--로고 들어가는 곳 시작--->
			<div id="logo">
				<a href="ProductMarket?command=index">
					<img src="images/logo.png" width="180" height="100" alt="nonageshop">
				</a>
			</div>
			<!--로고 들어가는 곳 끝-->
			<nav id="catagory_menu">
				<ul>
					<c:choose>
						<c:when test="${empty sessionScope.loginUser}">
							<li><a href="ProductMarket?command=login_form" style="width: 110px;">LOGIN(CUSTOMER</a> <a href="ProductMarket?command=admin_login_form" style="width: 100px;">| ADMIN)</a></li>
							<li>/</li>
							<li><a href="ProductMarket?command=contract">JOIN</a></li>
						</c:when>
						<c:otherwise>
							<li style="color: orange">${sessionScope.loginUser.name}(${sessionScope.loginUser.id})</li>
							<li><a href="ProductMarket?command=logout">LOGOUT</a></li>
						</c:otherwise>
					</c:choose>
					<li>/</li>
					<li><a href="ProductMarket?command=cart_list">CART</a></li>
					<li>/</li>
					<li><a href="ProductMarket?command=mypage">MY PAGE</a></li>
					<li>/</li>
					<li><a href="ProductMarket?command=qna_list">Q&amp;A(1:1)</a></li>
				</ul>
			</nav>

			<nav id="top_menu">
				<ul>
					<li><a href="ProductMarket?command=catagory&kind=1">Heels</a></li>
					<li><a href="ProductMarket?command=catagory&kind=2">Boots</a></li>
					<li><a href="ProductMarket?command=catagory&kind=3">Sandals</a></li>
					<li><a href="ProductMarket?command=catagory&kind=4">Sneakers</a></li>
					<li><a href="ProductMarket?command=catagory&kind=5">On Sale</a></li>
				</ul>
			</nav>
			<div class="clear"></div>
			<hr>
		</header>
		<!--헤더파일 들어가는 곳 끝 -->
	
</body>
</html>