package com.koreait.app.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionTo;
import com.koreait.dao.UserDAO;
import com.koreait.dao.UserDTO;
import java.io.PrintWriter;

public class Usermodify implements Action {

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		resp.setCharacterEncoding("utf-8");
		//MIME 타입
		//setContentType = 클라이언트에게 보내주는 데이터가 어떤 데이터인지 보내주는 것
		resp.setContentType("text/html; charset=utf-8"); 
		UserDTO user = new UserDTO();
		UserDAO udao = new UserDAO();
		String userid = (String)req.getSession().getAttribute("loginUser");
		String username = req.getParameter("username");
		String zipcode = req.getParameter("zipcode");
		String addr = req.getParameter("addr");
		String addrdetail = req.getParameter("addrdetail");
		String str_email01 = req.getParameter("str_email01");
		String str_email02 = req.getParameter("str_email02");
		
		
		user.setUserid(userid);
		user.setUsername(username);
		user.setZipcode(zipcode);
		user.setAddr(addr);
		user.setAddrdetail(addrdetail);
		ActionTo transfer = new ActionTo();
		transfer.setRedirect(true);
		
		PrintWriter out = resp.getWriter();
		if(udao.updateUser(user)) {
			System.out.println("회원정보수정 완료");
			out.print("<script>");
			out.print("location.href = '"+req.getContextPath()+"/user/userinfo.us';");
			out.print("alert('회원정보가 수정되었습니다.');");
			out.print("</script>");
		}
		else {
			System.out.println("회원정보수정실패");
		}
		
		
		return null;
		
	}
	
}
