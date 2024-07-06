package db.admin.controller;

import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import common.controller.AbstractController;
import db.admin.model.*;
import jh.user.domain.UserVO;

public class ItemReviewAction extends AbstractController {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String referer =  request.getHeader("referer");
	//	System.out.println("referer => " + referer);
		
		if( referer == null ) {
		// url 검색은 차단한다.
			request.setAttribute("message", "정상적인 접근이 아닙니다.");
			request.setAttribute("loc", request.getContextPath() + "/admin/itemReview.tam");
			
			super.setRedirect(false);
			super.setViewPage("/WEB-INF/db/msg.jsp");
			return;
		}

		HttpSession session = request.getSession();
		UserVO loginuser = (UserVO) session.getAttribute("loginuser");
		
		if( loginuser == null || !"admin@naver.com".equals(loginuser.getUserid()) ) {
		// 로그인을 하지 않은경우  || 관리자가 아닌경우
			
			request.setAttribute("message", "접근할 수 없습니다.");
			request.setAttribute("loc", request.getContextPath() + "/index.tam");
	
			super.setRedirect(false);
			super.setViewPage("/WEB-INF/jh/msg.jsp");
		}
		else {
		// 관리자인 경우
			AdminDAO addao = new AdminDAO_imple();	
			
			Map<String,String> paraMap = new HashMap<>();
			
			// 리뷰를 볼 상품 카테고리 (검색)
			String search_condition = request.getParameter("cond_sel");
			// 검색조건 -> 첫번째 select에서 고른것  처음에는 없다.
				// 1 상품카테고리 2번째 select가 있다.
				// 2 회원명, 3 회원아이디, 4 상품명 검색창 이용
				// 5 전체 전체 상품을 검색해 온다.
			// 
			if(search_condition == null ) {
				search_condition = "5";
			}
			
			// 선택한 select의 text를 가지고 온다.
			String cond_sel_text = request.getParameter("cond_sel_text");
			if("5".equals(search_condition)) {
				cond_sel_text = "전체";
			}
			request.setAttribute("cond_sel_text", cond_sel_text);
			
		//	System.out.println("search_condition => "+ search_condition);
			
			
			// 상품 카테고리 선택시 다음 선택지로 받는 category_name 이다.
			String item__category_text = request.getParameter("item__category_text");
			// 1 상품카테고리 
			if("1".equals(search_condition)) {
				request.setAttribute("item__category_text", item__category_text);
			}
			
			paraMap.put("search_condition", search_condition); // 검색 종류
			
			String second_cond = "";
			if(search_condition != null) {
				// 검색 조건이 들어왔다.
				switch (search_condition) {
				case "1": // 상품 카테고리 검색
					second_cond = request.getParameter("item__category");
					paraMap.put("second_cond", second_cond);
					break;
				case "5": // 전체 검색
					break;
				default: // 회원명, 회원아이디, 제품명 으로 검색
					second_cond = request.getParameter("seach_text");
					paraMap.put("second_cond", second_cond);
					break;
				}
			}// end of if(search_condition != null) ---------------------
		//	System.out.println("search_condition => "+ search_condition);
		//	System.out.println("seach_text => " + seach_text);
			
			// 한 페이지 리뷰 수
			int pageReviewCnt = 12;
			
			// 현재 페이지 번호
			String currentPage = request.getParameter("c_p");
			
			try {
				Integer.parseInt(currentPage);
			} catch (Exception e) {
				currentPage = "1";
			}
			
			// ** select가 카테고리일 경우 선택할 카테고라 명을 가지고 온다.
			List<Map<String,String>> cateMap_List = addao.getCategory();
		//	System.out.println("cateMap_List.size()=> "+ cateMap_List.size());
			
			paraMap.put("currentPage",currentPage);
			paraMap.put("pageReviewCnt",String.valueOf(pageReviewCnt));
			
			// 리뷰를 보여준다.
				// ** 구매자이름, 리뷰작성날짜, 상품사진, 상품이름, 작성리뷰 ** //
			List<Map<String,String>> reviewMap_List = addao.getReviewInfo(paraMap);
		//	System.out.println("reviewMap_List.size() => "+ reviewMap_List.size());
		
			// 검색 조건에 맞는 페이지 수
			int totPage = (int) Math.ceil((double)reviewMap_List.size() / pageReviewCnt);
			//System.out.println("totPage => " + totPage);
			
			String page_li = "";
			if("1".equals(search_condition)) {
				for(int i=0; i<totPage; i++) {
					page_li += "<li><a href='itemReview.tam?cond_sel="+search_condition+"&cond_sel_text="+cond_sel_text+"&item__category="+second_cond+"&item__category_text="+item__category_text+"&c_p="+(i+1)+"'>"+(i+1)+"</a></li>";
				}
			}
			else if("2".equals(search_condition) || "3".equals(search_condition) || "4".equals(search_condition)) {
				for(int i=0; i<totPage; i++) {
					page_li += "<li><a href='itemReview.tam?cond_sel="+search_condition+"&cond_sel_text="+cond_sel_text+"&seach_text="+second_cond+"&c_p="+(i+1)+"'>"+(i+1)+"</a></li>";
				}
			}
			else {
				for(int i=0; i<totPage; i++) {
					page_li += "<li><a href='itemReview.tam?cond_sel="+search_condition+"&c_p="+(i+1)+"'>"+(i+1)+"</a></li>";
				}
			}
			//System.out.println("page_li=> "+ page_li);
			
			request.setAttribute("search_condition", search_condition);
			request.setAttribute("second_cond", second_cond);
			request.setAttribute("page_li", page_li); // 페이징 바
			request.setAttribute("cateMap_List", cateMap_List); // 현재 있는 상품카테고리를 view단에 넘긴다.
			request.setAttribute("reviewMap_List", reviewMap_List); // 선택된 리뷰를 가지고 간다.

			super.setRedirect(false);
			super.setViewPage("/WEB-INF/db/admin/adminReview.jsp");	
		}// end of if( !(loginuser == null || "admin".equals(loginuser.getUserid())) )
		
		
		
	} //end of public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception

}
