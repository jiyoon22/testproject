package com.koreait.app.user;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.action.Action;
import com.koreait.action.ActionTo;

import smsPackage.smsClass;

public class phoneChackAction implements Action {

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String phone = req.getParameter("phone");
		
		System.out.println(phone);
		phone= phone.replace("-", "");
		System.out.println(phone);
		
		PrintWriter out = resp.getWriter();
		smsClass test = new smsClass();
	
		String certiNum = test.SMS(phone);
		
		if(certiNum != null) {
			HttpSession session = req.getSession(true);
			session.setAttribute("certiNum", certiNum); //인증번호 세션저장
			System.out.println(session.getAttribute("certiNum"));
			
			out.write("O");
		}
		else {
			System.out.println("6-3-x");
			out.write("X");
		}
		out.close();
		return null;
	}
	
}
