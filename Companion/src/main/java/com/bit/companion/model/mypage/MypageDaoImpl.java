package com.bit.companion.model.mypage;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.companion.model.entity.login.MemberVo;
import com.bit.companion.model.entity.mypage.MypageQuestionVo;

@Repository
public class MypageDaoImpl implements MypageDao {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public int pwChange(String pw_change, String id_chk) {
		HashMap<String,String> map=new HashMap<String,String>();
		map.put("pw_change", pw_change);
		map.put("id_chk", id_chk);
		return sqlSession.update("mypage.pwChange", map);
	}

	@Override
	public int telChange(String tel_change, String id_chk) {
		HashMap<String,String> map=new HashMap<String,String>();
		map.put("tel_change", tel_change);
		map.put("id_chk", id_chk);
		return sqlSession.update("mypage.telChange",map);
	}

	@Override
	public int phoneChange(String phone_change, String id_chk) {
		HashMap<String,String> map=new HashMap<String,String>();
		map.put("phone_change",phone_change);
		map.put("id_chk", id_chk);
		return sqlSession.update("mypage.phoneChange",map);
	}

	@Override
	public int emailChange(String email_change, String id_chk) {
		HashMap<String,String> map=new HashMap<String,String>();
		map.put("email_change",email_change);
		map.put("id_chk", id_chk);
		return sqlSession.update("mypage.emailChange",map);
	}

	@Override
	public int addrChange(String addr1_change, String addr2_change, String addr3_change, String id_chk) {
		HashMap<String,String> map=new HashMap<String,String>();
		map.put("addr1_change",addr1_change);
		map.put("addr2_change",addr2_change);
		map.put("addr3_change",addr3_change);
		map.put("id_chk", id_chk);
		return sqlSession.update("mypage.addrChange",map);
	}

	@Override
	public List<MypageQuestionVo> questionList(HttpSession session) {
		MemberVo bean=(MemberVo) session.getAttribute("memberVo");
		String member_id=bean.getMember_id();
		List<MypageQuestionVo> list=sqlSession.selectList("mypage.questionList",member_id);
		MypageQuestionVo bean2=new MypageQuestionVo();
		String product_id="";
		String product_thumb="";
		String product_name="";
		for(int i=0; i<list.size(); i++) {
			bean2=list.get(i);
			product_id=bean2.getProduct_id();
			product_thumb=sqlSession.selectOne("mypage.productThumb",product_id);
			product_name=sqlSession.selectOne("mypage.productName",product_id);
			bean2.setProduct_thumb(product_thumb);
			bean2.setProduct_name(product_name);
		}
		
		return list;
	}
	

}
