package db.admin.model;

import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import my.util.security.AES256;
import my.util.security.SecretMyKey;

public class AdminDAO_imple implements AdminDAO {
	
	private DataSource ds; // DataSource ds 는 아파치톰캣이 제공하는 DBCP(DB Connection Pool)이다.
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private AES256 aes;
	
	
	// 사용한 자원을 반납하는 close() 메소드 생성하기 
    private void close() {
       try {
          if(rs != null)    {rs.close();    rs=null;}
          if(pstmt != null) {pstmt.close(); pstmt=null;}
          if(conn != null)  {conn.close();  conn=null;}
       } catch(SQLException e) {
          e.printStackTrace();
       }
    }
	
	
    // 생성자
 	public AdminDAO_imple() {
 		try {
 			Context initContext = new InitialContext();
 			Context envContext  = (Context)initContext.lookup("java:/comp/env");
 			ds = (DataSource)envContext.lookup("jdbc/semi_oracle");
 			
 			aes = new AES256(SecretMyKey.KEY);
 			// SecretMyKey.KEY 은 우리가 만든 암호화/복호화 키이다.
 			
 		} catch(NamingException e) {
 			e.printStackTrace();
 		} catch(UnsupportedEncodingException e) {
 			e.printStackTrace();
 		}
 	} // end of 생성자
 	
 	

	// ** select가 카테고리일 경우 선택할 카테고라 명을 가지고 온다.
 	@Override
	public List<Map<String, String>> getCategory() throws SQLException {
 		
List<Map<String, String>> cateMap_List = new ArrayList<>();
		
		try {
			conn = ds.getConnection();
			
			String sql = " select ca_name, ca_id "
					   + " from tbl_category ";
			
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Map<String, String> map = new HashMap<>();
				map.put("ca_name", rs.getString("CA_NAME"));
				map.put("ca_id", rs.getString("CA_ID"));
				
				cateMap_List.add(map);
			}
			
		} finally {
			close();
		}
		
		return cateMap_List;
	} // end of public List<Map<String, String>> getCategory() throws SQLException  -----------
 	
 	
 	
 	
	// ** 구매자이름, 리뷰작성날짜, 상품사진, 상품이름, 작성리뷰 ** //
	@Override
	public List<Map<String, String>> getReviewInfo(Map<String, String> paraMap) throws SQLException {
		
		List<Map<String, String>> reviewMap_List = new ArrayList<>();
		
		try {
			conn = ds.getConnection();
			
			String sql =  " SELECT to_char(re_date, 'yyyy-mm-dd') as re_date, re_content, it_name, img_file, name, userid "
						+ " FROM "
						+ " ( "
						+ "     SELECT R.re_date, R.re_content, IT.it_name, IM.img_file, U.name, U.userid, rownum as rno "
						+ "     FROM "
						+ "     ( "
						+ "         select re_seq_no, fk_o_detail_seq_no, re_content, re_date "
						+ "         from tbl_review "
			//			+ "         -- where re_seq_no = '상품번호' "
						+ "     ) R JOIN  "
						+ "     ( "
						+ "         select fk_order_seq_no, fk_it_seq_no, o_detail_seq_no "
						+ "         from tbl_detail "
		//				+ "         -- where o_detail_seq_no = '주문일련번호' "
						+ "     ) D ON R.fk_o_detail_seq_no = D.o_detail_seq_no JOIN "
						+ "     ( "
						+ "         select it_name, it_seq_no "
						+ "         from tbl_item ";
			if("4".equals(paraMap.get("search_condition")) ) {
			// 상품명으로 검색해 왔다.
				sql += " where it_name like '%'||?||'%' ";
			}
			if("1".equals(paraMap.get("search_condition")) ) {
			// 카테고리로 검색해 왔다.
				sql += " where fk_ca_id = ? ";
			}
				sql +=	  "     )IT ON IT.it_seq_no = D.fk_it_seq_no JOIN "
						+ "     ( "
						+ "         select fk_it_seq_no, img_file "
						+ "         from tbl_img "
						+ "         where is_main_img = 1 "
						+ "     ) IM ON IM.fk_it_seq_no = IT.it_seq_no JOIN "
						+ "     (    "
						+ "         select fk_userid, order_seq_no "
						+ "         from tbl_order "
						+ "     ) O ON O.order_seq_no = D.fk_order_seq_no JOIN "
						+ "     (    "
						+ "         select userid, name "
						+ "         from tbl_user ";
			if("2".equals(paraMap.get("search_condition")) ) {
			// 회원명으로 검색해 왔다.
				sql += " where name like '%'||?||'%' ";
				//  where userid = ? or name = ' ' ";
			}
			if("3".equals(paraMap.get("search_condition")) ) {
			// 회원아이디로 검색해 왔다.
				sql += " where userid like '%'||?||'%' ";
			}
			
					sql	+= "     ) U ON O.fk_userid = U.userid "
						+ "		order by R.re_date desc  "
						+ " ) "
						+ " where rno between ? and ? ";
			
			int currentPage	= Integer.parseInt(paraMap.get("currentPage"));
			int pageReviewCnt = Integer.parseInt(paraMap.get("pageReviewCnt"));
			
			pstmt = conn.prepareStatement(sql);

			if("1".equals(paraMap.get("search_condition"))) {
			// 카테고리로 검색해 왔다.
				pstmt.setString(1, paraMap.get("second_cond"));
				pstmt.setInt(2, (currentPage * pageReviewCnt) - (pageReviewCnt - 1));
				pstmt.setInt(3, (currentPage * pageReviewCnt));
			}
			else if("2".equals(paraMap.get("search_condition")) || "3".equals(paraMap.get("search_condition")) || "4".equals(paraMap.get("search_condition")) ) {
			// 회원명으로 검색해 왔다.
				pstmt.setString(1, paraMap.get("second_cond"));
				pstmt.setInt(2, (currentPage * pageReviewCnt) - (pageReviewCnt - 1));
				pstmt.setInt(3, (currentPage * pageReviewCnt));
			}
			else {
				pstmt.setInt(1, (currentPage * pageReviewCnt) - (pageReviewCnt - 1));
				pstmt.setInt(2, (currentPage * pageReviewCnt));
			}
			
			
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Map<String, String> map = new HashMap<>();
				map.put("re_date", rs.getString("RE_DATE"));		// 리뷰작성날짜
				map.put("re_content", rs.getString("RE_CONTENT"));	// 작성리뷰
				map.put("it_name", rs.getString("IT_NAME"));		// 상품이름
				map.put("img_file", rs.getString("IMG_FILE"));		// 상품사진
				map.put("name", rs.getString("NAME"));				// 구매자이름
				map.put("userid", rs.getString("USERID"));			// 유저아이디
				
				reviewMap_List.add(map);
			}
			
		} finally {
			close();
		}
		
		return reviewMap_List;
		
	} // end of public List<Map<String, String>> getReviewInfo(Map<String, String> paraMap) throws SQLException


	
	

	

	
 	
} // end of public class OrderInfoDAO_imple implements OrderInfoDAO {
