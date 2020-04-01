package com.bit.companion.model.order;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.companion.model.entity.order.LikeVo;

@Repository
public class LikeDaoImpl implements LikeDao {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<LikeVo> likeTest() throws SQLException {
		
		return sqlSession.selectList("like.likeTest");
	}

	@Override
	public int likeInsert(LikeVo likeVo) throws SQLException {
		System.out.println("sqlSession.selectOne 실행 전...");
		System.out.println("멤버 아이디는 : "+likeVo.getMember_id());
		System.out.println("product_id는 : "+likeVo.getProduct_id());
		
		
		
		
	int result = sqlSession.selectOne("like.likeCheck",likeVo);
	System.out.println("sqlSession.selectOne 실행 후후후후.");
		
	System.out.println("리절트 값 : "+result);
	
		if(result==0) {
			System.out.println("result 값이 0이니까 여기 실행");
			sqlSession.insert("like.likeInsert",likeVo);
		}else {
			System.out.println("result 값이 1이니까 delete (취소) 실행.");
			System.out.println(result);
			result = sqlSession.delete("like.likeDelete",likeVo);
			System.out.println(result);
		}
		
		System.out.println("return 앞에서  result 값 확인 : "+result);
	return result;
	}







}
