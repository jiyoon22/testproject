package com.koreait.app.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.ActionTo;
import com.koreait.app.user.CheckIdOkAction;
import com.koreait.app.user.UserJoinOkAction;
import com.koreait.app.user.UserLoginOkAction;

public class BoardFrontController extends HttpServlet{
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		doProcess(req, resp);
	}
	
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//길나누는 코드
		String requestURI = req.getRequestURI(); // ??????/user/userjoin.us
		String contextPath = req.getContextPath(); // ??????(module명)
		String command = requestURI.substring(contextPath.length()); // /user/userjoin.us
		System.out.println(command);
		ActionTo transfer = null;
		
		switch(command) {
		case "/board/boardlist.bo":
			try {
				transfer = new BoardListAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println("/board/boardlist : "+e);
			}
			break;
		case "/board/boardwrite.bo":
			transfer = new ActionTo();
			transfer.setPath("/app/board/boardwrite.jsp");
			transfer.setRedirect(false);
			break;
		case "/board/boardview.bo":
			try {
				transfer = new BoardViewAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/board/boardview : "+e);
			}
			break;
		case "/board/boardwriteok.bo":
			try {
				transfer = new BoardWriteOkAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/board/boardwriteok : "+e);
			}
			break;
		case "/board/boardremove.bo":
			try {
				transfer = new BoardRemoveAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/board/boardremove : "+e);
			}
			break;
		case "/board/filedownload.bo":
			try {
				new FileDownloadAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/board/filedownload : "+e);
			}
			break;
		case "/board/boardmodify.bo":
			try {
				transfer = new BoardModifyAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/board/boardmodify : "+e);
			}
			break;
		case "/board/boardmodifyok.bo":
			try {
				transfer = new BoardModifyOkAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/board/boardmodifyok : "+e);
			}
			break;
		case "/reply/replywrite.bo":
			try {
				new ReplyWriteAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/reply/replywrite : "+e);
			}
			break;
		case "/reply/replymodify.bo":
			try {
				new ReplyModifyAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/reply/replymodify : "+e);
			}
			break;
		case "/reply/replyremove.bo":
			try {
				new ReplyRemoveAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/reply/replyremove : "+e);
			}
			break;
		case "/board/population.bo":
			try {
				new PopulationAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/board/population : "+e);
			}
			break;
			
		}
		//전송 일괄처리(어디인지, 어떤 방식인지는 몰라도 그냥 transfer라는 객체에 담겨있는 정보를 해석해서 그대로 페이지를 이동시키는 코드)
		if(transfer != null) {
			if(transfer.isRedirect()) {
				resp.sendRedirect(transfer.getPath());
			}
			else {
				req.getRequestDispatcher(transfer.getPath()).forward(req, resp);
			}
		}
	}
}
