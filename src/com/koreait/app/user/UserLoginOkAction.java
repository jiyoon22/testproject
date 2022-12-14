package com.koreait.app.user;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionTo;
import com.koreait.dao.UserDAO;

public class UserLoginOkAction implements Action {

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		resp.setCharacterEncoding("utf-8");
		//MIME 타입
		//setContentType = 클라이언트에게 보내주는 데이터가 어떤 데이터인지 보내주는 것
		resp.setContentType("text/html; charset=utf-8"); 
		
		UserDAO udao = new UserDAO();
		String userid = req.getParameter("userid");
		String userpw = req.getParameter("userpw");
		
		PrintWriter out = resp.getWriter();
//		ActionTo transfer = new Action();
		//transfer은 foward로 보내주기
//		transfer.setRedirect(false);
		if(udao.login(userid,userpw)) {
			//getSession()은 세션의 번호를 받아오는 것임.
			//session에 유저 아이디를 세팅해놨기 때문에 결과를 보낼필요가 없음.
			req.getSession().setAttribute("loginUser", userid);
			out.print("<script>");
			out.print("location.href = '"+req.getContextPath()+"/';");
			out.print("</script>");
		}
		else {
//			transfer.setPath("/");
			out.print("<script>");
			out.print("alert('아이디 또는 비밀번호를 확인해주세요');");
			out.print("location.href = '"+req.getContextPath()+"/';");
			out.print("</script>");
			
		}
		return null;
	}

}
