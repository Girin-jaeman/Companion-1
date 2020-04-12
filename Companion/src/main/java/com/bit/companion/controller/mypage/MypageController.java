package com.bit.companion.controller.mypage;

import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bit.companion.model.entity.login.MemberVo;
import com.bit.companion.model.entity.mypage.MyCartOrderList;
import com.bit.companion.model.entity.mypage.MyCartOrderVo;
import com.bit.companion.model.entity.mypage.MypageCartVo;
import com.bit.companion.service.mypage.MypageService;

@Controller
public class MypageController {
	
	@Autowired
	MypageService mypageService;

	@RequestMapping("/mypagechk")
	public String mypageChk(HttpSession session) {
		MemberVo bean=(MemberVo) session.getAttribute("memberVo");
		if(bean==null) {
			return "redirect:/login";
		}
		return "mypage/mypagechk";
	}
	
	@RequestMapping(value="/mypagechk",method=RequestMethod.POST)
	public String loginChk(HttpSession session) {
		MemberVo bean=(MemberVo) session.getAttribute("memberVo");
		if(bean==null) {
			return "redirect:/login";
		}
		return "mypage/mypage";
	}
	
	@RequestMapping("/mypage")
	public String mypage(HttpSession session) {
		MemberVo bean=(MemberVo) session.getAttribute("memberVo");
		if(bean==null) {
			return "redirect:/login";
		}
		return "mypage/mypage";
	}
	
	@RequestMapping("/mypagequestion")
	public String mypagequestion(HttpSession session) {
		MemberVo bean=(MemberVo) session.getAttribute("memberVo");
		if(bean==null) {
			return "redirect:/login";
		}
		mypageService.questionList(session);
		return "mypage/mypagequestion";
	}
	
	@RequestMapping("/mypagereserve")
	public String mypagereserve(HttpSession session) {
		MemberVo bean=(MemberVo) session.getAttribute("memberVo");
		if(bean==null) {
			return "redirect:/login";
		}
		mypageService.reserveList(session);
		return "mypage/mypagereserve";
	}
	
	@RequestMapping(value="/mycart")
	public String mypagecart(HttpSession session) {
		MemberVo bean=(MemberVo) session.getAttribute("memberVo");
		if(bean==null) {
			return "redirect:/login";
		}
		mypageService.cartList(session);
		return "mypage/shoppingCart";
	}
	
	@RequestMapping(value="/mycart",method=RequestMethod.POST)
	public String myCartOrderRequest(@ModelAttribute(value="data-cartNum") MyCartOrderList cartOrderList,HttpSession session) {
		MemberVo bean=(MemberVo) session.getAttribute("memberVo");
		List<MypageCartVo> cartList=(List) session.getAttribute("cartList");
		String cart_id="";
		List<MypageCartVo> orderList=new ArrayList<>();
		if(bean==null) {
			return "redirect:/login";
		}
		for(int i=0;i<cartOrderList.getList().size();i++) {
			if(cartOrderList.getList().get(i)==null) {
				continue;
			}
			cart_id=cartOrderList.getList().get(i);
			for(int j=0; j<cartList.size();j++) {
				MypageCartVo bean2=(MypageCartVo) cartList.get(j);
				if(cart_id.equals(bean2.getCart_id())) {
					orderList.add(bean2);
				}
			}
		}
		session.setAttribute("cartOrderList", orderList);
		return "redirect:/cartPurchase";
	}
	
	@RequestMapping(value="/mycartorder")
	public String myCartOrder(HttpSession session) {
		MemberVo bean=(MemberVo) session.getAttribute("memberVo");
		if(bean==null) {
			return "redirect:/login";
		}
		return "mypage/cartPurchase";
	}
	
	@RequestMapping(value="/cartPurchase")
	public String myCartOrderList(HttpSession session) {
		List<MypageCartVo> orderList=(List) session.getAttribute("cartOrderList");
		MypageCartVo bean=new MypageCartVo();
		int sum=0;
		for(int i=0; i<orderList.size();i++) {
			bean=orderList.get(i);
			sum+=Integer.parseInt(bean.getCart_quantity())*Integer.parseInt(bean.getProduct_price());
		}
		session.setAttribute("cartOrderPrice", sum);
		return "mypage/cartPurchase";
	}
	
	@RequestMapping(value="/cartPurchase",method=RequestMethod.POST)
	public String myCartOrderPurchase(String order_name,String order_phone,String order_addr1,String order_addr2,String order_addr3,String order_msg,HttpSession session) {
		List<MypageCartVo> orderList=(List) session.getAttribute("cartOrderList");
		MypageCartVo bean=new MypageCartVo();
		List<MyCartOrderVo> orderSuccessList=new ArrayList<>();
		int sum=(int)session.getAttribute("cartOrderPrice");
		sum+=2500;
		for(int i=0; i<orderList.size();i++) {
			MyCartOrderVo bean2=new MyCartOrderVo();
			bean=orderList.get(i);
			
			bean2.setCart_id(bean.getCart_id());
			bean2.setMember_id(bean.getMember_id());
			bean2.setProduct_id(bean.getProduct_id());
			bean2.setOrder_detail_quantity(bean.getCart_quantity());
			bean2.setOrder_detail_option(bean.getCart_option());
			bean2.setOrder_detail_price(bean.getProduct_price());
			bean2.setOrder_name(order_name);
			bean2.setOrder_phone(order_phone);
			bean2.setOrder_addr1(order_addr1);
			bean2.setOrder_addr2(order_addr2);
			bean2.setOrder_addr3(order_addr3);
			bean2.setOrder_msg(order_msg);
			bean2.setOrder_amount(""+sum);
			bean2.setOrder_state_id("1");
			bean2.setPayment_amount(""+sum);
			bean2.setPayment_state_id("0");
			bean2.setDelivery_company("비트택배");
			bean2.setDelivery_state_id("0");
			
			orderSuccessList.add(bean2);
		}
		session.setAttribute("cartOrderSuccessList", orderSuccessList);
		return "redirect:/cartOrderSuccess";
	}
	
	@RequestMapping(value="/cartOrderSuccess")
	public String myCartOrderSuccess(HttpSession session) {
		List<MyCartOrderVo> orderSuccessList=(List)session.getAttribute("cartOrderSuccessList");
		/* 결제 및 주문시간 */
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date time=new Date();
		String order_date=sdf.format(time);
		String payment_date=sdf.format(time);
		/* 송장번호 */
		int delivery_number_check=1;
		String delivery_number="";
		while(delivery_number_check==1) {
			String delivery_number_checking="";
			for(int i=0; i<14; i++) {
				int r=(int)(Math.random()*9+1);
				delivery_number_checking+=r;
			}
			delivery_number=delivery_number_checking;
			delivery_number_check=mypageService.checkDeliveryNumber(delivery_number);
		}
		/* 대표 order처리 */
		MyCartOrderVo bean=orderSuccessList.get(0);
		bean.setOrder_date(order_date);
		bean.setPayment_date(payment_date);
		bean.setDelivery_number(delivery_number);
		mypageService.insertOrder(bean);
		/* order_id 찾기 */
		String order_id=mypageService.findOrder_id(bean);
		/* 각상품별로 sql작업 */
		for(int i=0; i<orderSuccessList.size();i++) {
			bean=orderSuccessList.get(i);
			bean.setOrder_date(order_date);
			bean.setPayment_date(payment_date);
			bean.setDelivery_number(delivery_number);
			bean.setOrder_id(order_id);
			mypageService.insertOrders(bean);
			System.out.println(i+"번쨰order_id : "+bean.getOrder_id());
		}
		session.removeAttribute("cartList");
		session.removeAttribute("cartOrderList");
		session.removeAttribute("cartOrderPrice");
		session.removeAttribute("cartOrderSuccessList");
		return "mypage/cartOrderSuccess";
	}
	
	

	@ResponseBody
	@RequestMapping(value="/mypage/pwchange",method=RequestMethod.POST)
	public int pwChange(String pw_change,String id_chk,HttpSession session) {
		if(mypageService.pwChange(pw_change, id_chk)==1) {
			MemberVo memberVo=(MemberVo)session.getAttribute("memberVo");
			memberVo.setMember_pw(pw_change);
			session.setAttribute("memberVo", memberVo);
		}
		return mypageService.pwChange(pw_change,id_chk);
	}
	
	@ResponseBody
	@RequestMapping(value="/mypage/telchange",method=RequestMethod.POST)
	public int telChange(String tel_change,String id_chk,HttpSession session) {
		if(mypageService.telChange(tel_change, id_chk)==1) {
			MemberVo memberVo=(MemberVo)session.getAttribute("memberVo");
			memberVo.setMember_tel(tel_change);
			session.setAttribute("memberVo", memberVo);
		}
		return mypageService.telChange(tel_change,id_chk);
	}
	
	@ResponseBody
	@RequestMapping(value="/mypage/phonechange",method=RequestMethod.POST)
	public int phoneChange(String phone_change,String id_chk,HttpSession session) {
		if(mypageService.phoneChange(phone_change, id_chk)==1) {
			MemberVo memberVo=(MemberVo)session.getAttribute("memberVo");
			memberVo.setMember_phone(phone_change);
			session.setAttribute("memberVo", memberVo);
		}
		return mypageService.phoneChange(phone_change,id_chk);
	}
	
	@ResponseBody
	@RequestMapping(value="/mypage/emailchange",method=RequestMethod.POST)
	public int emailChange(String email_change,String id_chk,HttpSession session) {
		if(mypageService.emailChange(email_change, id_chk)==1) {
			MemberVo memberVo=(MemberVo)session.getAttribute("memberVo");
			memberVo.setMember_email(email_change);
			session.setAttribute("memberVo", memberVo);
		}
		return mypageService.emailChange(email_change,id_chk);
	}
	
	@ResponseBody
	@RequestMapping(value="/mypage/addrchange",method=RequestMethod.POST)
	public int addrChange(String addr1_change,String addr2_change,String addr3_change,String id_chk,HttpSession session) {
		if(mypageService.addrChange(addr1_change,addr2_change,addr3_change, id_chk)==1) {
			MemberVo memberVo=(MemberVo)session.getAttribute("memberVo");
			memberVo.setMember_addr1(addr1_change);
			memberVo.setMember_addr2(addr2_change);
			memberVo.setMember_addr3(addr3_change);
			session.setAttribute("memberVo", memberVo);
		}
		return mypageService.addrChange(addr1_change,addr2_change,addr3_change,id_chk);
	}
	
	@ResponseBody
	@RequestMapping(value="/mypage/selectDeleteCart",method=RequestMethod.POST)
	public int selectDeleteCart(HttpSession session,@RequestParam(value="check[]") List<String> checkList) {
		System.out.println(checkList.toString());
		MemberVo member=(MemberVo)session.getAttribute("memberVo");
		String member_id=member.getMember_id();
		String cart_id="";
		int result=0;
		for(int i=0; i<checkList.size(); i++) {
			cart_id=checkList.get(i);
			result+=mypageService.selectDeleteCart(cart_id,member_id);
		}
		
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value="/mypage/cartChangeOption",method=RequestMethod.POST)
	public int changeOptionCart(HttpSession session,String change_option,String cart_id) {
		MemberVo member=(MemberVo)session.getAttribute("memberVo");
		String member_id=member.getMember_id();
		int result=0;
		result=mypageService.changeOptionCart(change_option,cart_id,member_id);
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value="/mypage/cartChangeQuantity",method=RequestMethod.POST)
	public int changeQuantityCart(HttpSession session,String change_quantity,String cart_id) {
		MemberVo member=(MemberVo)session.getAttribute("memberVo");
		String member_id=member.getMember_id();
		int result=0;
		result=mypageService.changeQuantityCart(change_quantity,cart_id,member_id);
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value="/mypage/deleteOneQuestion",method=RequestMethod.POST)
	public int deleteOneQuestion(HttpSession session,String question_id) {
		MemberVo member=(MemberVo)session.getAttribute("memberVo");
		String member_id=member.getMember_id();
		int result=0;
		result=mypageService.deleteOneQuestion(member_id,question_id);
		return result;
	}
}
