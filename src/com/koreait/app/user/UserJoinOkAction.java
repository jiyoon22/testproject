package com.koreait.app.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.action.Action;
import com.koreait.action.ActionTo;
import com.koreait.dao.UserDAO;
import com.koreait.dao.UserDTO;

public class UserJoinOkAction implements Action{

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		//입력 -> 데이터전송 -> [데이터수집 -> 처리 -> 결과전송] -> 출력
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		
		UserDTO user = new UserDTO();
		UserDAO udao = new UserDAO();
		HttpSession session = req.getSession(true);
		UserDTO useruser = (UserDTO)session.getAttribute("loginUser");
		
		int user_logintype;
		if(useruser==null) {
			user_logintype=0;
		}
		else {
			user_logintype=1;
		}
	
		System.out.println(user_logintype);
		
		String userid = req.getParameter("userid");
		user.setUser_logintype(user_logintype);
		user.setUserid(userid);
		user.setUserpw(req.getParameter("userpw"));
		user.setUsername(req.getParameter("username"));
		user.setUseryear(req.getParameter("yy"));
		user.setUsermonth(req.getParameter("mm"));
		user.setUserday(req.getParameter("dd"));
		user.setUsergender(req.getParameter("gender"));
		user.setZipcode(req.getParameter("zipcode"));
		user.setAddr(req.getParameter("addr"));
		user.setAddrdetail(req.getParameter("addrdetail"));
		user.setStr_email01(req.getParameter("str_email01"));
		user.setStr_email02(req.getParameter("selectEmail"));
		user.setUserphone(req.getParameter("phone"));
		user.setVertificationcode(req.getParameter("verification"));
		
		String phone = req.getParameter("phone");
		System.out.println(phone);
		System.out.println(user.getUserphone());
		
		ActionTo transfer = new ActionTo();
		transfer.setRedirect(true);
		if(udao.join(user)) {
			transfer.setPath(req.getContextPath()+"/user/login.us?userid="+userid);
		}
		else {
			//localhost:9090/????
			//바로 인덱스로 돌아간다.
			transfer.setPath(req.getContextPath());
		}
		
		return transfer;
		
		
	}
	
}
