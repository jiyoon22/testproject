package com.koreait.app.user;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionTo;
import com.koreait.dao.UserDAO;
import com.koreait.dao.UserDTO;

public class UserListAction implements Action{

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		UserDAO udao = new UserDAO();
		UserDTO user = new UserDTO();
		
		String userid = (String)req.getSession().getAttribute("loginUser");
		List<UserDTO> list = udao.getUserlist(userid);
		req.setAttribute("list", list);
		System.out.println(list);

		Iterator<UserDTO> iterator = list.iterator();
		 
		while (iterator.hasNext()) {
		    UserDTO element = iterator.next();
		    System.out.println(element);
		} 
		ActionTo transfer = new ActionTo();
		transfer.setRedirect(false);
		transfer.setPath("/app/user/infomodify.jsp");
		
		return transfer;
	}
	
}
