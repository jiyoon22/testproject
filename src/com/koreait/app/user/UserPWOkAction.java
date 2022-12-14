package com.koreait.app.user;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionTo;
import com.koreait.dao.UserDAO;

public class UserPWOkAction implements Action {

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		resp.setCharacterEncoding("utf-8");
		//MIME 타입
		//setContentType = 클라이언트에게 보내주는 데이터가 어떤 데이터인지 보내주는 것
		resp.setContentType("text/html; charset=utf-8"); 
		String userpw = req.getParameter("userpw");
		UserDAO udao = new UserDAO();
		PrintWriter out = resp.getWriter();
		String userid = (String)req.getSession().getAttribute("loginUser");
		if(udao.checkpw(userid,userpw)) {
			out.print("<script>");
			out.print("location.href = '"+req.getContextPath()+"/user/userpwokaction.us';");
			out.print("</script>");
			System.out.println("비밀번호일치");
		}
		else {
			out.print("<script>");
			out.print("alert('비밀번호가 일치하지않습니다.');");
			out.print("location.href = '"+req.getContextPath()+"/user/userinfo.us';");
			out.print("</script>");
			System.out.println("비밀번호다름");
		}
		return null;
	}
	

}
