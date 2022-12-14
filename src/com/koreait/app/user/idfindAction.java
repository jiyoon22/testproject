package com.koreait.app.user;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionTo;
import com.koreait.dao.UserDAO;
import com.koreait.dao.UserDTO;

public class idfindAction implements Action {

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		
		UserDTO user = new UserDTO();
		UserDAO udao = new UserDAO();
		
		
		String username = req.getParameter("nametext1");
		String userphone = req.getParameter("phonetext1");
		
		System.out.println(username);
		System.out.println(userphone);
		
		List<UserDTO> list = udao.getUserid(username,userphone);
		req.setAttribute("list", list);
		
		Iterator<UserDTO> iterator = list.iterator();
		
		while (iterator.hasNext()) {
			UserDTO element = iterator.next();
			System.out.println(element);
		}
		ActionTo transfer = new ActionTo();
		transfer.setRedirect(false);
		transfer.setPath("/app/user/idfind2.jsp");
		
		
		
		
		return transfer;
	}
	
}
