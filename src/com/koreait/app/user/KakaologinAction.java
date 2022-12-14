package com.koreait.app.user;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.action.Action;
import com.koreait.action.ActionTo;
import com.koreait.dao.KUserDAO;
import com.koreait.dao.UserDTO;

public class KakaologinAction implements Action{

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		
		
		UserDTO user = new UserDTO();
		KUserDAO kdao = new KUserDAO();
		String username = req.getParameter("user_name");
		String useremail = req.getParameter("user_email");
		
		System.out.println(username);
		System.out.println(useremail);
		
		PrintWriter out = resp.getWriter();
		
		if(kdao.kakaoDBcheck(username,useremail) != null) {
			System.out.println("이프");
			HttpSession session = req.getSession(true);
			session.setAttribute("loginUser",useremail);
			
			/* UserDTO useruser = (UserDTO)session.getAttribute("loginUser"); */
			/* System.out.println(useruser.getUsername()); */
			
			out.print("<script>");
			//alert('apple님 어서오세요~!');
			out.print("alert('"+username+"님 어서오세요~!');");
			//location.href = '???/app/board/main.jsp';
			out.print("location.href = '"+req.getContextPath()+"/';");
			out.print("</script>");
			
		}
		
		else {
			System.out.println("엘스");
			HttpSession session = req.getSession(true);
			UserDTO loginUser = new UserDTO();
			loginUser.setUsername(username);
			loginUser.setUserid(useremail);
			session.setAttribute("loginUser",loginUser);
			ActionTo transfer = new ActionTo();
			transfer.setRedirect(true);
			transfer.setPath("/app/user/kakaojoin.jsp");
			return transfer;
			
			
		}
		
		return null;
	}
	
}
