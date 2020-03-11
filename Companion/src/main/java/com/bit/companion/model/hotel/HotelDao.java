package com.bit.companion.model.hotel;

import java.sql.SQLException;
import java.util.List;

import com.bit.companion.model.entity.hotel.HotelVo;

public interface HotelDao {

	List<HotelVo> selectAll() throws SQLException;

}
