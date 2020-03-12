package com.bit.companion.model.notice;

import java.sql.SQLException;
import java.util.List;

import com.bit.companion.model.entity.notice.NoticeVo;

public interface NoticeDao {

	List<NoticeVo> selectAll() throws SQLException;

	int selectTotal() throws SQLException;

	NoticeVo selectOne(int ntc_id) throws SQLException;

}
