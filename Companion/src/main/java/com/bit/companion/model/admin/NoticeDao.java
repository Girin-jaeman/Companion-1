package com.bit.companion.model.admin;

import java.sql.SQLException;
import java.util.List;

import com.bit.companion.model.entity.admin.AdminNoticeVo;

public interface AdminDao {

	// 공지사항 리스트
	List<AdminNoticeVo> selectAll() throws SQLException;
	
	// 공지사항 상세
	AdminNoticeVo selectOne(int article_id) throws SQLException;;
	
	// 공지사항 입력
	void insertOne(AdminNoticeVo bean) throws SQLException;

	// 공지사항 수정
	int updateOne(AdminNoticeVo bean) throws SQLException;

	// 공지사항 삭제
	int deleteOne(AdminNoticeVo bean) throws SQLException;
}
