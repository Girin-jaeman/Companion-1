package com.bit.companion.service.login;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bit.companion.model.entity.login.LoginVo;
import com.bit.companion.model.entity.login.MemberVo;
import com.bit.companion.model.login.LoginDao;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	LoginDao loginDao;
	
	@Override
	public boolean loginChk(LoginVo bean, HttpSession session) {
		boolean result=loginDao.loginChk(bean);
//		로그인 성공시 세션에 회원정보담기
		if(result) {
			MemberVo bean2=infoLogin(bean);
			session.setAttribute("memberVo", bean2);
		}
		return result;
	}

	@Override
	public MemberVo infoLogin(LoginVo bean) {
		return loginDao.infoLogin(bean);
	}

	@Override
	public void logout(HttpSession session) {
		if(session!=null) {
			session.invalidate();
		}
	}

	/* 카카오 토큰 획득 */
	@Override
	public String getAccessToken(String authorize_code) {
		String access_Token="";
		String refresh_Token="";
		String reqURL="https://kauth.kakao.com/oauth/token";
		
		try {
			URL url=new URL(reqURL);
			HttpURLConnection conn=(HttpURLConnection) url.openConnection();
			
			/*POST 요청을 위해 디폴트가 false인 setDoOutput을 true로*/
			conn.setRequestMethod("POST");
			conn.setDoOutput(true);
			
			/*POST 요청에 필요로 요구하는 파라미터 스트림을 통해 전송*/
			BufferedWriter bw=new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
			StringBuilder sb=new StringBuilder();
			sb.append("grant_type=authorization_code");
			sb.append("&client_id=17cc56e13f55ba11cdff275d3f1990c3");
			sb.append("&redirect_uri=http://localhost:8080/companion/login/kakaologin");
			sb.append("&code="+authorize_code);
			bw.write(sb.toString());
			bw.flush();
			
			/*결과 코드가 200이라면 성공*/
			int responseCode=conn.getResponseCode();
			/* System.out.println("responseCode : "+responseCode); */
			
			/*요청을 통해 얻은 json타입의 response메세지 읽어오기*/
			BufferedReader br=new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String line="";
			String result="";
			
			while((line=br.readLine())!=null) {
				result+=line;
			}
			/* System.out.println("response body : "+result); */
			
			JsonParser parser=new JsonParser();
			JsonElement element=parser.parse(result);
			
			access_Token=element.getAsJsonObject().get("access_token").getAsString();
			refresh_Token=element.getAsJsonObject().get("refresh_token").getAsString();
			
			/*
			 * System.out.println("access_token : "+access_Token);
			 * System.out.println("refresh_token : "+refresh_Token);
			 */
			
			br.close();
			bw.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return access_Token;
	}
	
	/* 카카오 유저정보 획득 */
	@Override
	public HashMap<String, Object> getUserInfo(String access_Token) {
		HashMap<String,Object> userInfo=new HashMap<>();
		String reqURL="https://kapi.kakao.com/v2/user/me";
		try {
			URL url=new URL(reqURL);
			HttpURLConnection conn=(HttpURLConnection) url.openConnection();
			conn.setRequestMethod("POST");
			
			/*요청에 필요한 Header에 포함될 내용*/
			conn.setRequestProperty("Authorization", "Bearer "+access_Token);
			
			int responseCode=conn.getResponseCode();
			/* System.out.println("responseCode : "+responseCode); */
			BufferedReader br=new BufferedReader(new InputStreamReader(conn.getInputStream()));
			
			String line="";
			String result="";
			
			while((line=br.readLine())!=null) {
				result+=line;
			}
			/* System.out.println("response body : "+result); */
			
			JsonParser parser=new JsonParser();
			JsonElement element=parser.parse(result);
			
			JsonObject properties=element.getAsJsonObject().get("properties").getAsJsonObject();
			JsonObject kakao_account=element.getAsJsonObject().get("kakao_account").getAsJsonObject();
			
			String k_email=kakao_account.getAsJsonObject().get("email").getAsString();
			
			userInfo.put("k_email", k_email);
		} catch(IOException e) {
			e.printStackTrace();
		}
		return userInfo;
	}

	/* 카카오 로그아웃 */
	@Override
	public void kakaoLogout(String access_Token) {
		String reqURL="https://kapi.kakao.com/v1/user/logout";
		try {
			URL url=new URL(reqURL);
			HttpURLConnection conn=(HttpURLConnection) url.openConnection();
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Authorization", "Bearer "+access_Token);
			
			int responseCode=conn.getResponseCode();
			/* System.out.println("responseCode : "+responseCode); */
			
			BufferedReader br=new BufferedReader(new InputStreamReader(conn.getInputStream()));
			
			String result="";
			String line="";
			
			while((line=br.readLine())!=null) {
				result+=line;
			}
			/* System.out.println(result); */
		} catch(IOException e) {
			e.printStackTrace();
		}
	}

}
