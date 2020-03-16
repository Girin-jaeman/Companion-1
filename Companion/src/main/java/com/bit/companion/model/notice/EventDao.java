package com.bit.companion.model.notice;

import java.sql.SQLException;
import java.util.List;

import com.bit.companion.common.Pagination;
import com.bit.companion.model.entity.notice.EventVo;

public interface EventDao {

	int selectTotal() throws SQLException;

	List<EventVo> selectAll(Pagination pagination) throws SQLException;

	EventVo selectOne(int article_id) throws SQLException;

}
