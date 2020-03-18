package com.bit.companion.model.notice;

import java.sql.SQLException;
import java.util.List;

import com.bit.companion.common.Pagination;
import com.bit.companion.model.entity.notice.FAQVo;

public interface FAQDao {
	int selectTotal() throws SQLException;
	List<FAQVo> selectAll(Pagination pagination) throws SQLException;
}
