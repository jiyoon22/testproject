package smsPackage;

import java.util.HashMap;
import java.util.Random;

import org.json.simple.JSONObject;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

public class smsClass {
	public String SMS(String phone) { 
		System.out.println(phone);
		String api_key = "NCSJG8WOUNI9VWJY";
		String api_secret = "OBEOGI3LKI4RMUZCY46ZXO55MMA7FVRO";
		Message coolsms = new Message(api_key, api_secret);
		String code_number = "";
		// 4 params(to, from, type, text) are mandatory. must be filled
		HashMap<String, String> params = new HashMap<String, String>();
		params.put("to", phone);
		params.put("from", "01022281031");
		params.put("type", "SMS");
		params.put("app_version", "test app 1.2"); // application name and version

		String source = "0123456789";
		Random r = new Random();
		int len = source.length();// 위 문자열의 전체 길이 10
		for (int i = 0; i < 4; i++) {
			int idx = r.nextInt(len);// 0~길이-1 0~9
			code_number += source.charAt(idx);
		}
		String message = "PCClub 회원가입 인증번호 발송 메세지입니다.\n[ 인증번호 : "+code_number+" ]";
		params.put("text",message);
//	    System.out.println("완성된 문자열 : "+result);
		try {
			JSONObject obj = (JSONObject) coolsms.send(params);
		} catch (CoolsmsException e) {
			System.out.println("SMS_Identification.SMS_Identification CoolsmsException 에러 발생");
			System.out.println(e.getMessage());
			System.out.println(e.getCode());
			return null;
		} catch (Exception e) {
			System.out.println("SMS_Identification.SMS_Identification 에러 발생");
			System.out.println(e);	
			return null;
		}
		
		
		return code_number;
	}
}
