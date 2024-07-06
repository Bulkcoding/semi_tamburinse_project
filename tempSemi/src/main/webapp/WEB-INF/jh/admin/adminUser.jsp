<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
    
<%
	String ctxPath = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 주문관리</title>


<%-- Required meta tags --%>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
 
<script src="<%= ctxPath %>/js/jquery-3.7.1.min.js" type="text/javascript"></script>

<%-- Font Awesome 6 Icons --%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

<%-- 직접 만든 CSS --%>
<link rel="stylesheet" type="text/css" href="<%= ctxPath%>/css/jh/admin/adminUser.css" />

<script type="text/javascript">

	$(document).ready(function(){
		
	}); // end of $(document).ready(function(){});
	
	

</script>
<jsp:include page="../../jy/header_revised.jsp" />

<title>회원조회 | Tamburins</title>

<body>
	<div id="member">
		<div id="mypage_left">
			<h3 id="mypage_link">관리페이지</h3>
			<p id="p_user_info"><span id="user_name">${(sessionScope.loginuser).name} 님</span></p>
			<ul class="list_md">
				<li class="list_head">주문</li>
				<li><a href="<%= ctxPath%>/adminOrder.tam">주문 관리</a></li>
			</ul>
			
			<ul class="list_md">
				<li class="list_head">회원</li>
				<li><a href="<%= ctxPath%>/adminUser.tam">회원 조회</a></li>
			</ul>
			
			<ul>
				<li class="list_head">상품</li>
				<li><a href="<%= ctxPath%>/adminItem.tam">상품 관리</a></li>
				<li><a href="<%= ctxPath%>/admin/itemRegister.tam">상품 등록</a></li>
			</ul>
		</div>
		
		<div id="mypage_right">
			<table id="User_info">
				<tr class="tbl_user_info">
					<th colspan="9" class="table_title">회원 조회</th>
				</tr>
				<tr class="userInfo">
					<th class="table_field_1" width="10%">아이디</th>
					<th class="table_field_2" width="5%">이름</th>
					<th class="table_field_3" width="10%">생일</th>
					<th class="table_field_4" width="10%">이메일</th>
					<th class="table_field_5" width="10%">연락처</th>
					<th class="table_field_6" width="5%" >성별</th>
					<th class="table_field_7" width="35%" >주소</th>
					<th class="table_field_8" width="10%" >가입일</th>
					<th class="table_field_9" width="5%" >상태</th>
				</tr>
				
				<c:forEach var="usvo" items="${requestScope.userAllList}" varStatus="status">
				
					<tr class="column_text">
					
						<%-- 아이디 --%>
						<td width="10%">
							<span>${usvo.userid}</span>
						</td>
						
						<%-- 이름 --%>
						<td width="5%">
							<span>${usvo.name}</span>
						</td>
						
						<%-- 생일 --%>
						<td width="10%">
							<span>${usvo.birthday}</span>
						</td>
						
						<%-- 이메일 --%>
						<td width="10%">
							<span>${usvo.email}</span>
						</td>
						
						<%-- 연락처 --%>
						<td width="10%">
							<span>${usvo.mobile}</span>
						</td>
						
						<%-- 성별 --%>
						<td width="5%">
							<span>${usvo.gender}</span>
						</td>
						
						<%-- 주소 --%>
						<td width="35%" class="text-left">
							<c:if test="${not empty usvo.postcode}">
								<span>(${usvo.postcode})</span>
								<span>${usvo.address}&nbsp;${usvo.detailaddress}&nbsp;${usvo.extraaddress}</span>
							</c:if>
							<c:if test="${empty usvo.postcode}">
								<span>(주소 미입력)</span>
							</c:if>
						</td>
						
						<%-- 가입일 --%>
						<td width="10%">
							<span>${usvo.registerdate}</span>
						</td>
						
						<%-- 상태 --%>
						<td width="5%">
							<c:if test="${usvo.status eq 2}">
								<span style="color: red;">휴면중</span>
							</c:if>
							<c:if test="${usvo.status eq 1}">
								<span>활동중</span>
							</c:if>
							<c:if test="${usvo.status eq 0}">
								<span style="color: blue;">관리자</span>
							</c:if>
						</td>
						
					</tr>
					
				</c:forEach>
				
			</table>
		</div>
	</div>	
	<br>
</body>

<jsp:include page="../footer.jsp" />