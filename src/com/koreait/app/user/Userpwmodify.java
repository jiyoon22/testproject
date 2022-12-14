package com.koreait.app.user;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionTo;
import com.koreait.dao.UserDAO;
import com.koreait.dao.UserDTO;

public class Userpwmodify implements Action {

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		resp.setCharacterEncoding("utf-8");
		//MIME 타입
		//setContentType = 클라이언트에게 보내주는 데이터가 어떤 데이터인지 보내주는 것
		resp.setContentType("text/html; charset=utf-8"); 
		UserDTO user = new UserDTO();
		UserDAO udao = new UserDAO();
		String userid = (String)req.getSession().getAttribute("loginUser");
		String userpw = req.getParameter("userpw");
		System.out.println(userid);
		System.out.println(userpw);
		
		ActionTo transfer = new ActionTo();
		transfer.setRedirect(true);
		System.out.println("유저pw수정");

		PrintWriter out = resp.getWriter();
		if(udao.Userpwmodify(userid,userpw)) {
			System.out.println("비밀번호수정 완료");
			out.print("<script>");
			out.print("location.href = '"+req.getContextPath()+"/';");
			out.print("alert('비밀번호가 수정되었습니다.');");
			out.print("</script>");
		}
		else {
			System.out.println("비밀번호수정실패");
		}
		
		return null;
	}
	
}
