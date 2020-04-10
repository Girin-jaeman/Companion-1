package com.bit.companion.model.mypage;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.bit.companion.model.entity.mypage.MyCartOrderVo;
import com.bit.companion.model.entity.mypage.MypageCartVo;
import com.bit.companion.model.entity.mypage.MypageQuestionVo;
import com.bit.companion.model.entity.mypage.MypageReserveVo;

public interface MypageDao {

	int pwChange(String pw_change,String id_chk);

	int telChange(String tel_change, String id_chk);

	int phoneChange(String phone_change, String id_chk);

	int emailChange(String email_change, String id_chk);

	int addrChange(String addr1_change, String addr2_change, String addr3_change, String id_chk);

	List<MypageQuestionVo> questionList(HttpSession session);

	List<MypageReserveVo> reserveList(HttpSession session);

	List<MypageCartVo> cartList(HttpSession session);

	int selectDeleteCart(String cart_id, String member_id);

	int changeOptionCart(String change_option, String cart_id, String member_id);

	int changeQuantityCart(String change_quantity, String cart_id, String member_id);

	void insertOrder(MyCartOrderVo bean);

	int checkDeliveryNumber(String delivery_number);

	String findOrder_id(MyCartOrderVo bean);

	void insertOrders(MyCartOrderVo bean);
	
}
