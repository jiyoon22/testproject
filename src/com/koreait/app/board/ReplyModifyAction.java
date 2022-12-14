package com.koreait.app.board;

import java.io.PrintWriter;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionTo;
import com.koreait.dao.BoardDAO;

public class ReplyModifyAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String boardnum = req.getParameter("boardnum");
		String page = req.getParameter("page");
		String keyword = req.getParameter("keyword");
		keyword = URLEncoder.encode(keyword,"UTF-8");
		
		String i = req.getParameter("i");
		int replynum = Integer.parseInt(req.getParameter("replynum"));
		String replycontents = req.getParameter("reply"+i);
		
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter out = resp.getWriter();
		String path = String.format("'%s/board/boardview.bo?boardnum=%s&page=%s&keyword=%s';",
				req.getContextPath(),boardnum,page,keyword);
		
		BoardDAO bdao = new BoardDAO();
		if(bdao.updateReply(replynum,replycontents)) {
			out.write("<script>alert('댓글 수정 성공!');");
			out.write("location.href="+path);
			out.write("</script>");
		}
		else {
			out.write("<script>alert('댓글 수정 실패!');");
			out.write("location.href="+path);
			out.write("</script>");
		}
		
		return null;
	}
}








