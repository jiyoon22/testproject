package com.koreait.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.koreait.mybatis.SqlMapConfig;

public class KUserDAO {
	SqlSession sqlsession;
	
	public KUserDAO() {
		sqlsession = SqlMapConfig.getFactory().openSession(true);
	}

	public Object kakaoDBcheck(String username, String useremail) {
		HashMap<String, String> datas = new HashMap<String, String>();
		datas.put("username", username);
		datas.put("useremail", useremail);
		
		return sqlsession.selectOne("Klogin.kakaoDBcheck",datas);
	}
	
}
