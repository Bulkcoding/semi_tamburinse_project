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
<link rel="stylesheet" type="text/css" href="<%= ctxPath%>/css/db/admin/adminReview.css" />

<%-- 직접 만든 JS --%>
<script src="<%= ctxPath %>/js/db/admin/adminReview.js" type="text/javascript"></script>

<jsp:include page="../../jy/header_revised.jsp" />

<title>상품리뷰 | Tamburins</title>

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
				<li><a href="<%= ctxPath%>/admin/itemReview.tam">상품 리뷰</a></li>
			</ul>
		</div>
		
		<div id="mypage_right">
			<table id="shopping_info">
				<tr>
					<th colspan="5" class="table_title">상품 후기</th>
				</tr>
				<tr class="search_set_tr">
					<td colspan="5" class="search_set_td">
						<form name="search__set">
							<div class="div_l">
								<span>검색 조건&nbsp;:&nbsp;</span>
								<select name="cond_sel">
									<option value="0" selected disabled>조건을 선택하세요</option>
									<option value="1">상품카테고리</option>
									<option value="2">회원명</option>
									<option value="3">회원아이디</option>
									<option value="4">상품명</option>
									<option value="5">전체</option>
								</select>
								<input type="hidden" id="cond_sel_text" name="cond_sel_text" readonly />
								
								<select id="item__category" name="item__category">
									<option value="" selected disabled>상품카테고리 선택</option>
									<c:forEach var="cateMap" items="${requestScope.cateMap_List}">
										<option value="${cateMap.ca_id}">${cateMap.ca_name}</option>
									</c:forEach>
								</select>
								<input type="hidden" id="item__category_text" name="item__category_text" readonly/>
								
							</div>
							<div class="div_r">
								<span>검색어&nbsp;:&nbsp;</span>
								<input type="text" id="seach_text" name="seach_text" size="20" />
								<input type="text" style="display:none;" />
								<button type="button" class="search__btn">검색</button>
							</div>
						</form>
					</td>
				<tr>
					<td colspan="5">
						<span>현재 검색 조건&nbsp;:&nbsp;</span>
						<span class="con__1">
							${requestScope.cond_sel_text}
						</span>
						<span class="con__2">
							<c:if test="${requestScope.search_condition eq 1}">${requestScope.item__category_text}</c:if>
							<c:if test="${requestScope.search_condition ne 1}">${requestScope.second_cond}</c:if>
						</span>
						
					<td>
				</tr>
				
				<%-- DB 여러개의 값이 들어가야 됨 (반복문) 아래는 예시 -- 쇼핑 정보 상세 ppt-72 --%>
				<%-- 주문횟수마다 반복 --%>
				<%-- R.re_date, R.re_content, IT.it_name, IM.img_file, U.name --%>
				<c:forEach var="reviewMap" items="${requestScope.reviewMap_List}">
					<tr class="user__info">
						<td class="user__">
							<div class="user__id">${reviewMap.userid}</div>
							<div class="user__name">${reviewMap.name}</div>
						</td>
						<td class="review_date">${reviewMap.re_date}</td>
						<td class="item_image"><img class="img_item_iamge" src="<%= ctxPath%>/images/jh/index/${reviewMap.img_file}"/></td>
						<td class="item_name">${reviewMap.it_name}</td>
						<td class="item_review">
							<textarea class="item_review_contents" disabled>${reviewMap.re_content}</textarea>
						</td>
					</tr>
				</c:forEach>
				
			</table>
			
			<div class="page__">
				<ul class="page__ul">
					${requestScope.page_li}
				</ul>
			</div>
			
		</div> <%-- mypage_right --%>
		
	</div>	
	<br>
</body>

<jsp:include page="../../jh/footer.jsp" />