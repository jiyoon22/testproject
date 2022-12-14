package com.koreait.app.board;

import java.io.PrintWriter;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionTo;
import com.koreait.dao.BoardDAO;
import com.koreait.dao.ReplyDTO;

public class ReplyWriteAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		int boardnum = Integer.parseInt(req.getParameter("boardnum"));
		String userid = (String)req.getSession().getAttribute("loginUser");
		String replycontents = req.getParameter("replycontents");
		String page = req.getParameter("page");
		String keyword = req.getParameter("keyword");
		keyword = URLEncoder.encode(keyword,"utf-8");
		
		ReplyDTO reply = new ReplyDTO();
		reply.setBoardnum(boardnum);
		reply.setUserid(userid);
		reply.setReplycontents(replycontents);
		
		BoardDAO bdao = new BoardDAO();
		
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter out = resp.getWriter();
		String path = String.format("'%s/board/boardview.bo?boardnum=%d&page=%s&keyword=%s';",
				req.getContextPath(),boardnum,page,keyword);
		
		if(bdao.insertReply(reply)) {
			out.write("<script>alert('댓글 등록 성공!');");
			out.write("location.href="+path);
			out.write("</script>");
		}
		else {
			out.write("<script>alert('댓글 등록 실패!');");
			out.write("location.href="+path);
			out.write("</script>");
		}
		
		return null;
	}
}









