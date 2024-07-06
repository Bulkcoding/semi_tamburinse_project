package jh.admin.controller;

import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.controller.AbstractController;
import jh.user.model.*;
import jh.user.domain.*;

public class AdminUserAction extends AbstractController {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		UserDAO udao = new UserDAO_imple();
		
		// 모든 회원을 조회하는 메소드
		List<UserVO> userAllList =  udao.userSelectAll();
		
		request.setAttribute("userAllList", userAllList);
		
		super.setRedirect(false);
		super.setViewPage("/WEB-INF/jh/admin/adminUser.jsp");
		
		
	}

}
