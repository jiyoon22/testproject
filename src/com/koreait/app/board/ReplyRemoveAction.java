package com.koreait.app.board;

import java.io.PrintWriter;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionTo;
import com.koreait.dao.BoardDAO;

public class ReplyRemoveAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String boardnum = req.getParameter("boardnum");
		String page = req.getParameter("page");
		String keyword = req.getParameter("keyword");
		keyword = URLEncoder.encode(keyword,"UTF-8");
		
		int replynum = Integer.parseInt(req.getParameter("replynum"));
		
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter out = resp.getWriter();
		String path = String.format("'%s/board/boardview.bo?boardnum=%s&page=%s&keyword=%s';",
				req.getContextPath(),boardnum,page,keyword);
		
		BoardDAO bdao = new BoardDAO();
		if(bdao.removeReply(replynum)) {
			out.write("<script>alert('댓글 삭제 성공!');");
			out.write("location.href="+path);
			out.write("</script>");
		}
		else {
			out.write("<script>alert('댓글 삭제 실패!');");
			out.write("location.href="+path);
			out.write("</script>");
		}
		return null;
	}
}
