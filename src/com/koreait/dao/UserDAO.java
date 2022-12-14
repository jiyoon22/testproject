package com.koreait.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.koreait.mybatis.SqlMapConfig;

public class UserDAO {
	SqlSession sqlsession;
	
	public UserDAO() {
		sqlsession = SqlMapConfig.getFactory().openSession(true);
	}
	
	public boolean join(UserDTO user) {
		//key, 값
		return sqlsession.insert("User.join",user) == 1;
	}

	public boolean checkId(String userid) {
		return (Integer)sqlsession.selectOne("User.checkId",userid) == 0;
	}

	public boolean login(String userid, String userpw) {
		HashMap<String, String> datas = new HashMap<String, String>();
		datas.put("userid", userid);
		datas.put("userpw", userpw);
		//유저가 있다면 1
		return (Integer)sqlsession.selectOne("User.login",datas) == 1;
	}

	public boolean checkpw(String userid, String userpw) {
		HashMap<String, String> datass = new HashMap<String, String>();
		datass.put("userid", userid);
		datass.put("userpw", userpw);
		
		//유저가 있다면 1
		return (Integer)sqlsession.selectOne("User.checkpw",datass) == 1;
		
		
	}

	public List<UserDTO> getUserlist(String userid) {
		
		return sqlsession.selectList("User.getUserlist",userid);
	}

	public boolean updateUser(UserDTO user) {
		return sqlsession.update("User.updateUser",user) == 1;
	}

	public List<UserDTO> getUserid(String username, String userphone) {
		HashMap<String,String> datasss = new HashMap<String, String>();
		datasss.put("username", username);
		datasss.put("userphone", userphone);
		return sqlsession.selectList("User.getUserid", datasss);
	}

	public boolean Userpwmodify(String userid, String userpw) {
		HashMap<String,String> datassss=new HashMap<String,String>();
		datassss.put("userid", userid);
		datassss.put("userpw", userpw);
		
		return sqlsession.update("User.pwmodify",datassss) == 1;
	}

	public String selectpw(String userid) {
		
		return sqlsession.selectOne("User.userpwselect", userid);
	}

	public boolean unregister(String userid) {
		
		return sqlsession.delete("User.deleteuser", userid) == 1;
		
	}



}

