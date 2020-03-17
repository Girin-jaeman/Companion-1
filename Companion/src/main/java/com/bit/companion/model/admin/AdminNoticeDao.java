package com.bit.companion.model.admin;

import java.sql.SQLException;
import java.util.List;

import com.bit.companion.model.entity.admin.AdminArticleVo;

public interface AdminNoticeDao {

	// �������� ����Ʈ
	List<AdminArticleVo> selectAll() throws SQLException;
	// �������� ��
	AdminArticleVo selectOne(int article_id) throws SQLException;;
	// �������� �Է�
	void insertOne(AdminArticleVo bean) throws SQLException;
	// �������� ����
	int updateOne(AdminArticleVo bean) throws SQLException;
	// �������� ����
	int deleteOne(AdminArticleVo bean) throws SQLException;
}
