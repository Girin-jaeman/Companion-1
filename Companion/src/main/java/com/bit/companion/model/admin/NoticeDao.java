package com.bit.companion.model.admin;

import java.sql.SQLException;
import java.util.List;

import com.bit.companion.model.entity.admin.AdminArticleVo;

public interface NoticeDao {

	// 공지사항 리스트
	List<AdminArticleVo> selectAll() throws SQLException;
	// 공지사항 상세
	AdminArticleVo selectOne(int article_id) throws SQLException;;
	// 공지사항 입력
	void insertOne(AdminArticleVo bean) throws SQLException;
	// 공지사항 수정
	int updateOne(AdminArticleVo bean) throws SQLException;
	// 공지사항 삭제
	int deleteOne(AdminArticleVo bean) throws SQLException;
}
