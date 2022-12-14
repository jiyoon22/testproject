package com.koreait.app.user;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.action.Action;
import com.koreait.action.ActionTo;

public class verifiChackAction implements Action {

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		String verification = req.getParameter("verification");
		
		System.out.println(verification);
		HttpSession session = req.getSession();
		String certiNum = (String)session.getAttribute("certiNum");
		System.out.println(certiNum);
		
		PrintWriter out = resp.getWriter();
		if(verification.equals(certiNum)) {
			out.write("O");
		}
		else {
			out.write("X");
		}
		out.close();
		return null;
	}

	
}
