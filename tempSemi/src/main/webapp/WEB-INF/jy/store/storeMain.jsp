<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%
	String ctxPath = request.getContextPath();
%>    
<!DOCTYPE html>
<%-- 헤더 시작 --%>
<html lang="ko">
 <head>
    <%-- Required meta tags --%>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>플래그십스토어 | TAMBURINS</title>
    
    <%-- Bootstrap CSS --%>
    <link rel="stylesheet" href="<%= ctxPath%>/bootstrap-4.6.2-dist/css/bootstrap.min.css" type="text/css">
    
    <%-- Font Awesome 5 Icons --%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    
    <%-- 직접만든 CSS --%>
    <link rel="stylesheet" href="<%= ctxPath%>/css/font.css" type="text/css">
    <link rel="stylesheet" href="<%= ctxPath%>/css/jy/store/storeMain.css" type="text/css">

	<%-- Optional JavaScript --%>
    <script src="<%= ctxPath%>/js/jquery-3.7.1.min.js" type="text/javascript"></script>
    <script src="<%= ctxPath%>/bootstrap-4.6.2-dist/js/bootstrap.bundle.min.js" type="text/javascript"></script>    
 	
 	<%-- favcon --%>
 	<link rel="icon" href="<%= ctxPath%>/images/jy/fav_tamburins.png">

<jsp:include page="header_category_store.jsp" />

<body>
	<div id="store_container">
		<c:if test="${not empty requestScope.flgList}">
			<c:forEach var="flgSvo" items="${requestScope.flgList}" varStatus="status">
				<div class="inner-item mx-auto d-block">
					<div id="tamburins${status.count}" class="carousel slide" data-ride="">									
						<div class="carousel-inner">			
							 <c:forEach var="ivo" items="${requestScope.imgList}">
							 	<c:if test="${ivo.fk_store_no eq flgSvo.store_no}">			
									 <c:if test="${ivo.is_main_img eq 1}">
										 <div class="carousel-item active">
											 <c:if test="${ivo.file_type == 'i'}">
											 	<img src="<%= ctxPath%>/images/jy/store/${ivo.store_img_file}" class="d-block w-100" alt="..." />
										 	 </c:if>
										 	 <c:if test="${ivo.file_type == 'v'}">
										 	 	<video class="video--transform w-100 h-100" playsinline="" autoplay="" muted="" loop="">
					                            	<source src="<%= ctxPath%>/images/jy/store/${ivo.store_img_file}" type="video/mp4">
					                        	</video>
										 	 </c:if>
									 	 </div>
								 	 </c:if>
								 	 <c:if test="${ivo.is_main_img eq 0}">
								 	 	<div class="carousel-item">
											 <c:if test="${ivo.file_type eq 'i'}">
											 	<img src="<%= ctxPath%>/images/jy/store/${ivo.store_img_file}" class="d-block w-100" alt="..." />
										 	 </c:if>
										 	 <c:if test="${ivo.file_type eq 'v'}">
										 	 	<video class="video--transform w-100 h-100" playsinline="" autoplay="" muted="" loop="">
					                            	<source src="<%= ctxPath%>/images/jy/store/${ivo.store_img_file}" type="video/mp4">
					                        	</video>
										 	 </c:if>
									 	 </div>
								 	 </c:if>
							 	 </c:if>
						 	 </c:forEach>
							<a class="carousel-control-prev" href="#tamburins${status.count}" data-slide="prev">
							   <span class="carousel-control-prev-icon"></span>
							</a>
							<a class="carousel-control-next" href="#tamburins${status.count}" data-slide="next">
							   <span class="carousel-control-next-icon"></span>
							</a>
						</div>
					</div>
					<div class="text_storeInfo pt-5">
							<div class="text-center fs_name font--kr pb-4">${flgSvo.store_name}</div>
							<div class="text-center fs_address font--kr">${flgSvo.store_address}</div>
							<div class="text-center fs_tel font--kr">${flgSvo.store_contact}</div>
							<div class="text-center fs_hour font--kr">${flgSvo.store_hours}</div>
							<br>
							<c:if test="${requestScope.country eq 'kr'}">
								<div class="text-center pt-2"><a style="text-decoration:underline; color: black;" href="${flgSvo.store_url}" target='_blank'>지도보기</a></div>
							</c:if>
					</div>
				</div>
			</c:forEach>
		</c:if>	
		<c:if test="${not empty requestScope.dptList}"> 
		<div class="store_container mx-auto d-block">
			<div class="text_retailer">
	          <strong>백화점 / 면세점</strong>
	        </div>		
			<div class="store_list  mx-auto">
				<c:forEach var="dptSvo" items="${requestScope.dptList}">
		            <div class="store_item">
		                <div class="store_name font--kr">${dptSvo.store_name}</div>
		                <div class="store_address font--kr">${dptSvo.store_address}</div>
		                <div class="store_tel font--kr">${dptSvo.store_contact}</div>
		                <div class="store_hour font--kr">${dptSvo.store_hours}</div>
		            </div>
	            </c:forEach>
			</div>			
		</div>
		</c:if>
		
		<c:if test="${not empty requestScope.stkList}"> 
		<div class="store_container mx-auto d-bloclist-titlek">
               <div class="text_retailer">
                   <strong>스톡키스트</strong>
               </div>
           	<div class="store_list  mx-auto">
				<c:forEach var="stkSvo" items="${requestScope.stkList}">
		            <div class="store_item">
		                <div class="store_name font--kr">${stkSvo.store_name}</div>
		                <div class="store_address font--kr">${stkSvo.store_address}</div>
		                <div class="store_tel font--kr">${stkSvo.store_contact}</div>
		                <div class="store_hour font--kr">${stkSvo.store_hours}</div>
		            </div>
	            </c:forEach>	            	
       		</div>
   		</div>
   		</c:if>	
   			
	</div>
</body>
<jsp:include page="../../jh/footer.jsp" />
