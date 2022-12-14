package com.koreait.app.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.ActionTo;

public class UserFrontController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// post요청일 경우에는 utf-8로 인코딩을 해주어야 한다.
		req.setCharacterEncoding("utf-8");
		doProcess(req, resp);
	}

	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 길나누는 코드
		// 요청된 주소가 requestURI에 담겨있음.
		String requestURI = req.getRequestURI(); // ??????/user/userjoin.us
		String contextPath = req.getContextPath(); // ??????(module명)
		String command = requestURI.substring(contextPath.length()); // /user/userjoin.us
		System.out.println(command);
		ActionTo transfer = null;

		switch (command) {
		/*
		 * case "/user/firstview.us": transfer = new ActionTo(); // 어디로 이동할 것인지 set하는 것
		 * // ActionTo에는 어디로 어떻게 이동할지에 대한 메소드가 담겨있다. transfer.setPath("/");
		 * transfer.setRedirect(false); break;
		 */
		case "/user/userjoin.us":
			transfer = new ActionTo();
			// 어디로 이동할 것인지 set하는 것
			// ActionTo에는 어디로 어떻게 이동할지에 대한 메소드가 담겨있다.
			transfer.setPath("/app/user/join1.jsp");
			transfer.setRedirect(false);
			break;
		case "/user/userjoin2.us":
			transfer = new ActionTo();
			// 어디로 이동할 것인지 set하는 것
			// ActionTo에는 어디로 어떻게 이동할지에 대한 메소드가 담겨있다.
			transfer.setPath("/app/user/join2.jsp");
			transfer.setRedirect(false);
			break;
		case "/user/login.us":
			transfer = new ActionTo();
			// 어디로 이동할 것인지 set하는 것
			// ActionTo에는 어디로 어떻게 이동할지에 대한 메소드가 담겨있다.
			transfer.setPath("/app/user/login.jsp");
			transfer.setRedirect(false);
			 break;
		case "/user/logout.us" : 
			req.getSession().removeAttribute("loginUser");
			transfer = new ActionTo();
			transfer.setPath("/");
			transfer.setRedirect(false);
			break;
		case "/user/userout.us" : 
			transfer = new ActionTo();
			// 어디로 이동할 것인지 set하는 것
			// ActionTo에는 어디로 어떻게 이동할지에 대한 메소드가 담겨있다.
			transfer.setPath("/app/user/userunregister.jsp");
			transfer.setRedirect(false);
			break;
		case "/user/userinfo.us":
			transfer = new ActionTo();
			// 어디로 이동할 것인지 set하는 것
			// ActionTo에는 어디로 어떻게 이동할지에 대한 메소드가 담겨있다.
			transfer.setPath("/app/user/pwidentify.jsp");
			transfer.setRedirect(false);
			break;
		case "/user/userjoinok.us":
			try {
				transfer = new UserJoinOkAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println("/user/userjoinok : " + e);
				transfer = new ActionTo();
				transfer.setPath("/error.jsp");
				transfer.setRedirect(false);
			}
			break;
		case "/user/checkidok.us":
			// 페이지이동이 일어나면 안되기 때문에 transfer에는 아무것도 없어야 한다.
			try {
				new CheckIdOkAction().execute(req, resp);
			} catch (Exception e) {
				// 에러페이지 이동시킬 시
				// transfer = new ActionTo();
				// transfer.setPath("error.jsp");
				// transfer.setRedirect(false);
				System.out.println("/user/checkidok : " + e);
			}
			break;
		case "/user/userloginok.us":
			try {
				transfer = new UserLoginOkAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/user/userloginok : "+e);
			}
			break;
		case "/user/userpwok.us":
			try {
				transfer = new UserPWOkAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/user/userpwok : "+e);
			}
			break;
		case "/user/userpwokaction.us":
			try {
				transfer = new UserListAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println("/board/boardlist : "+e);
			}
			break;
		case "/user/usermodify.us":
			try {
				transfer = new Usermodify().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/user/usermodify :" + e );
			}
			break;
		case "/user/pwmodify.us":
			transfer = new ActionTo();
			// 어디로 이동할 것인지 set하는 것
			// ActionTo에는 어디로 어떻게 이동할지에 대한 메소드가 담겨있다.
			transfer.setPath("/app/user/pwmodify.jsp");
			transfer.setRedirect(false);
			break;
			
		case "/user/Kloginok.us" :
			try {
				transfer = new KakaologinAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/user/usermodify :" + e );
			}
			break;
		case "/user/idfind.us" :
			try {
				transfer = new idfindAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/user/usermodify :" + e );
			}
			break;
		case "/user/newUserpw.us" :
			try {
				transfer = new Userpwmodify().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/user/userpwmodify :" + e );
			}
			break;
		case "/user/userunregister.us" :
			try {
				transfer = new Userunregister().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/user/userunregister :" + e );
			}
			break;
		case "/user/phonechack.us" :
			try {
				transfer = new phoneChackAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/user/phonechack :" + e );
			}
			break;
		case "/user/verifichack.us" :
			try {
				transfer = new verifiChackAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/user/verifichack.us :" + e );
			}
			break;
		}

		// 전송 일괄처리(어디인지, 어떤 방식인지는 몰라도 그냥 transfer라는 객체에 담겨있는 정보를 해석해서 그대로 페이지를 이동시키는 코드)
		if (transfer != null) {
			if (transfer.isRedirect()) {
				// Redirect방식이면
				resp.sendRedirect(transfer.getPath());
			} else {
				// forward방식이면
				req.getRequestDispatcher(transfer.getPath()).forward(req, resp);
			}
		}
	}
}