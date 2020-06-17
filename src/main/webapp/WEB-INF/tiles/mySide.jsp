<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
/* 
String S_no = (String)session.getAttribute("member_no"); 
String S_id = (String)session.getAttribute("member_id");
 */
 String S_no = "3";  // 임시번호 부여
 String S_id = "test1"; // 임시id  부여

%>    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
<title>MY_Side</title>

<!-- 부트스트랩 -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<script>

function logout(){
	
	var con = confirm("접속을 종료하시겠습니까");
	if(con){
		<%
		session.removeAttribute("member_no");
		session.removeAttribute("member_id");
		//session값을 제거
	 	response.sendRedirect("/stu/main.do");
		// 페이지의 메인으로 이동
		%>
	}else{
		return;
	}
}
</script>

</head>
<body>
	<!-- /.navbar-header -->
	<div class="navbar-default sidebar" role="navigation" style="width: 250px;">
	
	<div style="width: 200px;height: 150px;background-color: #F78181;text-align: center;">
		<br />
		<h2>마이페이지</h2>
		<p>MYPAGE</p>
	</div>
	
			<p style="text-align: center;"><%=S_no %>님 반갑습니다 ^^/</p>
			<p style="text-align: center;"><a href="#" onclick="logout()">로그아웃</a>하시겠습니까</p>
		
		<div class="sidebar-nav navbar-collapse">
			<ul class="nav" id="side-menu">
			
				<li><a href="#" style="background: #F8F8F8;">
						<b class="fa fa-bar-chart-o fa-fw">나의 쇼핑정보</b> <span class="fa arrow">▼</span>
				</a>
					<ul class="nav nav-second-level">
						<li><a href="/stu/myOrderList.do">- 주문/배송 내역</a></li>
						<li><a href="/stu/myAsList.do">- 교환/환불/AS 내역</a></li>
						<li><a href="/stu/my/myPointList.do">- 포인트</a></li>
						<li><a href="">- 할인쿠폰</a></li>
						<li><a href="">- 찜 상품</a></li>
					</ul></li>

				<li class="active"><a href="#" style="background: #F8F8F8;">
						<b class="fa fa-bar-chart-o fa-fw">나의 문의내역</b> <span class="fa arrow">▼</span>
				</a>
					<ul class="nav nav-second-level">
						<li><a href="">- 내가 쓴 리뷰</a></li>
						<li><a href="">- 내가 쓴 상품</a></li>						
					</ul></li>
				<li><a href="/stu/adminOrder.do"
					style="background: #e7e7e7; border-bottom: 1px solid #F8F8F8;">
						<b class="fa fa-dashboard fa-fw">주문배송관리</b> 
				</a></li>
				<li class="active"><a href="#" style="background: #F8F8F8;">
						<b class="fa fa-bar-chart-o fa-fw">나의 문의내역</b> <span class="fa arrow">▼</span>
				</a>
					<ul class="nav nav-second-level">
						<li><a href="">- 회원정보수정</a></li>
						<li><a href="">- 회원 탈퇴</a></li>						
					</ul></li>	

			</ul>
		</div>
		<!-- /.sidebar-collapse -->
	</div>
	<!-- /.navbar-static-side -->







	<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
	<script src="js/bootstrap.min.js"></script>
</body>
</html>
