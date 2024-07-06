package db.admin.model;

import java.sql.SQLException;
import java.util.*;

import db.mypage.orderInfo.domain.*;
import jh.user.domain.*;


public interface AdminDAO {

	// ** select가 카테고리일 경우 선택할 카테고라 명을 가지고 온다.
	List<Map<String, String>> getCategory() throws SQLException;
	
	// ** 구매자이름, 리뷰작성날짜, 상품사진, 상품이름, 작성리뷰 ** //
	List<Map<String, String>> getReviewInfo(Map<String, String> paraMap) throws SQLException;

	

	
	

}
