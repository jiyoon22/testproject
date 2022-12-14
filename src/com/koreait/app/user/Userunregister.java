package com.koreait.app.user;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionTo;
import com.koreait.dao.UserDAO;
import com.koreait.dao.UserDTO;

public class Userunregister implements Action {

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
		
		ActionTo transfer = new ActionTo();
		transfer.setRedirect(true);
		
		PrintWriter out = resp.getWriter();
		if(udao.selectpw(userid).equals(userpw)) {
			if(udao.unregister(userid)) {
				req.getSession().removeAttribute("loginUser");
				System.out.println("회월탈퇴되었음");
				out.print("<script>");
				out.print("location.href = '"+req.getContextPath()+"/';");
				out.print("alert('회원탈퇴가 완료되었습니다.');");
				out.print("</script>");
			}
			else {
				System.out.println("회원탈퇴를 실패하였습니다");
				out.print("<script>");
				out.print("location.href = '"+req.getContextPath()+"/';");
				out.print("alert('회원탈퇴를실패하였습니다.');");
				out.print("</script>");
			}
			
		}
		else {
			System.out.println("비밀번호가 알맞지 않습니다.");
			out.print("<script>");
			out.print("location.href = '"+req.getContextPath()+"/user/userout.us';");
			out.print("alert('비밀번호가 알맞지 않습니다.');");
			out.print("</script>");
		}
		return null;
	}

	

}
