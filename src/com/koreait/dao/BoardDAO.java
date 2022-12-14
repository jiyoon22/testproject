package com.koreait.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.koreait.mybatis.SqlMapConfig;

public class BoardDAO {

	SqlSession sqlsession;
	
	public BoardDAO() {
		sqlsession = SqlMapConfig.getFactory().openSession(true);
	}
	
	public int getBoardCnt(String keyword) {
		if(keyword == null || keyword.equals("")) {
			return sqlsession.selectOne("Board.getBoardCnt");
		}
		else {
			return sqlsession.selectOne("Board.getBoardCntWithKey",keyword);
		}
	}

	public List<BoardDTO> getBoardList(int startRow, int pageSize, String keyword) {
		List<BoardDTO> list;
		HashMap<String, Object> datas = new HashMap<String, Object>();
		datas.put("startRow",startRow);
		datas.put("pageSize",pageSize);
		if(keyword == null || keyword.equals("")) {
			list = sqlsession.selectList("Board.getBoardList",datas);
		}
		else {
			datas.put("keyword",keyword);
			list = sqlsession.selectList("Board.getBoardListWithKey",datas);
		}
		return list;
	}

	public BoardDTO getDetail(int boardnum) {
		return sqlsession.selectOne("Board.getDetail",boardnum);
	}

	public boolean insertBoard(BoardDTO board) {
		return sqlsession.insert("Board.insertBoard",board) == 1;
	}

	public int getLastNum(String userid) {
		return sqlsession.selectOne("Board.getLastNum",userid);
	}

	public void updateReadCount(int boardnum) {
		sqlsession.update("Board.updateReadCount",boardnum);
	}

	public boolean removeBoard(int boardnum) {
		return sqlsession.delete("Board.removeBoard",boardnum) == 1;
	}

	public boolean updateBoard(BoardDTO board) {
		return sqlsession.update("Board.updateBoard",board) == 1;
	}

	public boolean insertReply(ReplyDTO reply) {
		return sqlsession.insert("Board.insertReply",reply) == 1;
	}

	public List<ReplyDTO> getReplies(int boardnum) {
		return sqlsession.selectList("Board.getReplies",boardnum);
	}

	public boolean updateReply(int replynum, String replycontents) {
		HashMap<String, Object> datas = new HashMap<String, Object>();
		datas.put("replynum",replynum);
		datas.put("replycontents", replycontents);
		
		return sqlsession.update("Board.updateReply",datas) == 1;
	}

	public boolean removeReply(int replynum) {
		return sqlsession.delete("Board.removeReply",replynum) == 1;
	}

	public List<BoardDTO> getPopulation(int startRow, int pageSize, String keyword) {
		List<BoardDTO> list;
		HashMap<String, Object> datas = new HashMap<String, Object>();
		datas.put("startRow",startRow);
		datas.put("pageSize",pageSize);
		if(keyword == null || keyword.equals("")) {
			list = sqlsession.selectList("Board.getPopulation",datas);
		}
		else {
			datas.put("keyword",keyword);
			list = sqlsession.selectList("Board.getPopulationWithKey",datas);
		}
		return list;
	}

}







